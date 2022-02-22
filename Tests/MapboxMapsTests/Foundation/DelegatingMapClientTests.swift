import XCTest
@testable import MapboxMaps

final class DelegatingMapClientTests: XCTestCase {

    var delegatingMapClient: DelegatingMapClient!
    // swiftlint:disable:next weak_delegate
    var delegate: MockDelegatingMapClientDelegate!

    override func setUp() {
        super.setUp()
        delegatingMapClient = DelegatingMapClient()
        delegate = MockDelegatingMapClientDelegate()
        delegatingMapClient.delegate = delegate
    }

    override func tearDown() {
        delegate = nil
        delegatingMapClient = nil
        super.tearDown()
    }

    func testScheduleRepaintForwardsToDelegate() {
        delegatingMapClient.scheduleRepaint()

        assertMethodCall(delegate.scheduleRepaintStub)
    }

    func testScheduleTaskForwardsToDelegate() {
        var invoked = false

        delegatingMapClient.scheduleTask {
            invoked = true
        }
        delegate.scheduleTaskStub.parameters.first?()

        assertMethodCall(delegate.scheduleTaskStub)
        XCTAssertTrue(invoked)
    }

    func testGetMetalViewForwardsToDelegate() {
        let expectedDevice = MTLCreateSystemDefaultDevice()
        let expectedView = MTKView()
        delegate.getMetalViewStub.defaultReturnValue = expectedView

        let actualView = delegatingMapClient.getMetalView(for: expectedDevice)

        assertMethodCall(delegate.getMetalViewStub)
        guard let actualDevice = delegate.getMetalViewStub.parameters.first else {
            return
        }
        if case let .some(actual) = actualDevice,
           let expected = expectedDevice {
            XCTAssertTrue(actual === expected)
        } else {
            XCTAssertNil(actualDevice)
            XCTAssertNil(expectedDevice)
        }
        XCTAssertEqual(actualView, expectedView)
    }
}