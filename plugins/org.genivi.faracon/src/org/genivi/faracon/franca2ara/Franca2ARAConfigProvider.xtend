package org.genivi.faracon.franca2ara

import org.genivi.faracon.franca2ara.IFranca2ARAConfig

import javax.inject.Singleton

@Singleton
class Franca2ARAConfigProvider implements IFranca2ARAConfig {
	
	var IFranca2ARAConfig config = new Franca2ARAConfigDefault

	/**
	 * Method for changing the current configuration for Franca2ARA transformation.
	 */
	def setConfiguration(IFranca2ARAConfig config) {
		println("Setting configuration to " + config.class.canonicalName)
		this.config = config
	}
	
	// general
	override boolean generateAdminDataLanguage() {
		config.generateAdminDataLanguage
	}

	// service interfaces
	override boolean generateOptionalFalse() {
		config.generateOptionalFalse
	}
	override boolean genAlwaysFireAndForget() {
		config.genAlwaysFireAndForget
	}
	
	// application data types
	override boolean generateADTs() {
		config.generateADTs
	}
	override boolean storeADTsLocally() {
		config.storeADTsLocally
	}
	override String getADTPrefix() {
		config.getADTPrefix
	}

	// implementation data types
	override String getIDTPrefix() {
		config.getIDTPrefix
	}
	override boolean replaceIDTPrimitiveTypeDefs() {
		config.replaceIDTPrimitiveTypeDefs
	}
	//override boolean generateCppIDTs() {
	//	config.generateCppIDTs
	//}
	override boolean storeIDTsLocally() {
		config.storeIDTsLocally
	}
	override boolean alwaysGenIDTArray() {
		config.alwaysGenIDTArray
	}
	override String getCompuMethodPrefix() {
		config.getCompuMethodPrefix
	}
	override boolean generateStringAsArray() {
		config.generateStringAsArray
	}

	// deployment
	override boolean generateDeployment() {
		config.generateDeployment
	}
	override boolean storeDeploymentLocally() {
		config.storeDeploymentLocally
	}
	override boolean createSeparateDeploymentFile() {
		config.createSeparateDeploymentFile
	}
	override String getSignalPrefix() {
		config.getSignalPrefix
	}

}

