#tag Module
Protected Module KeychainServices
	#tag Method, Flags = &h1
		Protected Function Version() As UInt32
		  #if targetMacOS
		    declare function SecKeychainGetVersion lib KeychainServices.framework (ByRef returnVers as UInt32) as Integer
		    
		    dim returnVers as UInt32
		    dim err as Integer = SecKeychainGetVersion(returnVers)
		    if err = noErr then
		      return returnVers
		    else
		      raise new KeychainServices.Error(err)
		    end if
		  #endif
		End Function
	#tag EndMethod


	#tag Constant, Name = Attribute_Account, Type = Double, Dynamic = False, Default = \"\'acct\'", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = Framework, Type = String, Dynamic = False, Default = \"Security.framework", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
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
	#tag EndViewBehavior
End Module
#tag EndModule
