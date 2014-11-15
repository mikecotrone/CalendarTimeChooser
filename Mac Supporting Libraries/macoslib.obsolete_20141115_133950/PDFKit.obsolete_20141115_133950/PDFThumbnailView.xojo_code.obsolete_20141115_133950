#tag Class
Protected Class PDFThumbnailView
Inherits Cocoa.CanvasForNSView
	#tag Event
		Function NSClassName() As String
		  
		  return  "PDFThumbnailView"
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  #if targetMacOS
		    AutoresizingMask = NSViewHeightSizable
		    me.RegisterForNotification   "PDFThumbnailViewSelectionChanged"
		  #endif
		  
		  RaiseEvent   Open
		End Sub
	#tag EndEvent

	#tag Event
		Sub ReceivedNotification(notification as NSNotification)
		  
		  #if TargetMacOS
		    static selection as NSArray = NSArray.Create
		    dim nsa as NSArray
		    
		    select case notification.Name
		    case "PDFThumbnailViewSelectionChanged"
		      nsa = me.SelectedPages
		      
		      //Strangely, the notification is sent twice for "deselecting" (selectedPages is empty) then twice for the new selection so we need to filter off multiple notifications
		      if nsa.Count>0 AND (NOT nsa.IsEqual( selection )) then
		        selection = nsa
		        RaiseEvent  SelectionChanged
		      end if
		      
		    else
		      RaiseEvent   ReceivedNotification  notification
		    end select
		    
		  #endif
		End Sub
	#tag EndEvent

	#tag Event
		Function RequiredFrameworks() As String()
		  
		  #if TargetMacOS
		    return  Array( "Quartz.framework" )
		  #endif
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Function SelectedPages() As NSArray
		  //# Gets the selected pages
		  
		  #if TargetMacOS
		    declare function selectedPages lib "Quartz" selector "selectedPages" (id as Ptr) as Ptr
		    
		    dim p as Ptr = selectedPages( me.id )
		    
		    if p<>nil then
		      return  new NSArray( p, not hasOwnership )
		    else
		      return  NSArray.Create
		    end if
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPDFView(theView as PDFView)
		  //# Binds the ThumbnailView to a PDFView
		  
		  #if TargetMacOS
		    declare sub setPDFView lib "Quartz" selector "setPDFView:" (id as Ptr, boundView as Ptr)
		    
		    setPDFView  self.id, theView.id
		    
		    //Trick: the view does not respond to mouse clicks until it is resized (or the window is)
		    dim r as Cocoa.NSRect
		    r = me.Frame
		    r.w = r.w - 1
		    me.Frame = r
		    
		    r.w = r.w + 1
		    me.Frame = r
		    
		  #endif
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ReceivedNotification(notification as NSNotification)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SelectionChanged()
	#tag EndHook


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
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
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
