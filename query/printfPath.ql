/**
 * 
 * @id test-for-printf
 * @kind problem
 */
 
 
import java
import semmle.code.java.dataflow.TaintTracking

class SmallInjectionLikeTest extends TaintTracking::Configuration {
    SmallInjectionLikeTest() { this = "SmallInjectionLikeTest" }
    
    override predicate isSource(DataFlow::Node node) {
        exists(MethodAccess m  | m.getMethod().getName() = "readLine"
        and node.asExpr() = m) 
    }
    
    override predicate isSink(DataFlow::Node node) {
        exists(MethodAccess m  | m.getMethod().getName() = "printf"
        and node.asExpr() = m.getAnArgument()) 
    }
}

from SmallInjectionLikeTest s , DataFlow::Node src, DataFlow::Node sink
where s.hasFlow(src, sink)
select sink, "Flow detected between a call to readLine and a printf argument."
