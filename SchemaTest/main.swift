//
//  main.swift
//  SchemaTest
//
//  Created by Thomas Roughton on 3/05/16.
//  Copyright © 2016 Thomas Roughton. All rights reserved.
//

import Foundation

/** The COLLADA element declares the root of the document that comprises some of the content in the COLLADA schema. */
class Collada : ColladaType {

    /** The COLLADA element must contain an asset element. */
    let asset : AssetType

    /** The COLLADA element may contain any number of library_animations elements. */
    let libraryAnimations : [LibraryAnimationsType]

    /** The COLLADA element may contain any number of library_animation_clips elements. */
    let libraryAnimationClips : [LibraryAnimationClipsType]

    /** The COLLADA element may contain any number of library_cameras elements. */
    let libraryCameras : [LibraryCamerasType]

    /* The COLLADA element may contain any number of library_controllers elements. */
    let libraryControllers : [LibraryControllersType]
    
    /** The COLLADA element may contain any number of library_geometriess elements. */
    let libraryGeometries : [LibraryGeometriesType]
    
    /** The COLLADA element may contain any number of library_effects elements. */
    let libraryEffects : [LibraryEffectsType]
    
    /** The COLLADA element may contain any number of library_force_fields elements. */
    let libraryForceFields : [LibraryForceFieldsType]

    /** The COLLADA element may contain any number of library_images elements. */
    let libraryImages : [LibraryImagesType]

    /** The COLLADA element may contain any number of library_lights elements. */
    let libraryLights : [LibraryLightsType]

    /** The COLLADA element may contain any number of library_materials elements. */
    let libraryMaterials : [LibraryMaterialsType]
    
    /** The COLLADA element may contain any number of library_nodes elements. */
    let libraryNodes : [LibraryNodesType]

    let libraryPhysicsMaterials : [LibraryPhysicsMaterialsType]
    
    let libraryPhysicsModels : [LibraryPhysicsModelsType]
    
    let libraryPhysicsScenes : [LibraryPhysicsScenesType]
    
    let libraryVisualScenes : [LibraryVisualScenesType]
    
    let libraryJoints : [LibraryJointsType]
    
    let libraryKinematicsModels : [LibraryKinematicsModelsType]
    
    let libraryArticulatedSystems : [LibraryArticulatedSystemsType]
    
    let libraryKinematicsScenes : [LibraryKinematicsScenesType]
    
    let libraryFormulas : [LibraryFormulasType]
    
    class Scene : ColladaType {
        /** The instance_physics_scene element declares the instantiation of a COLLADA physics_scene resource. The instance_physics_scene element may appear any number of times. */
        let instancePhysicsScene : [InstanceWithExtraType]
        
        /** The instance_visual_scene element declares the instantiation of a COLLADA visual_scene resource. The instance_visual_scene element may only appear once. */
        let instanceVisualScene : InstanceWithExtraType?
        
        let instanceKinematicsScene : [InstanceKinematicsSceneType]
        
        /** The extra element may appear any number of times. */
        let extra : [ExtraType]

        init(xmlElement: NSXMLElement, sourcesToObjects: inout [String : ColladaType]) {
            self.instancePhysicsScene = xmlElement.elements(forName: "instance_physics_scene").map { InstanceWithExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
            self.instanceVisualScene = xmlElement.elements(forName: "instance_visual_scene").first.flatMap { InstanceWithExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
            self.instanceKinematicsScene = xmlElement.elements(forName: "instance_kinematics_scene").map { InstanceKinematicsSceneType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
            self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        }
    }
    
    /** The scene embodies the entire set of information that can be visualized from the contents of a COLLADA resource. The scene element declares the base of the scene hierarchy or scene graph. The scene contains elements that comprise much of the visual and transformational information content as created by the authoring tools. */
    let scene : Scene?
    
    let extra : [ExtraType]

    let sourcesToObjects: [String : ColladaType]
    
    init(xmlElement: NSXMLElement) {
        
        var sourcesToObjects = [String : ColladaType]()
        
        self.asset = AssetType(xmlElement: xmlElement.elements(forName: "asset").first!, sourcesToObjects: &sourcesToObjects)
        self.libraryAnimations = xmlElement.elements(forName: "library_animations").map { LibraryAnimationsType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryAnimationClips = xmlElement.elements(forName: "library_animation_clips").map { LibraryAnimationClipsType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryCameras = xmlElement.elements(forName: "library_cameras").map { LibraryCamerasType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryControllers = xmlElement.elements(forName: "library_controllers").map { LibraryControllersType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryGeometries = xmlElement.elements(forName: "library_geometries").map { LibraryGeometriesType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryEffects = xmlElement.elements(forName: "library_effects").map { LibraryEffectsType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryForceFields = xmlElement.elements(forName: "library_force_fields").map { LibraryForceFieldsType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryImages = xmlElement.elements(forName: "library_images").map { LibraryImagesType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryLights = xmlElement.elements(forName: "library_lights").map { LibraryLightsType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryMaterials = xmlElement.elements(forName: "library_materials").map { LibraryMaterialsType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryNodes = xmlElement.elements(forName: "library_nodes").map { LibraryNodesType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryPhysicsMaterials = xmlElement.elements(forName: "library_physics_materials").map { LibraryPhysicsMaterialsType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryPhysicsModels = xmlElement.elements(forName: "library_physics_models").map { LibraryPhysicsModelsType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryPhysicsScenes = xmlElement.elements(forName: "library_physics_scenes").map { LibraryPhysicsScenesType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryVisualScenes = xmlElement.elements(forName: "library_visual_scenes").map { LibraryVisualScenesType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryJoints = xmlElement.elements(forName: "library_joints").map { LibraryJointsType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryKinematicsModels = xmlElement.elements(forName: "library_kinematics_models").map { LibraryKinematicsModelsType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryArticulatedSystems = xmlElement.elements(forName: "library_articulated_systems").map { LibraryArticulatedSystemsType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryKinematicsScenes = xmlElement.elements(forName: "library_kinematics_scenes").map { LibraryKinematicsScenesType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.libraryFormulas = xmlElement.elements(forName: "library_formulas").map { LibraryFormulasType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.scene = xmlElement.elements(forName: "scene").first.flatMap { Scene(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        self.extra = xmlElement.elements(forName: "extra").map { ExtraType(xmlElement: $0, sourcesToObjects: &sourcesToObjects) }
        
        self.sourcesToObjects = sourcesToObjects
    }
}

let document = try! NSXMLDocument(contentsOf: NSURL(fileURLWithPath: "/Users/Thomas/Desktop/ColladaTest.dae"), options: 0)
let collada = Collada(xmlElement: document.rootElement()!)
print(collada.sourcesToObjects["pSphereShape1-positions"])
