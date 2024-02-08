// This file is generated
import XCTest
@_spi(Experimental) @testable import MapboxMaps

final class LineLayerTests: XCTestCase {

    func testLayerProtocolMembers() {

        var layer = LineLayer(id: "test-id", source: "source")
        layer.minZoom = 10.0
        layer.maxZoom = 20.0
        layer.slot = .testConstantValue()

        XCTAssertEqual(layer.id, "test-id")
        XCTAssertEqual(layer.type, LayerType.line)
        XCTAssertEqual(layer.minZoom, 10.0)
        XCTAssertEqual(layer.maxZoom, 20.0)
        XCTAssertEqual(layer.slot, Slot.testConstantValue())
    }

    func testEncodingAndDecodingOfLayerProtocolProperties() {
        var layer = LineLayer(id: "test-id", source: "source")
        layer.minZoom = 10.0
        layer.maxZoom = 20.0
        layer.slot = .testConstantValue()

        var data: Data?
        do {
            data = try JSONEncoder().encode(layer)
        } catch {
            XCTFail("Failed to encode LineLayer")
        }

        guard let validData = data else {
            XCTFail("Failed to encode LineLayer")
            return
        }

        do {
            let decodedLayer = try JSONDecoder().decode(LineLayer.self, from: validData)
            XCTAssertEqual(decodedLayer.id, "test-id")
            XCTAssertEqual(decodedLayer.type, LayerType.line)
            XCTAssert(decodedLayer.source == "source")
            XCTAssertEqual(decodedLayer.minZoom, 10.0)
            XCTAssertEqual(decodedLayer.maxZoom, 20.0)
            XCTAssertEqual(layer.slot, Slot.testConstantValue())
        } catch {
            XCTFail("Failed to decode LineLayer")
        }
    }

    func testEncodingAndDecodingOfLayoutProperties() {
        var layer = LineLayer(id: "test-id", source: "source")
        layer.visibility = .constant(.visible)
        layer.lineCap = Value<LineCap>.testConstantValue()
        layer.lineJoin = Value<LineJoin>.testConstantValue()
        layer.lineMiterLimit = Value<Double>.testConstantValue()
        layer.lineRoundLimit = Value<Double>.testConstantValue()
        layer.lineSortKey = Value<Double>.testConstantValue()

        var data: Data?
        do {
            data = try JSONEncoder().encode(layer)
        } catch {
            XCTFail("Failed to encode LineLayer")
        }

        guard let validData = data else {
            XCTFail("Failed to encode LineLayer")
            return
        }

        do {
            let decodedLayer = try JSONDecoder().decode(LineLayer.self, from: validData)
            XCTAssert(decodedLayer.visibility == .constant(.visible))
            XCTAssertEqual(layer.lineCap, Value<LineCap>.testConstantValue())
            XCTAssertEqual(layer.lineJoin, Value<LineJoin>.testConstantValue())
            XCTAssertEqual(layer.lineMiterLimit, Value<Double>.testConstantValue())
            XCTAssertEqual(layer.lineRoundLimit, Value<Double>.testConstantValue())
            XCTAssertEqual(layer.lineSortKey, Value<Double>.testConstantValue())
        } catch {
            XCTFail("Failed to decode LineLayer")
        }
    }

    func testEncodingAndDecodingOfPaintProperties() {
       var layer = LineLayer(id: "test-id", source: "source")
       layer.lineBlur = Value<Double>.testConstantValue()
       layer.lineBlurTransition = StyleTransition(duration: 10.0, delay: 10.0)
       layer.lineBorderColor = Value<StyleColor>.testConstantValue()
       layer.lineBorderColorTransition = StyleTransition(duration: 10.0, delay: 10.0)
       layer.lineBorderWidth = Value<Double>.testConstantValue()
       layer.lineBorderWidthTransition = StyleTransition(duration: 10.0, delay: 10.0)
       layer.lineColor = Value<StyleColor>.testConstantValue()
       layer.lineColorTransition = StyleTransition(duration: 10.0, delay: 10.0)
       layer.lineDasharray = Value<[Double]>.testConstantValue()
       layer.lineDepthOcclusionFactor = Value<Double>.testConstantValue()
       layer.lineDepthOcclusionFactorTransition = StyleTransition(duration: 10.0, delay: 10.0)
       layer.lineEmissiveStrength = Value<Double>.testConstantValue()
       layer.lineEmissiveStrengthTransition = StyleTransition(duration: 10.0, delay: 10.0)
       layer.lineGapWidth = Value<Double>.testConstantValue()
       layer.lineGapWidthTransition = StyleTransition(duration: 10.0, delay: 10.0)
       layer.lineGradient = Value<StyleColor>.testConstantValue()
       layer.lineOffset = Value<Double>.testConstantValue()
       layer.lineOffsetTransition = StyleTransition(duration: 10.0, delay: 10.0)
       layer.lineOpacity = Value<Double>.testConstantValue()
       layer.lineOpacityTransition = StyleTransition(duration: 10.0, delay: 10.0)
       layer.linePattern = Value<ResolvedImage>.testConstantValue()
       layer.lineTranslate = Value<[Double]>.testConstantValue()
       layer.lineTranslateTransition = StyleTransition(duration: 10.0, delay: 10.0)
       layer.lineTranslateAnchor = Value<LineTranslateAnchor>.testConstantValue()
       layer.lineTrimOffset = Value<[Double]>.testConstantValue()
       layer.lineWidth = Value<Double>.testConstantValue()
       layer.lineWidthTransition = StyleTransition(duration: 10.0, delay: 10.0)

       var data: Data?
       do {
           data = try JSONEncoder().encode(layer)
       } catch {
           XCTFail("Failed to encode LineLayer")
       }

       guard let validData = data else {
           XCTFail("Failed to encode LineLayer")
           return
       }

       do {
           let decodedLayer = try JSONDecoder().decode(LineLayer.self, from: validData)
           XCTAssert(decodedLayer.visibility == .constant(.visible))
           XCTAssertEqual(layer.lineBlur, Value<Double>.testConstantValue())
           XCTAssertEqual(layer.lineBorderColor, Value<StyleColor>.testConstantValue())
           XCTAssertEqual(layer.lineBorderWidth, Value<Double>.testConstantValue())
           XCTAssertEqual(layer.lineColor, Value<StyleColor>.testConstantValue())
           XCTAssertEqual(layer.lineDasharray, Value<[Double]>.testConstantValue())
           XCTAssertEqual(layer.lineDepthOcclusionFactor, Value<Double>.testConstantValue())
           XCTAssertEqual(layer.lineEmissiveStrength, Value<Double>.testConstantValue())
           XCTAssertEqual(layer.lineGapWidth, Value<Double>.testConstantValue())
           XCTAssertEqual(layer.lineGradient, Value<StyleColor>.testConstantValue())
           XCTAssertEqual(layer.lineOffset, Value<Double>.testConstantValue())
           XCTAssertEqual(layer.lineOpacity, Value<Double>.testConstantValue())
           XCTAssertEqual(layer.linePattern, Value<ResolvedImage>.testConstantValue())
           XCTAssertEqual(layer.lineTranslate, Value<[Double]>.testConstantValue())
           XCTAssertEqual(layer.lineTranslateAnchor, Value<LineTranslateAnchor>.testConstantValue())
           XCTAssertEqual(layer.lineTrimOffset, Value<[Double]>.testConstantValue())
           XCTAssertEqual(layer.lineWidth, Value<Double>.testConstantValue())
       } catch {
           XCTFail("Failed to decode LineLayer")
       }
    }

    func testSetPropertyValueWithFunction() {
        let layer = LineLayer(id: "test-id", source: "source")
            .filter(Expression.testConstantValue())
            .source(String.testConstantValue())
            .sourceLayer(String.testConstantValue())
            .slot(Slot.testConstantValue())
            .minZoom(Double.testConstantValue())
            .maxZoom(Double.testConstantValue())
            .lineCap(Value<LineCap>.testConstantValue())
            .lineJoin(Value<LineJoin>.testConstantValue())
            .lineMiterLimit(Value<Double>.testConstantValue())
            .lineRoundLimit(Value<Double>.testConstantValue())
            .lineSortKey(Value<Double>.testConstantValue())
            .lineBlur(Value<Double>.testConstantValue())
            .lineBorderColor(Value<StyleColor>.testConstantValue())
            .lineBorderWidth(Value<Double>.testConstantValue())
            .lineColor(Value<StyleColor>.testConstantValue())
            .lineDasharray(Value<[Double]>.testConstantValue())
            .lineDepthOcclusionFactor(Value<Double>.testConstantValue())
            .lineEmissiveStrength(Value<Double>.testConstantValue())
            .lineGapWidth(Value<Double>.testConstantValue())
            .lineGradient(Value<StyleColor>.testConstantValue())
            .lineOffset(Value<Double>.testConstantValue())
            .lineOpacity(Value<Double>.testConstantValue())
            .linePattern(Value<ResolvedImage>.testConstantValue())
            .lineTranslate(Value<[Double]>.testConstantValue())
            .lineTranslateAnchor(Value<LineTranslateAnchor>.testConstantValue())
            .lineTrimOffset(Value<[Double]>.testConstantValue())
            .lineWidth(Value<Double>.testConstantValue())

        XCTAssertEqual(layer.filter, Expression.testConstantValue())
        XCTAssertEqual(layer.source, String.testConstantValue())
        XCTAssertEqual(layer.sourceLayer, String.testConstantValue())
        XCTAssertEqual(layer.slot, Slot.testConstantValue())
        XCTAssertEqual(layer.minZoom, Double.testConstantValue())
        XCTAssertEqual(layer.maxZoom, Double.testConstantValue())
        XCTAssertEqual(layer.lineCap, Value<LineCap>.testConstantValue())
        XCTAssertEqual(layer.lineJoin, Value<LineJoin>.testConstantValue())
        XCTAssertEqual(layer.lineMiterLimit, Value<Double>.testConstantValue())
        XCTAssertEqual(layer.lineRoundLimit, Value<Double>.testConstantValue())
        XCTAssertEqual(layer.lineSortKey, Value<Double>.testConstantValue())
        XCTAssertEqual(layer.lineBlur, Value<Double>.testConstantValue())
        XCTAssertEqual(layer.lineBorderColor, Value<StyleColor>.testConstantValue())
        XCTAssertEqual(layer.lineBorderWidth, Value<Double>.testConstantValue())
        XCTAssertEqual(layer.lineColor, Value<StyleColor>.testConstantValue())
        XCTAssertEqual(layer.lineDasharray, Value<[Double]>.testConstantValue())
        XCTAssertEqual(layer.lineDepthOcclusionFactor, Value<Double>.testConstantValue())
        XCTAssertEqual(layer.lineEmissiveStrength, Value<Double>.testConstantValue())
        XCTAssertEqual(layer.lineGapWidth, Value<Double>.testConstantValue())
        XCTAssertEqual(layer.lineGradient, Value<StyleColor>.testConstantValue())
        XCTAssertEqual(layer.lineOffset, Value<Double>.testConstantValue())
        XCTAssertEqual(layer.lineOpacity, Value<Double>.testConstantValue())
        XCTAssertEqual(layer.linePattern, Value<ResolvedImage>.testConstantValue())
        XCTAssertEqual(layer.lineTranslate, Value<[Double]>.testConstantValue())
        XCTAssertEqual(layer.lineTranslateAnchor, Value<LineTranslateAnchor>.testConstantValue())
        XCTAssertEqual(layer.lineTrimOffset, Value<[Double]>.testConstantValue())
        XCTAssertEqual(layer.lineWidth, Value<Double>.testConstantValue())
    }
}

// End of generated file
