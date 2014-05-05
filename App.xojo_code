#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  app.UseGDIPlus=true // For Windows
		  
		  // This Launches the Demo Launch Window for our Demo
		  DemoLaunchWindow.Show
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Note, Name = QUICKSTART
		CalendarTimeChooser
		===================
		
		Xojo Calendar and Time Chooser Picklist
		
		Written by:     Mike Cotrone (mikec@intelligentvisibility.com)
		Contributors:  Jim McKay
		Version:           1.8
		
		Please see github repo for updated documentation:
		https://github.com/mikecotrone/CalendarTimeChooser
		
	#tag EndNote


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
