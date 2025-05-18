<?xml version='1.0'?>
<Project Type="Project" LVVersion="8508002">
   <Item Name="My Computer" Type="My Computer">
      <Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="server.tcp.enabled" Type="Bool">false</Property>
      <Property Name="server.tcp.port" Type="Int">0</Property>
      <Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
      <Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
      <Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
      <Property Name="specify.custom.address" Type="Bool">false</Property>
      <Item Name="FW_Load.lvlib" Type="Library" URL="../FirmwareLoader/FW_Load.lvlib"/>
      <Item Name="EEPROM.lvlib" Type="Library" URL="EEPROM.lvlib"/>
      <Item Name="Dependencies" Type="Dependencies">
         <Item Name="vi.lib" Type="Folder">
            <Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
            <Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
            <Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
            <Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
            <Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
            <Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
            <Item Name="Open Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Open Config Data.vi"/>
            <Item Name="Config Data RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data RefNum"/>
            <Item Name="Config Data Open Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Open Reference.vi"/>
            <Item Name="Config Data Registry Functions.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Registry Functions.ctl"/>
            <Item Name="Config Data Registry.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Registry.vi"/>
            <Item Name="Config Data.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data.ctl"/>
            <Item Name="Config Data Section.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Section.ctl"/>
            <Item Name="Config Data Set File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Set File Path.vi"/>
            <Item Name="Config Data Modify Functions.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Modify Functions.ctl"/>
            <Item Name="Config Data Modify.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Modify.vi"/>
            <Item Name="Add Quotes.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Add Quotes.vi"/>
            <Item Name="Info From Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Info From Config Data.vi"/>
            <Item Name="Config Data Read From File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Read From File.vi"/>
            <Item Name="Config Data Get File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Get File Path.vi"/>
            <Item Name="String to Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/String to Config Data.vi"/>
            <Item Name="Invalid Config Data Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Invalid Config Data Reference.vi"/>
            <Item Name="Config Data Close Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Close Reference.vi"/>
            <Item Name="Read Key.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key.vi"/>
            <Item Name="Read Key (Boolean).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (Boolean).vi"/>
            <Item Name="Config Data Get Key Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Get Key Value.vi"/>
            <Item Name="Read Key (Double).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (Double).vi"/>
            <Item Name="Read Key (I32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (I32).vi"/>
            <Item Name="Read Key (Path).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (Path).vi"/>
            <Item Name="Remove Quotes.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Remove Quotes.vi"/>
            <Item Name="Common Path to Specific Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Common Path to Specific Path.vi"/>
            <Item Name="Read Key (String).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (String).vi"/>
            <Item Name="Parse Stored String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Parse Stored String.vi"/>
            <Item Name="Get Next Character.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Get Next Character.vi"/>
            <Item Name="Read Key (U32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Read Key (U32).vi"/>
            <Item Name="Close Config Data.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Close Config Data.vi"/>
            <Item Name="Config Data Write To File.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data Write To File.vi"/>
            <Item Name="Config Data to String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Config Data to String.vi"/>
            <Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
            <Item Name="Write Key.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key.vi"/>
            <Item Name="Write Key (Boolean).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (Boolean).vi"/>
            <Item Name="Write Key (Double).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (Double).vi"/>
            <Item Name="Write Key (I32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (I32).vi"/>
            <Item Name="Write Key (Path).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (Path).vi"/>
            <Item Name="Specific Path to Common Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Specific Path to Common Path.vi"/>
            <Item Name="Write Key (String).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (String).vi"/>
            <Item Name="Single to Double Backslash.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Single to Double Backslash.vi"/>
            <Item Name="Remove Unprintable Chars.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Remove Unprintable Chars.vi"/>
            <Item Name="Write Key (U32).vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/Write Key (U32).vi"/>
            <Item Name="Merge Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Merge Errors.vi"/>
         </Item>
         <Item Name="user.lib" Type="Folder">
            <Item Name="DequeueCmd.vi" Type="VI" URL="/&lt;userlib&gt;/Common/Queue with String/DequeueCmd.vi"/>
         </Item>
         <Item Name="lvstyx.lvlib" Type="Library" URL="../Styx/lvstyx/lvstyx.lvlib"/>
         <Item Name="cstyx.dll" Type="Document" URL="../Styx/cstyx/win32/cstyx.dll"/>
      </Item>
      <Item Name="Build Specifications" Type="Build">
         <Item Name="EEPROM Tester" Type="EXE">
            <Property Name="App_applicationGUID" Type="Str">{A2F10F4B-D0EB-4041-9825-7BC9BF86C944}</Property>
            <Property Name="App_applicationName" Type="Str">EEPROM_Test.exe</Property>
            <Property Name="App_companyName" Type="Str">Texas Instruments, Inc</Property>
            <Property Name="App_fileType" Type="Int">1</Property>
            <Property Name="App_fileVersion.major" Type="Int">1</Property>
            <Property Name="App_INI_aliasGUID" Type="Str">{82CA76D3-F052-4D7B-9C5B-809E29536E5C}</Property>
            <Property Name="App_INI_GUID" Type="Str">{9078F8A9-51BD-4022-98E8-8EF2E99E5608}</Property>
            <Property Name="App_internalName" Type="Str">eeprom tester for EVM</Property>
            <Property Name="App_legalCopyright" Type="Str">Copyright © 2008 Texas Instruments, Inc</Property>
            <Property Name="App_productName" Type="Str">eeprom test program</Property>
            <Property Name="Bld_buildSpecName" Type="Str">EEPROM Tester</Property>
            <Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
            <Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
            <Property Name="Destination[0].destName" Type="Str">EEPROM_Test.exe</Property>
            <Property Name="Destination[0].path" Type="Path">../NI_AB_PROJECTNAME/build/Tester/internal.llb</Property>
            <Property Name="Destination[0].type" Type="Str">App</Property>
            <Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
            <Property Name="Destination[1].path" Type="Path">../NI_AB_PROJECTNAME/build/Tester/data</Property>
            <Property Name="Destination[2].destName" Type="Str">Destination Directory</Property>
            <Property Name="Destination[2].path" Type="Path">../NI_AB_PROJECTNAME/build/Tester</Property>
            <Property Name="DestinationCount" Type="Int">3</Property>
            <Property Name="Source[0].Container.applyDestination" Type="Bool">true</Property>
            <Property Name="Source[0].Container.applyInclusion" Type="Bool">true</Property>
            <Property Name="Source[0].Container.applyProperties" Type="Bool">true</Property>
            <Property Name="Source[0].itemID" Type="Str">{6E5207A1-AC20-4EFE-9A7F-78BD9F8D1CDA}</Property>
            <Property Name="Source[0].type" Type="Str">Container</Property>
            <Property Name="Source[1].destinationIndex" Type="Int">0</Property>
            <Property Name="Source[1].itemID" Type="Ref">/My Computer/EEPROM.lvlib/EEPROM UI MAIN.vi</Property>
            <Property Name="Source[1].properties[0].type" Type="Str">Remove front panel</Property>
            <Property Name="Source[1].properties[0].value" Type="Bool">false</Property>
            <Property Name="Source[1].propertiesCount" Type="Int">1</Property>
            <Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
            <Property Name="Source[1].type" Type="Str">VI</Property>
            <Property Name="Source[2].destinationIndex" Type="Int">0</Property>
            <Property Name="Source[2].itemID" Type="Ref">/My Computer/EEPROM.lvlib/Functions/EEPROM INI Read.vi</Property>
            <Property Name="Source[2].properties[0].type" Type="Str">Remove front panel</Property>
            <Property Name="Source[2].properties[0].value" Type="Bool">false</Property>
            <Property Name="Source[2].propertiesCount" Type="Int">1</Property>
            <Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
            <Property Name="Source[2].type" Type="Str">VI</Property>
            <Property Name="Source[3].destinationIndex" Type="Int">0</Property>
            <Property Name="Source[3].itemID" Type="Ref">/My Computer/EEPROM.lvlib/Functions/EEPROM StringToDate.vi</Property>
            <Property Name="Source[3].properties[0].type" Type="Str">Remove front panel</Property>
            <Property Name="Source[3].properties[0].value" Type="Bool">false</Property>
            <Property Name="Source[3].propertiesCount" Type="Int">1</Property>
            <Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
            <Property Name="Source[3].type" Type="Str">VI</Property>
            <Property Name="Source[4].destinationIndex" Type="Int">0</Property>
            <Property Name="Source[4].itemID" Type="Ref">/My Computer/EEPROM.lvlib/Functions/EEPROM Read .vi</Property>
            <Property Name="Source[4].properties[0].type" Type="Str">Remove front panel</Property>
            <Property Name="Source[4].properties[0].value" Type="Bool">false</Property>
            <Property Name="Source[4].propertiesCount" Type="Int">1</Property>
            <Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
            <Property Name="Source[4].type" Type="Str">VI</Property>
            <Property Name="Source[5].destinationIndex" Type="Int">0</Property>
            <Property Name="Source[5].itemID" Type="Ref">/My Computer/EEPROM.lvlib/EEPROM TestVI.vi</Property>
            <Property Name="Source[5].properties[0].type" Type="Str">Remove front panel</Property>
            <Property Name="Source[5].properties[0].value" Type="Bool">false</Property>
            <Property Name="Source[5].propertiesCount" Type="Int">1</Property>
            <Property Name="Source[5].sourceInclusion" Type="Str">TopLevel</Property>
            <Property Name="Source[5].type" Type="Str">VI</Property>
            <Property Name="SourceCount" Type="Int">6</Property>
         </Item>
         <Item Name="Bulk writer" Type="EXE">
            <Property Name="App_applicationGUID" Type="Str">{767D3A75-B927-4193-9D33-86B6613F2B82}</Property>
            <Property Name="App_applicationName" Type="Str">EEPROM bulk write.exe</Property>
            <Property Name="App_companyName" Type="Str">Texas Instruments, Inc</Property>
            <Property Name="App_fileDescription" Type="Str">Bulk writer</Property>
            <Property Name="App_fileType" Type="Int">1</Property>
            <Property Name="App_fileVersion.major" Type="Int">1</Property>
            <Property Name="App_INI_aliasGUID" Type="Str">{02FE3D14-24A5-4ED8-88BD-6C2137063B9E}</Property>
            <Property Name="App_INI_GUID" Type="Str">{C9557ECF-9A65-4AA4-88A7-A8D3C131489A}</Property>
            <Property Name="App_internalName" Type="Str">Bulk writer</Property>
            <Property Name="App_legalCopyright" Type="Str">Copyright © 2008 Texas Instruments, Inc</Property>
            <Property Name="App_productName" Type="Str">Bulk writer</Property>
            <Property Name="Bld_buildSpecName" Type="Str">Bulk writer</Property>
            <Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
            <Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
            <Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
            <Property Name="Destination[0].destName" Type="Str">EEPROM bulk write.exe</Property>
            <Property Name="Destination[0].path" Type="Path">../NI_AB_PROJECTNAME/build/Bulk Write/internal.llb</Property>
            <Property Name="Destination[0].type" Type="Str">App</Property>
            <Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
            <Property Name="Destination[1].path" Type="Path">../NI_AB_PROJECTNAME/build/Bulk Write/data</Property>
            <Property Name="DestinationCount" Type="Int">2</Property>
            <Property Name="Source[0].itemID" Type="Str">{6E5207A1-AC20-4EFE-9A7F-78BD9F8D1CDA}</Property>
            <Property Name="Source[0].type" Type="Str">Container</Property>
            <Property Name="Source[1].destinationIndex" Type="Int">0</Property>
            <Property Name="Source[1].itemID" Type="Ref">/My Computer/EEPROM.lvlib/Bulk Data Read/Write EEPROM data file.vi</Property>
            <Property Name="Source[1].type" Type="Str">VI</Property>
            <Property Name="Source[2].destinationIndex" Type="Int">0</Property>
            <Property Name="Source[2].itemID" Type="Ref">/My Computer/EEPROM.lvlib/Bulk Data Read/Test VIs/EEPROM Bulk Write test.vi</Property>
            <Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
            <Property Name="Source[2].type" Type="Str">VI</Property>
            <Property Name="SourceCount" Type="Int">3</Property>
         </Item>
      </Item>
   </Item>
</Project>
