#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  #If TargetWindows = True Then
		    app.UseGDIPlus=true
		  #endif
		  
		  // This Launches the Demo Launch Window for our Demo
		  DemoLaunchWindow.Show
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
