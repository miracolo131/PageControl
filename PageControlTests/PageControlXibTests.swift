import XCTest
@testable import PageControl

class PageControlTesterViewOwner: NSObject {
    @IBOutlet weak var uiPageControl: UIPageControl!
    @IBOutlet weak var klPageControl: PageControl!
}

class PageControlXibTests: XCTestCase {
    var uiPageControl: UIPageControl!
    var klPageControl: PageControl!
    let pageControlTesterViewOwner = PageControlTesterViewOwner()
    
    override func setUp() {
        super.setUp()
        
        let testBundle = NSBundle(forClass: PageControlXibTests.self)
        let _ = testBundle.loadNibNamed("PageControlTester", owner: pageControlTesterViewOwner, options: nil).first
        
        uiPageControl = pageControlTesterViewOwner.uiPageControl
        klPageControl = pageControlTesterViewOwner.klPageControl
    }
    
    override func tearDown() {
        uiPageControl = nil
        klPageControl = nil
        
        super.tearDown()
    }
    
    func testUIAccessibility() {
        XCTAssertEqual(uiPageControl.isAccessibilityElement, klPageControl.isAccessibilityElement)
        XCTAssertEqual(uiPageControl.accessibilityLabel, klPageControl.accessibilityLabel)
        XCTAssertEqual(uiPageControl.accessibilityHint, klPageControl.accessibilityHint)
        XCTAssertEqual(uiPageControl.accessibilityValue, klPageControl.accessibilityValue)
        XCTAssertEqual(uiPageControl.accessibilityTraits, klPageControl.accessibilityTraits)
        XCTAssertEqual(uiPageControl.accessibilityFrame, klPageControl.accessibilityFrame)
        XCTAssertEqual(uiPageControl.accessibilityElementsHidden, klPageControl.accessibilityElementsHidden)
    }
    
    func testUIControlDefaultControlAttributes() {
        XCTAssertEqual(uiPageControl.enabled, klPageControl.enabled)
        XCTAssertEqual(uiPageControl.selected, klPageControl.selected)
        XCTAssertEqual(uiPageControl.highlighted, klPageControl.highlighted)
        XCTAssertEqual(uiPageControl.contentVerticalAlignment, klPageControl.contentVerticalAlignment)
        XCTAssertEqual(uiPageControl.contentHorizontalAlignment, klPageControl.contentHorizontalAlignment)
        XCTAssertEqual(uiPageControl.state, klPageControl.state)
        XCTAssertEqual(uiPageControl.tracking, klPageControl.tracking)
    }
    
    func testUIViewDefaults() {
        
        XCTAssertEqual(uiPageControl.bounds, klPageControl.bounds)
        
        // UI Direction
        if #available(iOS 9.0, *) {
            XCTAssertEqual(UIPageControl.userInterfaceLayoutDirectionForSemanticContentAttribute(uiPageControl.semanticContentAttribute), PageControl.userInterfaceLayoutDirectionForSemanticContentAttribute(klPageControl.semanticContentAttribute))
            XCTAssertEqual(uiPageControl.semanticContentAttribute, klPageControl.semanticContentAttribute)
        }
        
        // Event Related Behaviour
        XCTAssertEqual(uiPageControl.userInteractionEnabled, klPageControl.userInteractionEnabled)
        XCTAssertEqual(uiPageControl.multipleTouchEnabled, klPageControl.multipleTouchEnabled)
        XCTAssertEqual(uiPageControl.exclusiveTouch, klPageControl.exclusiveTouch)
        
        // Resizing Behavior
        XCTAssertEqual(uiPageControl.autoresizesSubviews, klPageControl.autoresizesSubviews)
        XCTAssertEqual(uiPageControl.autoresizingMask, klPageControl.autoresizingMask)
        XCTAssertEqual(uiPageControl.sizeThatFits(.zero), klPageControl.sizeThatFits(.zero))
        XCTAssertEqual(uiPageControl.sizeThatFits(CGSize(width: 1000, height: 1000)), klPageControl.sizeThatFits(CGSize(width: 1000, height: 1000)))
        
        XCTAssertEqual(uiPageControl.layoutMargins, klPageControl.layoutMargins)
        
        // Visual Appearance
        
        XCTAssertEqual(uiPageControl.clipsToBounds, klPageControl.clipsToBounds)
        XCTAssertEqual(uiPageControl.backgroundColor, klPageControl.backgroundColor)
        XCTAssertEqual(uiPageControl.alpha, klPageControl.alpha)
        XCTAssertEqual(uiPageControl.opaque, klPageControl.opaque)
        XCTAssertEqual(uiPageControl.clearsContextBeforeDrawing, klPageControl.clearsContextBeforeDrawing)
        XCTAssertEqual(uiPageControl.hidden, klPageControl.hidden)
        XCTAssertEqual(uiPageControl.contentMode, klPageControl.contentMode)
        XCTAssertEqual(uiPageControl.maskView == nil, klPageControl.maskView == nil)
        XCTAssertEqual(uiPageControl.tintColor, klPageControl.tintColor)
        XCTAssertEqual(uiPageControl.tintAdjustmentMode, klPageControl.tintAdjustmentMode)
        
        // Gestures
        
        XCTAssertEqual(uiPageControl.gestureRecognizers?.isEmpty, klPageControl.gestureRecognizers?.isEmpty)
        
        // Motion Effects
        
        XCTAssertEqual(uiPageControl.motionEffects.isEmpty, klPageControl.motionEffects.isEmpty)
        
        //
        // UIView Constraint-based Layout Support
        //
        
        // Installing Constraints
        
        XCTAssertEqual(uiPageControl.constraints.isEmpty, klPageControl.constraints.isEmpty)
        
        // Compatibility and Adoption
        
        XCTAssertEqual(uiPageControl.translatesAutoresizingMaskIntoConstraints, klPageControl.translatesAutoresizingMaskIntoConstraints)
        
        XCTAssertEqual(UIPageControl.requiresConstraintBasedLayout(), PageControl.requiresConstraintBasedLayout())
        
        // Separation of Concerns
        
        XCTAssertEqual(uiPageControl.alignmentRectForFrame(.zero), klPageControl.alignmentRectForFrame(.zero))
        XCTAssertEqual(uiPageControl.frameForAlignmentRect(.zero), klPageControl.frameForAlignmentRect(.zero))
        XCTAssertEqual(uiPageControl.alignmentRectInsets(), klPageControl.alignmentRectInsets())
        
        XCTAssertEqual(uiPageControl.intrinsicContentSize(), klPageControl.intrinsicContentSize())
        
        XCTAssertEqual(uiPageControl.contentHuggingPriorityForAxis(.Horizontal), klPageControl.contentHuggingPriorityForAxis(.Horizontal))
        XCTAssertEqual(uiPageControl.contentHuggingPriorityForAxis(.Vertical), klPageControl.contentHuggingPriorityForAxis(.Vertical))
        
        XCTAssertEqual(uiPageControl.contentCompressionResistancePriorityForAxis(.Horizontal), klPageControl.contentCompressionResistancePriorityForAxis(.Horizontal))
        XCTAssertEqual(uiPageControl.contentCompressionResistancePriorityForAxis(.Vertical), klPageControl.contentCompressionResistancePriorityForAxis(.Vertical))
        
    }
    
    func testUIResponderDefaults() {
        XCTAssertEqual(uiPageControl.canBecomeFirstResponder(), klPageControl.canBecomeFirstResponder())
        XCTAssertEqual(uiPageControl.becomeFirstResponder(), klPageControl.becomeFirstResponder())
    }

}
