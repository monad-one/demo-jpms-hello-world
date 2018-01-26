package org.codefx.demo.jpms;

import java.lang.module.ModuleDescriptor;

public class HelloModularWorld {

	public static void main(String[] args) {
		System.out.println("Hello, modular World!");

		Module module = HelloModularWorld.class.getModule();
		ModuleDescriptor descriptor = module.getDescriptor();
		System.out.println(descriptor.rawVersion());
	}

}
