﻿DECLARE @var0 nvarchar(128)
SELECT @var0 = name
FROM sys.default_constraints
WHERE parent_object_id = object_id(N'dbo.Students')
AND col_name(parent_object_id, parent_column_id) = 'LastName';
IF @var0 IS NOT NULL
    EXECUTE('ALTER TABLE [dbo].[Students] DROP CONSTRAINT [' + @var0 + ']')
ALTER TABLE [dbo].[Students] ALTER COLUMN [LastName] [nvarchar](100) NOT NULL
INSERT [dbo].[__MigrationHistory]([MigrationId], [ContextKey], [Model], [ProductVersion])
VALUES (N'202105121035150_SetLastNameMaxLength', N'StudentDiary.ApplicationDbContext',  0x1F8B0800000000000400ED5ADB6EE336107D2FD07F10F4D41659CBCEBEB481BD8BAC9D144637C922CE2EFA16D0D2D8612B51AA4805368A7E591FFA49FD850E75A54849969DDB765B04086C9273E1F0CC903CF4DF7FFE357EBB097CEB1E624E4336B14783A16D0173438FB2F5C44EC4EAD5F7F6DB375F7F353EF3828DF5A918F75A8E4349C627F69D10D189E370F70E02C2070175E390872B3170C3C0215EE81C0F873F38A39103A8C2465D9635BE4E98A001A45FF0EB34642E442221FE45E881CFF376EC59A45AAD4B12008F880B137B21120F989851126F6DEBD4A7047D5880BFB22DC2582888400F4F3E7258883864EB45840DC4BFD94680E356C4E7907B7E520DEF3B89E1B19C84530916AADC848B30D853E1E8751E1547173F28B67619358CDB19C6576CE5ACD3D84DEC1FE330896C4BB77432F56339AA1ED741B60C83190EA58C0F52E1234B1D725482013123FF8EAC69E28B2486098344C4C43FB23E244B9FBA3FC1F626FC15D88425BEAF3A896E625FAD019B3EC46104B1D85EC32A777DEED99653977374C1524C91C9E63567E2F5B16D5DA271B2F4A1C4801283850863F81118C44480F7810801312EE165C8C0B0ACD991FF0B4B0838CC1ADBBA209BF7C0D6E26E621F639A9CD30D7845436EFC23A398632823E2041A9CD38C5E927BBA4E7DD5CCE72BC26DEB1AFC7400BFA351960F83BCF3365FFAF3380CAE43BF92CA3A6E6F48BC068193089B7A176112BB9A4763A7825727E8725587C22EEFFBCF016F2E278B91DC05BE731A73B10381A3E1E3405033FD9EBC94E569180419E45B2DE3C75E96BB0D9DBA82DE5341A134F52EC404216C6F97D34CDA0D8CBE499FE7F3E1195FE47473C617F5A0AF3BD7D8C8D6CD2528EBBB2DEB40E551BDC728425AF783AA50A6EBD0229449FF5F835A6C6178604F6037EF617BE787AE2659FE02EEFE6A76EDAD0FC3B59E6A2DB0EF83EB53CE4397A69ED43DCCD3BD3EAD33E6599DB99F015FA91A584211C33442D4A2F589FD9D11AA369D65F2563AF30A54D738B275BC5FB119F820C092C5561E9BA784BBC433570963E2D55B3045209618253E5E1F38261D65C2CC27CA5C1A11BFCB6F4DA8671A4AA74AF57ACF0C2260D252D71AF4B15B6E1DA6F1D28616A95D81193B0A92BA01A6C1BC0D0D6D98AFE05094E0FE086BDB1F76C2F6E541D6ECFA33A0AC791DFA18566AF033002DAB6F28235002E2E2BC15C9354C07CF96B213364D3707BCD9E7FB36CFCF713A84A4F205083583F0745215D57A8932105817AF6E58868212803B54940724434391169A02256C8623C5D94E19D378F8D35771D77E503AAD4ED9C0C2AE1D40D152C45DCFB1FAE47A4C5CDF6BCD997795A93E854AF1BA5CAB8EA9B794A61E11EC987DB1EB97595171604E4682156499D3C2968D2F481449E72BC9BCC55A64D4D9F4D5627F6629C874382E6F20984A6F4B4B789A246BD07AE5ADCD83F4BA3A23822C893C874DBDC018D658035AB2AB30594B7373D58A942B86CBCFB58CCA4EFD8D595385F01C6725AF9DE9044187B929975297C42771C3D17C1AFA49C0DA2B7EBB7476E356E5B31653C3D8D11C37AABA1119632FACC7B9D72A94C03F781D5A92B8C74AB44A3ECD5A28E48BAA4469EEAFAB62535455556B7F4D153BA26AAA5AFB6B52E90F5597DADE5F5B798E5555B51E6E5F0CBF45F93F18BEF98EBE3F7ADB049F06BCD9AD5D95CF5AFA6B504E8CAA9A8E836487AEEAEA5ED355353F33408CCD581F525A2F37656DF31DE71BE1EEF72C6367CC86D81606E99E7A72575C6CB9806020070C16BFF9539FA607A162C0056174055C6444937D3C1C1D6B0F639FCF2395C3B9E7F779A97A76AA8CCA90EEC939A90C38BB27B17B4762E3FDA753E7233CA5CCF16EB699D8BF5B7FBC50D07632887B46D578D6680C6DFABCF0C0578B4753AC3F4A148ABF09C8E65B55DB610F0F4BBA3F36B54707DA8D1D297362CD7FBECDC58EACAB184BCB893544583D12845B79F82F0EC12A297E485D3128F1BEAB570AEEB17E3DA8F4DD73786CD23A67399E955136C88DC358F28338C3B6EBE75331D15F0EF9BCC75A3D115A8ABA7600DFFD90478CE76394FF3514B2C932F5E086DBA9E1EC243EB1BD6588AB9BD5BE165AB38536EE628D9BB4B71287CD9C7207A5DCA4BD85DC7C62BEB916648533EBC12E3791AA9F17A3BC87A38D35C364009E8432366FA3987BCA6F3031F1395D572AE42F3219B8B5AC2BC7CCD92A2CF25FF3A818A21D282E40100F53F2341674455C81DD2E709E4EF713F1131C72162CC19BB3AB444489C02943B0F46B3F3E9045A4CB7ECA8BD77D1E5F45E9BBFD634C01DDA43805B862EF12EA7BA5DFE70D67A11615B23AE5874CB996421E36D7DB5293F973C3364579F8CAA27A0341E4A3327EC516E41E0EF1ED2387F7B026EEB62015DA95EC5E887AD8C7334AD6310978AEA392C7AF88612FD8BCF907083A13368A2C0000 , N'6.2.0-61023')

