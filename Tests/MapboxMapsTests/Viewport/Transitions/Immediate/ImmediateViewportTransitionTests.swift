import XCTest
@testable @_spi(Experimental) import MapboxMaps

final class ImmediateViewportTransitionTests: XCTestCase {

    var mapboxMap: MockMapboxMap!
    var transition: ImmediateViewportTransition!

    override func setUp() {
        super.setUp()
        mapboxMap = MockMapboxMap()
        transition = ImmediateViewportTransition(mapboxMap: mapboxMap)
    }

    override func tearDown() {
        transition = nil
        mapboxMap = nil
        super.tearDown()
    }

    func testRunCancellation() throws {
        let toState = MockViewportState()
        let cancelable = transition.run(
            to: toState,
            completion: { _ in })

        assertMethodCall(toState.observeDataSourceStub)
        let observeDataSourceInvocation = try XCTUnwrap(toState.observeDataSourceStub.invocations.first)
        let observeDataSourceCancelable = try XCTUnwrap(observeDataSourceInvocation.returnValue as? MockCancelable)

        cancelable.cancel()

        assertMethodCall(observeDataSourceCancelable.cancelStub)
    }

    func testRunCompletion() throws {
        let toState = MockViewportState()
        let completionStub = Stub<Bool, Void>()
        _ = transition.run(
            to: toState,
            completion: completionStub.call(with:))

        assertMethodCall(toState.observeDataSourceStub)
        let observeDataSourceInvocation = try XCTUnwrap(toState.observeDataSourceStub.invocations.first)
        let observeDataSourceHandler = observeDataSourceInvocation.parameters
        let cameraOptions = CameraOptions.random()

        let shouldContinue = observeDataSourceHandler(cameraOptions)

        XCTAssertEqual(mapboxMap.setCameraStub.invocations.map(\.parameters), [cameraOptions])
        XCTAssertEqual(completionStub.invocations.map(\.parameters), [true])
        XCTAssertFalse(shouldContinue)
    }
}