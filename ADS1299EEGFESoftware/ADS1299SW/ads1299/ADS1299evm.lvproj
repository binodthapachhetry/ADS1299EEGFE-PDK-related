<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="10008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="win32" Type="Folder">
			<Item Name="ads1298ecg-fe.nsi" Type="Document" URL="../win32/ads1298ecg-fe.nsi"/>
			<Item Name="driver.nsh" Type="Document" URL="../win32/driver.nsh"/>
			<Item Name="drvsetup.nsh" Type="Document" URL="../win32/drvsetup.nsh"/>
			<Item Name="winver.nsh" Type="Document" URL="../win32/winver.nsh"/>
		</Item>
		<Item Name="lib_misc" Type="Folder">
			<Item Name="Enqueue Commands" Type="Folder">
				<Item Name="EVMQueueCommand.lvclass" Type="LVClass" URL="../lib_1299/Enqueue Classes/EVM Command class/EVMQueueCommand.lvclass"/>
				<Item Name="UserInput Command.lvclass" Type="LVClass" URL="../lib_1299/Enqueue Classes/UserInput Command class/UserInput Command.lvclass"/>
				<Item Name="Internal State Command.lvclass" Type="LVClass" URL="../lib_1299/Enqueue Classes/InternalState Command class/Internal State Command.lvclass"/>
				<Item Name="UserDefined Command class.lvclass" Type="LVClass" URL="../lib_1299/Enqueue Classes/UserDefined Command class/UserDefined Command class.lvclass"/>
			</Item>
			<Item Name="TYP_VariantDefault.ctl" Type="VI" URL="../lib_1299/Enqueue Classes/Controls/TYP_VariantDefault.ctl"/>
		</Item>
		<Item Name="lib1299" Type="Folder">
			<Item Name="lib1299.lvlib" Type="Library" URL="../lib_1299/lib1299.lvlib"/>
			<Item Name="ErrorLog.lvlib" Type="Library" URL="../lib_1299/ErrorLogging/ErrorLog.lvlib"/>
		</Item>
		<Item Name="Distribution" Type="Folder">
			<Item Name="user.lib" Type="Folder">
				<Item Name="TYP_Queue Cluster Element.ctl" Type="VI" URL="/&lt;userlib&gt;/Common/Queue with Cluster/TYP_Queue Cluster Element.ctl"/>
				<Item Name="Timer.vi" Type="VI" URL="/&lt;userlib&gt;/Common/Timing/Timer.vi"/>
				<Item Name="Enqueue - Delayed.vi" Type="VI" URL="/&lt;userlib&gt;/Common/Queue with Cluster/Enqueue - Delayed.vi"/>
				<Item Name="DequeueCmd.vi" Type="VI" URL="/&lt;userlib&gt;/Common/Queue with String/DequeueCmd.vi"/>
				<Item Name="Create ClusterQueue.vi" Type="VI" URL="/&lt;userlib&gt;/Common/Queue with Cluster/Create ClusterQueue.vi"/>
				<Item Name="DequeueCmd_Cluster.vi" Type="VI" URL="/&lt;userlib&gt;/Common/Queue with Cluster/DequeueCmd_Cluster.vi"/>
				<Item Name="Enqueue - Multiple Clusters.vi" Type="VI" URL="/&lt;userlib&gt;/Common/Queue with Cluster/Enqueue - Multiple Clusters.vi"/>
				<Item Name="Enqueue - Multiple Commands.vi" Type="VI" URL="/&lt;userlib&gt;/Common/Queue with Cluster/Enqueue - Multiple Commands.vi"/>
				<Item Name="CST_Queue.vi" Type="VI" URL="/&lt;userlib&gt;/Common/Queue with Cluster/CST_Queue.vi"/>
				<Item Name="Enqueue - ClusterQueue.vi" Type="VI" URL="/&lt;userlib&gt;/Common/Queue with Cluster/Enqueue - ClusterQueue.vi"/>
				<Item Name="Enqueue - ClusterBoth.vi" Type="VI" URL="/&lt;userlib&gt;/Common/Queue with Cluster/Enqueue - ClusterBoth.vi"/>
				<Item Name="TYP_Queue with Cluster Reference.ctl" Type="VI" URL="/&lt;userlib&gt;/Common/Queue with Cluster/TYP_Queue with Cluster Reference.ctl"/>
				<Item Name="Enqueue - ClusterCommand.vi" Type="VI" URL="/&lt;userlib&gt;/Common/Queue with Cluster/Enqueue - ClusterCommand.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler CORE.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Read From Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File.vi"/>
				<Item Name="Read From Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (DBL).vi"/>
				<Item Name="Read Lines From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read Lines From File.vi"/>
				<Item Name="Open File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Open File+.vi"/>
				<Item Name="Read File+ (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read File+ (string).vi"/>
				<Item Name="compatReadText.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/compatReadText.vi"/>
				<Item Name="Close File+.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Close File+.vi"/>
				<Item Name="Read From Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (I64).vi"/>
				<Item Name="Read From Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Read From Spreadsheet File (string).vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="LVPositionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPositionTypeDef.ctl"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Wait at Rendezvous.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/Wait at Rendezvous.vi"/>
				<Item Name="Rendezvous RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/Rendezvous RefNum"/>
				<Item Name="RendezvousDataCluster.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/RendezvousDataCluster.ctl"/>
				<Item Name="Release Waiting Procs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/Release Waiting Procs.vi"/>
				<Item Name="Create Rendezvous.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/Create Rendezvous.vi"/>
				<Item Name="Rendezvous Name &amp; Ref DB Action.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/Rendezvous Name &amp; Ref DB Action.ctl"/>
				<Item Name="Rendezvous Name &amp; Ref DB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/Rendezvous Name &amp; Ref DB.vi"/>
				<Item Name="Not A Rendezvous.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/Not A Rendezvous.vi"/>
				<Item Name="Create New Rendezvous.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/Create New Rendezvous.vi"/>
				<Item Name="AddNamedRendezvousPrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/AddNamedRendezvousPrefix.vi"/>
				<Item Name="GetNamedRendezvousPrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/GetNamedRendezvousPrefix.vi"/>
				<Item Name="Destroy Rendezvous.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/Destroy Rendezvous.vi"/>
				<Item Name="Destroy A Rendezvous.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/Destroy A Rendezvous.vi"/>
				<Item Name="RemoveNamedRendezvousPrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/rendezvs.llb/RemoveNamedRendezvousPrefix.vi"/>
				<Item Name="Write JPEG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Write JPEG File.vi"/>
				<Item Name="Check Data Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Data Size.vi"/>
				<Item Name="Check Color Table Size.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Color Table Size.vi"/>
				<Item Name="Check File Permissions.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check File Permissions.vi"/>
				<Item Name="Write To Spreadsheet File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File.vi"/>
				<Item Name="Write To Spreadsheet File (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (DBL).vi"/>
				<Item Name="Write Spreadsheet String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write Spreadsheet String.vi"/>
				<Item Name="Write To Spreadsheet File (I64).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (I64).vi"/>
				<Item Name="Write To Spreadsheet File (string).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Write To Spreadsheet File (string).vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="LVRowAndColumnTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnTypeDef.ctl"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="SIM Diagram Parameters.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Utility/Implementation/Shared/SIM Diagram Parameters.ctl"/>
				<Item Name="SIM Continuous Solvers.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM Continuous Solvers.ctl"/>
				<Item Name="SIM stop (for core).vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/SIM Integrator for core.llb/SIM stop (for core).vi"/>
				<Item Name="SIM simulation data.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM simulation data.ctl"/>
				<Item Name="SIM diagram eval stage.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM diagram eval stage.ctl"/>
				<Item Name="SIM Simulation Registry.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM Registry.llb/SIM Simulation Registry.ctl"/>
				<Item Name="SIM Registry Node Header.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM Registry.llb/SIM Registry Node Header.ctl"/>
				<Item Name="SIM Registry Node Record.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM Registry.llb/SIM Registry Node Record.ctl"/>
				<Item Name="SIM trigger type.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM trigger type.ctl"/>
				<Item Name="SIM solver state data.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM solver state data.ctl"/>
				<Item Name="SIM limit type.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM limit type.ctl"/>
				<Item Name="SIM discrete data.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM discrete data.ctl"/>
				<Item Name="SIM Discrete state data.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM Discrete state data.ctl"/>
				<Item Name="SIM Simulation Registry Error.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM Registry.llb/SIM Simulation Registry Error.ctl"/>
				<Item Name="SIM Equal Times.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Utility/SIM Equal Times.vi"/>
				<Item Name="SIM Integrator distributor (for core) (vector).vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/SIM Integrator for core.llb/SIM Integrator distributor (for core) (vector).vi"/>
				<Item Name="SIM Integrator init (for core) (vector).vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/SIM Integrator for core.llb/SIM Integrator init (for core) (vector).vi"/>
				<Item Name="SIM Report Error.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/Utility/Implementation/SIM Report Error.vi"/>
				<Item Name="SIM Integrator collector (for core) (vector).vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/SIM Integrator for core.llb/SIM Integrator collector (for core) (vector).vi"/>
				<Item Name="SIM comprehensive manager (for core).vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/SIM Integrator for core.llb/SIM comprehensive manager (for core).vi"/>
				<Item Name="SIM Adams manager.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/Shared/Solvers/SIM Adams.llb/SIM Adams manager.vi"/>
				<Item Name="SIM Generate Adams Coeffs.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/Shared/Solvers/SIM Adams.llb/SIM Generate Adams Coeffs.vi"/>
				<Item Name="SIM Adams Eval Error.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/Shared/Solvers/SIM Adams.llb/SIM Adams Eval Error.vi"/>
				<Item Name="SIM Adams Eval Error Core.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/Shared/Solvers/SIM Adams.llb/SIM Adams Eval Error Core.vi"/>
			</Item>
		</Item>
		<Item Name="Misc Files" Type="Folder">
			<Item Name="Firmware" Type="Folder">
				<Item Name="ads1299evm-pdk.bin" Type="Document" URL="../fw_1299/ads1299evm-pdk.bin"/>
			</Item>
			<Item Name="Menu" Type="Folder">
				<Item Name="menu.rtm" Type="Document" URL="../Modules/Runtime Menu/menu.rtm"/>
			</Item>
			<Item Name="Text Files" Type="Folder">
				<Item Name="1299 Register Map.txt" Type="Document" URL="../Misc Files/1299 Register Map.txt"/>
			</Item>
			<Item Name="Icon" Type="Folder">
				<Item Name="StdDir.ico" Type="Document" URL="../../adcpro/shell/StdDir.ico"/>
			</Item>
			<Item Name="INI Files" Type="Folder">
				<Item Name="ads1299evm.ini" Type="Document" URL="../ads1299evm.ini"/>
			</Item>
		</Item>
		<Item Name="Main App Files" Type="Folder">
			<Item Name="Constants" Type="Folder">
				<Item Name="Register Constants" Type="Folder">
					<Item Name="CST_Reg_CHxSET.vi" Type="VI" URL="../Constants/Register/CST_Reg_CHxSET.vi"/>
				</Item>
				<Item Name="CST_1299MainShifter.vi" Type="VI" URL="../Constants/CST_1299MainShifter.vi"/>
				<Item Name="CST_AnalysisData.vi" Type="VI" URL="../Constants/CST_AnalysisData.vi"/>
				<Item Name="CST_CtrlRefShifter.vi" Type="VI" URL="../Constants/CST_CtrlRefShifter.vi"/>
				<Item Name="CST_Reg_CONFIG1.vi" Type="VI" URL="../Constants/Register/CST_Reg_CONFIG1.vi"/>
				<Item Name="CST_1299ShadowRegister.VI" Type="VI" URL="../Constants/CST_1299ShadowRegister.VI"/>
			</Item>
			<Item Name="Controls" Type="Folder">
				<Item Name="Register TypeDefs" Type="Folder">
					<Item Name="TYP_Reg_ID.ctl" Type="VI" URL="../Controls/Register/TYP_Reg_ID.ctl"/>
					<Item Name="TYP_Reg_CONFIG1.ctl" Type="VI" URL="../Controls/Register/TYP_Reg_CONFIG1.ctl"/>
					<Item Name="TYP_Reg_CONFIG2.ctl" Type="VI" URL="../Controls/Register/TYP_Reg_CONFIG2.ctl"/>
					<Item Name="TYP_Reg_CONFIG3.ctl" Type="VI" URL="../Controls/Register/TYP_Reg_CONFIG3.ctl"/>
					<Item Name="TYP_Reg_LOFF.ctl" Type="VI" URL="../Controls/Register/TYP_Reg_LOFF.ctl"/>
					<Item Name="TYP_Reg_CHxSET.ctl" Type="VI" URL="../Controls/Register/TYP_Reg_CHxSET.ctl"/>
					<Item Name="TYP_Reg_GPIO.ctl" Type="VI" URL="../Controls/Register/TYP_Reg_GPIO.ctl"/>
					<Item Name="TYP_Reg_MISC1.ctl" Type="VI" URL="../Controls/Register/TYP_Reg_MISC1.ctl"/>
					<Item Name="TYP_Reg_MISC2.ctl" Type="VI" URL="../Controls/Register/TYP_Reg_MISC2.ctl"/>
					<Item Name="TYP_Reg_CONFIG4.ctl" Type="VI" URL="../Controls/Register/TYP_Reg_CONFIG4.ctl"/>
				</Item>
				<Item Name="Misc" Type="Folder">
					<Item Name="TYP_DisableProp.ctl" Type="VI" URL="../Controls/Misc/TYP_DisableProp.ctl"/>
					<Item Name="TYP_SetTimeout.ctl" Type="VI" URL="../Controls/Misc/TYP_SetTimeout.ctl"/>
					<Item Name="TYP_PollingStatus.ctl" Type="VI" URL="../Controls/Misc/TYP_PollingStatus.ctl"/>
					<Item Name="TYP_PollingNotifierState.ctl" Type="VI" URL="../Controls/Misc/TYP_PollingNotifierState.ctl"/>
				</Item>
				<Item Name="Shift Registers" Type="Folder">
					<Item Name="TYP_CtrlNameArray.ctl" Type="VI" URL="../Controls/Shift Registers/TYP_CtrlNameArray.ctl"/>
					<Item Name="TYP_CtrlRefShifter.ctl" Type="VI" URL="../Controls/Shift Registers/TYP_CtrlRefShifter.ctl"/>
					<Item Name="TYP_1299MainShifter.ctl" Type="VI" URL="../Controls/Shift Registers/TYP_1299MainShifter.ctl"/>
					<Item Name="TYP_CtrlReg.ctl" Type="VI" URL="../Controls/Shift Registers/TYP_CtrlReg.ctl"/>
					<Item Name="TYP_AnalysisData.ctl" Type="VI" URL="../Controls/Shift Registers/TYP_AnalysisData.ctl"/>
					<Item Name="TYP_1299ShadowRegister.ctl" Type="VI" URL="../Controls/Shift Registers/TYP_1299ShadowRegister.ctl"/>
				</Item>
				<Item Name="TYP_CtrlRegItem.ctl" Type="VI" URL="../Controls/TYP_CtrlRegItem.ctl"/>
				<Item Name="TYP_ACAnalysisParam.ctl" Type="VI" URL="../Controls/TYP_ACAnalysisParam.ctl"/>
			</Item>
			<Item Name="Modules" Type="Folder">
				<Item Name="Estyx" Type="Folder">
					<Item Name="ADS1299" Type="Folder">
						<Item Name="FG_ADS1299EVMEstyxFiles.vi" Type="VI" URL="../Modules/Estyx/FG_ADS1299EVMEstyxFiles.vi"/>
						<Item Name="TYP_ADS1299Estyx File Enum.ctl" Type="VI" URL="../Modules/Estyx/TYP_ADS1299Estyx File Enum.ctl"/>
					</Item>
				</Item>
				<Item Name="Parallel Loop VIs" Type="Folder">
					<Item Name="RegisterPoll.vi" Type="VI" URL="../Modules/RegisterPoll.vi"/>
				</Item>
				<Item Name="Converters" Type="Folder">
					<Item Name="Convert_Styx2Register.vi" Type="VI" URL="../Modules/Converters/Convert_Styx2Register.vi"/>
					<Item Name="ECG Data File.vi" Type="VI" URL="../Modules/ECG Data File.vi"/>
					<Item Name="RightShiftX.vi" Type="VI" URL="../Modules/Converters/RightShiftX.vi"/>
					<Item Name="2&apos;scomplementPGAconv.vi" Type="VI" URL="../Modules/2&apos;scomplementPGAconv.vi"/>
					<Item Name="Register_ValueCalc.vi" Type="VI" URL="../Modules/Converters/Register_ValueCalc.vi"/>
				</Item>
				<Item Name="Register Map" Type="Folder">
					<Item Name="RegisterAssignmentScan.vi" Type="VI" URL="../Modules/Converters/RegisterAssignmentScan.vi"/>
					<Item Name="RegisterMapScan.vi" Type="VI" URL="../Modules/Converters/RegisterMapScan.vi"/>
					<Item Name="Register Set Parse2.vi" Type="VI" URL="../Modules/Converters/Register Set Parse2.vi"/>
					<Item Name="GetCtrlRef[].vi" Type="VI" URL="../Modules/GetCtrlRef[].vi"/>
				</Item>
				<Item Name="UI Formatting" Type="Folder">
					<Item Name="Analysis Tables" Type="Folder">
						<Item Name="StatTable_Popup.vi" Type="VI" URL="../Modules/StatTable_Popup.vi"/>
						<Item Name="StatTable_Prep.vi" Type="VI" URL="../Modules/StatTable_Prep.vi"/>
					</Item>
					<Item Name="Format_ACAnalysis.vi" Type="VI" URL="../Modules/Converters/Format_ACAnalysis.vi"/>
					<Item Name="Format_CMRR_BW.vi" Type="VI" URL="../Modules/Converters/Format_CMRR_BW.vi"/>
					<Item Name="ECG Zoom Window.vi" Type="VI" URL="../Modules/ECG Zoom Window.vi"/>
					<Item Name="Format_RegisterTable.vi" Type="VI" URL="../Modules/Format_RegisterTable.vi"/>
				</Item>
				<Item Name="Calculation" Type="Folder">
					<Item Name="Calc_CMRR.vi" Type="VI" URL="../Modules/Calc_CMRR.vi"/>
					<Item Name="SNR_Analysis.vi" Type="VI" URL="../Modules/SNR_Analysis.vi"/>
					<Item Name="dB_reference.vi" Type="VI" URL="../Modules/dB_reference.vi"/>
					<Item Name="BasicAnalysis.vi" Type="VI" URL="../Modules/Converters/BasicAnalysis.vi"/>
					<Item Name="GPIO_RegChangeID.vi" Type="VI" URL="../Modules/Converters/GPIO_RegChangeID.vi"/>
				</Item>
				<Item Name="Filter" Type="Folder">
					<Item Name="Notch" Type="Folder">
						<Item Name="Data_NotchFilter.vi" Type="VI" URL="../Modules/Filter/Notch/Data_NotchFilter.vi"/>
						<Item Name="Filter_Notch60A.vi" Type="VI" URL="../Modules/Filter/Notch/Filter_Notch60A.vi"/>
						<Item Name="Filter_Notch60B.vi" Type="VI" URL="../Modules/Filter/Notch/Filter_Notch60B.vi"/>
						<Item Name="Filter_Notch50A.vi" Type="VI" URL="../Modules/Filter/Notch/Filter_Notch50A.vi"/>
						<Item Name="Filter_Notch50B.vi" Type="VI" URL="../Modules/Filter/Notch/Filter_Notch50B.vi"/>
					</Item>
					<Item Name="SINC" Type="Folder">
						<Item Name="Integrator" Type="Folder">
							<Item Name="Filter_IntStat.vi" Type="VI" URL="../Modules/Filter/SINC/Filter_IntStat.vi"/>
							<Item Name="Filter_Integrator.vi" Type="VI" URL="../Modules/Filter/SINC/Filter_Integrator.vi"/>
						</Item>
						<Item Name="Differentiator" Type="Folder">
							<Item Name="Filter_DiffStat.vi" Type="VI" URL="../Modules/Filter/SINC/Filter_DiffStat.vi"/>
							<Item Name="Filter_Differentiator.vi" Type="VI" URL="../Modules/Filter/SINC/Filter_Differentiator.vi"/>
						</Item>
						<Item Name="Filter_INTHistory.ctl" Type="VI" URL="../Modules/Filter/SINC/Filter_INTHistory.ctl"/>
						<Item Name="Filter_DIFFHistory.ctl" Type="VI" URL="../Modules/Filter/SINC/Filter_DIFFHistory.ctl"/>
						<Item Name="CST_IntHistory.vi" Type="VI" URL="../Modules/Filter/SINC/CST_IntHistory.vi"/>
						<Item Name="CST_DiffHistory.vi" Type="VI" URL="../Modules/Filter/SINC/CST_DiffHistory.vi"/>
						<Item Name="Filter_SINC3_500.vi" Type="VI" URL="../Modules/Filter/SINC/Filter_SINC3_500.vi"/>
						<Item Name="Filter_IntgrLoop.vi" Type="VI" URL="../Modules/Filter/SINC/Filter_IntgrLoop.vi"/>
					</Item>
					<Item Name="Respiration" Type="Folder">
						<Item Name="Resp LPF.vi" Type="VI" URL="../Modules/Filter/Respiration/Resp LPF.vi"/>
						<Item Name="Resp HPF.vi" Type="VI" URL="../Modules/Filter/Respiration/Resp HPF.vi"/>
					</Item>
					<Item Name="Filter_3Way.vi" Type="VI" URL="../Modules/Filter/Filter_3Way.vi"/>
					<Item Name="TYP_FilterSettings.ctl" Type="VI" URL="../Modules/Filter/TYP_FilterSettings.ctl"/>
				</Item>
				<Item Name="Scan RegMap" Type="Folder">
					<Item Name="CST_ADSxxxx Register.vi" Type="VI" URL="../Modules/Scan RegMap/CST_ADSxxxx Register.vi"/>
					<Item Name="CST_RegMap Item.vi" Type="VI" URL="../Modules/Scan RegMap/CST_RegMap Item.vi"/>
					<Item Name="RegisterMap_ RegMap Sort.vi" Type="VI" URL="../Modules/Scan RegMap/RegisterMap_ RegMap Sort.vi"/>
					<Item Name="RegisterMap_ADSxxxx.vi" Type="VI" URL="../Modules/Scan RegMap/RegisterMap_ADSxxxx.vi"/>
					<Item Name="RegisterMap_RegMap Mask.vi" Type="VI" URL="../Modules/Scan RegMap/RegisterMap_RegMap Mask.vi"/>
					<Item Name="RegisterMap_ScanFile.vi" Type="VI" URL="../Modules/Scan RegMap/RegisterMap_ScanFile.vi"/>
					<Item Name="RegisterMap_Split RegMap.vi" Type="VI" URL="../Modules/Scan RegMap/RegisterMap_Split RegMap.vi"/>
					<Item Name="RegisterMap_TrimReg.vi" Type="VI" URL="../Modules/Scan RegMap/RegisterMap_TrimReg.vi"/>
					<Item Name="TYP_ADSxxxx Register.ctl" Type="VI" URL="../Modules/Scan RegMap/TYP_ADSxxxx Register.ctl"/>
					<Item Name="TYP_RegMap Item.ctl" Type="VI" URL="../Modules/Scan RegMap/TYP_RegMap Item.ctl"/>
					<Item Name="RegisterMap_ GenerateBase.vi" Type="VI" URL="../Modules/Scan RegMap/RegisterMap_ GenerateBase.vi"/>
				</Item>
				<Item Name="Startup - Read INI.vi" Type="VI" URL="../Modules/Startup - Read INI.vi"/>
				<Item Name="Create_SaveFile.vi" Type="VI" URL="../Modules/Create_SaveFile.vi"/>
			</Item>
		</Item>
		<Item Name="ADS1299EVM_Main.vi" Type="VI" URL="../ADS1299EVM_Main.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="lvanlys.dll" Type="Document" URL="../../../Program Files/National Instruments/LabVIEW 2010/resource/lvanlys.dll"/>
			<Item Name="cstyx.dll" Type="Document" URL="../lib_1299/Styx/cstyx/win32/cstyx.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="To Common Files" Type="Source Distribution">
				<Property Name="Bld_buildSpecName" Type="Str">To Common Files</Property>
				<Property Name="Bld_localDestDir" Type="Path">../ads1299/Distribution</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Destination[0].destName" Type="Str">Destination Directory</Property>
				<Property Name="Destination[0].path" Type="Path">../ads1299/Distribution</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../ads1299/Distribution/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{9F067080-F5FA-4D16-9BCB-FEF8DD09FB62}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Distribution</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Container</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Misc Files/Firmware</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Exclude</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
			</Item>
			<Item Name="ADS1299EVM EXE" Type="EXE">
				<Property Name="App_INI_aliasGUID" Type="Str">{7489FCBC-76B5-44E2-AEDC-3793C1868547}</Property>
				<Property Name="App_INI_GUID" Type="Str">{C11132B0-E213-46B5-9B3F-99CD62586A59}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">ADS1299EVM EXE</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../ads1299/win32/app</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Destination[0].destName" Type="Str">ADS1299EVM.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../ads1299/win32/app/NI_AB_PROJECTNAME.exe</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../ads1299/win32/app/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/Misc Files/Icon/StdDir.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{9F067080-F5FA-4D16-9BCB-FEF8DD09FB62}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/ADS1299EVM_Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">1</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/lib1299</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">Texas Instruments, Inc</Property>
				<Property Name="TgtF_fileDescription" Type="Str">ADS1299EVM EXE</Property>
				<Property Name="TgtF_fileVersion.major" Type="Int">1</Property>
				<Property Name="TgtF_fileVersion.patch" Type="Int">2</Property>
				<Property Name="TgtF_internalName" Type="Str">ADS1299EVM EXE</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2009 Texas Instruments, Inc</Property>
				<Property Name="TgtF_productName" Type="Str">ADS1299EVM EXE</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{AF143770-D641-4B0A-9BB5-CFB7817F07D8}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">ADS1299EVM.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
