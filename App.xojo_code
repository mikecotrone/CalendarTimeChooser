#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  app.UseGDIPlus=true
		  
		  DemoLaunchWindow.Show
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Note, Name = QUICKSTART
		CalendarTimeChooser
		===================
		
		Xojo Calendar and Time Chooser Picklist
		
		Written by:     Mike Cotrone (mikec@intelligentvisibility.com)
		Contributors:  Jim McKay
		Version:           1.5
		
		Please see github repo for updated documentation:
		https://github.com/mikecotrone/CalendarTimeChooser
		
	#tag EndNote


	#tag Property, Flags = &h21
		Private mMyPicker As DateTimeWindow
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mMyPicker=nil then
			    mMyPicker=new DateTimeWindow
			    mMyPicker.left =  DemoLaunchWindow.Left + DemoLaunchWindow.Width + 5
			    mMyPicker.top = DemoLaunchWindow.Top
			  End if
			  
			  return mMyPicker
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mMyPicker = value
			End Set
		#tag EndSetter
		MyPicker As DateTimeWindow
	#tag EndComputedProperty


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
