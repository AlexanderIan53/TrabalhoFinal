package br.cefetrj.alp.aspects;

public aspect Aspect{
	pointcut runPointCut() : call(void TargetClass.run());
	
	before() : runPointCut(){
		System.out.println("Intercepting before run()");
	}
	
	void around() : runPointCut(){
		System.out.println("Overriding run() !!!");
	}
	
	after() : runPointCut(){
		System.out.println("Intercepting after run()");
	}
	
}
