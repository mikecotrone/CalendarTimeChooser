#tag Class
Class NSPanel
Inherits NSWindow
	#tag Method, Flags = &h1000
		Sub Constructor(contentRect as Cocoa.NSRect, windowStyle as UInt32, bufferingType as NSBackingStoreType, deferCreation as Boolean)
		  
		  #if TargetCocoa
		    declare function initWithContentRect lib CocoaLib selector "initWithContentRect:styleMask:backing:defer:" _
		    (obj_id as Ptr, contentRect as Cocoa.NSRect, windowStyle as UInt32, bufferingType as NSBackingStoreType, deferCreation as Boolean) as Ptr
		    
		    super.Constructor(initWithContentRect(Allocate("NSPanel"), contentRect, windowStyle, bufferingType, deferCreation), NSWindow.hasOwnership)
		    
		  #else
		    #pragma unused contentRect
		    #pragma unused windowStyle
		    #pragma unused bufferingType
		    #pragma unused deferCreation
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(contentRect as Cocoa.NSRect, windowStyle as UInt32, bufferingType as NSBackingStoreType, deferCreation as Boolean, aScreen as NSScreen)
		  
		  #if TargetCocoa
		    declare function initWithContentRect lib CocoaLib selector "initWithContentRect:styleMask:backing:defer:screen:" _
		    (obj_id as Ptr, contentRect as Cocoa.NSRect, windowStyle as UInt32, bufferingType as NSBackingStoreType, deferCreation as Boolean, aScreen as Ptr) as Ptr
		    
		    dim screenRef as Ptr
		    if aScreen <> nil then
		      screenRef = aScreen
		    end if
		    
		    super.Constructor(initWithContentRect(Allocate("NSPanel"), contentRect, windowStyle, bufferingType, deferCreation, screenRef), NSWindow.hasOwnership)
		    
		  #else
		    #pragma unused contentRect
		    #pragma unused windowStyle
		    #pragma unused bufferingType
		    #pragma unused deferCreation
		    #pragma unused aScreen
		  #endif
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetCocoa then
			    declare function getBecomesKeyOnlyIfNeeded lib CocoaLib selector "becomesKeyOnlyIfNeeded" (obj_id as Ptr) as Boolean
			    
			    return getBecomesKeyOnlyIfNeeded( self )
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  #if TargetCocoa then
			    declare sub setBecomesKeyOnlyIfNeeded lib CocoaLib selector "setBecomesKeyOnlyIfNeeded:" (obj_id as Ptr, value as Boolean)
			    
			    setBecomesKeyOnlyIfNeeded self, value
			  #else
			    #pragma Unused value
			  #endif
			End Set
		#tag EndSetter
		BecomesKeyOnlyIfNeeded As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetCocoa then
			    declare function getIsFloatingPanel lib CocoaLib selector "isFloatingPanel" (obj_id as Ptr) as Boolean
			    
			    return getIsFloatingPanel( self )
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  #if TargetCocoa then
			    declare sub setFloatingPanel lib CocoaLib selector "setFloatingPanel:" (obj_id as Ptr, value as Boolean)
			    
			    setFloatingPanel self, value
			  #else
			    #pragma Unused value
			  #endif
			End Set
		#tag EndSetter
		FloatingPanel As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  #if TargetCocoa then
			    declare function getWorksWhenModal lib CocoaLib selector "worksWhenModal" (obj_id as Ptr) as Boolean
			    
			    return getWorksWhenModal( self )
			  #endif
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  #if TargetCocoa then
			    declare sub setWorksWhenModal lib CocoaLib selector "setWorksWhenModal:" (obj_id as Ptr, value as Boolean)
			    
			    setWorksWhenModal self, value
			  #else
			    #pragma Unused value
			  #endif
			End Set
		#tag EndSetter
		WorksWhenModal As Boolean
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BecomesKeyOnlyIfNeeded"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FloatingPanel"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WorksWhenModal"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
