import Cocoa

protocol Engine
{
    func startEngine()
    func stopEngine()
}

protocol SpeedControl
{
    func increaseSpeed()
    func decreaseSpeed()
    func modifyEngine()
}

protocol Safety
{
    func releaseBags()
    func applyUrgentBreaks()

}

protocol Car: Engine, SpeedControl, Safety
{
    func applyBreaks()
}

class BMW: Car {
    func modifyEngine() {
        <#code#>
    }
    
    func applyBreaks() {
        <#code#>
    }
    
    func startEngine() {
        <#code#>
    }
    
    func stopEngine() {
        <#code#>
    }
    
    func increaseSpeed() {
        <#code#>
    }
    
    func decreaseSpeed() {
        <#code#>
    }
    
    func releaseBags() {
        <#code#>
    }
    
    func applyUrgentBreaks() {
        <#code#>
    }
}
