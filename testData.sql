-- encrypted password is beavis
insert into rcuser (id,login,email,firstname,lastname,admin,passworddata) values (1,'test','cornholio@stat.wvu.edu','Great','Cornholio', false, '$2a$10$cI1EdoI4B9vDlHrDukE2SOVEVKyFjjKi4ij3ggMh2mvNZLNcUsT9W');
insert into rcproject(id,userid,name) values (1 , 1, 'sample');
insert into rcworkspace (id, userid, projectid, name) values (1, 1, 1, 'foofy');
insert into rcworkspace (id, userid, projectid, name) values (2, 1, 1, 'thrice');
COPY rcfile (id, wspaceid, name, datecreated, lastmodified, version, filesize, objtype) FROM stdin;
1	1	sample.R	2015-08-12 15:23:25.827231	2015-08-12 15:23:25.827231	0	28	file
2	1	foo.R	2015-08-12 15:23:25.853145	2015-08-12 15:23:25.853145	0	28	file
\.
COPY rcfiledata (id, bindata) FROM stdin;
1	\\x73616d706c6558203c2d206328312c332c34290a73616d706c65580a
2	\\x73616d706c6558203c2d206328312c332c34290a73616d706c65580a
\.
COPY sessionrecord (id, wspaceid, startdate, enddate) FROM stdin;
1	1	2015-10-01 14:01:01	2015-10-01 14:30:21
\.

COPY sessionimage (id, sessionid, batchid, name, datecreated, imgdata) FROM stdin;
1	1	0	image.png	2015-10-06 14:14:58.356572	\\x89504e470d0a1a0a0000000d49484452000001e0000001e008060000007dd4be950000040d694343504943432050726f66696c650000388d8d555d681c55143ebb73672324ce536c348574a83f0d250d935634a1b4ba7fdddd366e964936da22e864f6eece98c9ce3833bbfda14f45507c31ea9b14c4bfb7802028f50fdb3eb42f950a25dad420283eb4f88350e88ba6eb993b339969bab1de65ee7cf39def9e7beeb967ef05e8b9aa5896911401169aae2d1732e273878f883d2b908487a01706a157511d2b5da94c02364f0b77b55bdf43c27b5fd9d5ddfe9fadb7461d1520711f62b3e6a80b888f01f0a755cb76017afa911f3fea5a1ef662e8b73140c42f7ab8e163d7c3733e7e8d6966e42ce2d3880555536a8897108fccc5f8460cfb31b0d65fa04d6aebaae8e5a2629b75dda0b170ef61fe9f6dc16885f36dc3a7cf999f3e84ef615cfb2b3525e7e151c44baa929f46fc08e26b6d7db61ce0db969b91113f0690dcde9aafa611ef445cacdb07aabe9fa4adb58a217ee78436f32ce22d88cf37e7ca53c1d8abaa93c59cc176c4b7355af2f23b04c089ba5b9af1c772fb6d539ef2e7e5ea359acb7b7944fcfabc7948f67d729f39ede97ce8f384962d07fca597948315c483887fa14641f6e7e2feb1dc4a1003196a1ae5497f2e92a30e5b2fe35d6da6e8cf4b0c1737d41f4b16ebfa8152a0ff44b38b7280af5906ab518c8d4fda2db9eaebf951c5ce177c9f7c8536ab817fbe0db3090528983087bd0a4d58031164284006df16d868a9830e063214ad14198a5fa166171be7c03cf23ab499cdc1bec294fec8c85f83f9b8ceb42a64873e8216b21afc8eac16d365f1ab855c63133f7e2c37023f26192012d983cf5e3249f69171320122798a3c4df6931cb21364effad84a6c455e3c37d6fdbc8c3352a69b45dd39b4bba060ff332a4c5c53d7ac2c0eb68623cb29fb055dbdfcc65fb15ce92c3751b6e2199dba57cef95ff9ebfc32f62bfc6aa4e07fe457f1b772c75accbbb24cc3ec6c587377551a6d06e316f0d199c589c51df371f1e4570f467e96c999e7aff45d3c596f2e0e46ac9705fa6af956194e8d44acf483f487b42cbd277d28fdc6bdcd7dca7dcd7dce7dc15d02913bcb9de3bee12e701f735fc6f66af31a5adf7b167918b767e9966bac4a21236c151e1672c236e1516132f2270c08634251d88196adebfb169f2f9e3d1d0e631fe6a7fb5cbe2e560189fbb102f44dfe555554e97094291d566f4d38be41138c2443648c943654f7b857f3a122954fe5526910533b5313a9b1d4410f87b3a676a06d02fbfc1dd5a96eb252ead263de7d0259d33a6eeb0dcd15774bd293621aaf362a969aeae888a81886c84c8e685387da6d5a1b05efdef48ff49b32bb0f135b2e479cfb0cc0be3ff1ecfb2ee28eb400961c8081c7236e18cfca07de0538f384dab2dbc11d91487c0be0d4f7ecf6bffa32787efdd4e9dcc473ace72d80b5373b9dbfdfef74d63e40ffab00678d7f01a09f7c555060fe6f00003062494441547801eddd097c14f5fdfff14f386242124020d8705841a068e4962a3c94421041a510088a281a406b50440eabd6a34045ab68a9ad0494a3110978e05d010f44a0801444111110840808210a7244c070e69feff49ffdb16637ccee4cf63b3bf39ac72366778eeff1fc2ebe33c7cec414974cc284000208208000021115a814d1daa80c010410400001040c0102980f020208208000021a0408600de8548900020820800001cc67000104104000010d0204b00674aa4400010410408000e6338000020820808006010258033a552280000208204000f31940000104104040830001ac019d2a1140000104102080f90c208000020820a0418000d6804e9508208000020810c07c06104000010410d02040006b40a74a04104000010408603e030820800002086810208035a0532502082080000204309f01041040000104340810c01ad0a9120104104000010298cf000208208000021a0408600de8548900020820800001cc67000104104000010d0204b00674aa4400010410408000e6338000020820808006010258033a552280000208204000f31940000104104040830001ac019d2a1140000104102080f90c208000020820a0418000d6804e9508208000020810c07c06104000010410d02040006b40a74a04104000010408603e030820800002086810208035a0532502082080000204309f01041040000104340810c01ad0a9120104104000010298cf000208208000021a0408600de8548900020820800001cc67000104104000010d0204b00674aa4400010410408000e6338000020820808006010258033a552280000208204000f31940000104104040830001ac019d2a1140000104102080f90c208000020820a0418000d6804e9508208000020810c07c06104000010410d02040006b40a74a04104000010408603e030820800002086810208035a0532502082080000204309f01041040000104340810c01ad0a9120104104000010298cf000208208000021a0408600de8548900020820800001cc67000104104000010d0204b00674aa4400010410408000e6338000020820808006010258033a552280000208204000f31940000104104040830001ac019d2a114000010410a8e22582d75f7f5d4e9e3ce9a52ed35704104000817204ead6ad2b696969e5ac51718b628a4ba68a2bde3925bff1c61b3271e244c9cccc744ea3680902082080805681679f7d56e6cc9923ad5bb78e783b3cb307acf67c6fbdf556c9caca8a3832152280000208385360cb962d72faf4692d8de31cb016762a4500010410f0ba0001ecf54f00fd4700010410d02240006b61a7520410400001af0b10c05eff04d07f04104000012d0204b016762a4500010410f0ba0001ecf54f00fd4700010410d02240006b61a7520410400001af0b78e67bc05e1f68aff4ffd4a953b261c30651bf535353253636d62b5da79f08201065020470940d18cd0d2e70f8f061193972a4c4c7c71b013c7bf66cd9b66d9b24272707df88250820808026010258133cd5da2ff0dbdffe567af5ea254f3ef9a45178dbb66d8d409e3973a654ad5ad5fe0a2911010410b020c039600b786cea1c81fcfc7c69d6ac992f7c55cb6ebffd76494a4a1275ab3926041040c0690204b0d34684f68425a0cef5c6c4c494d976efdebd9c072ea3c20c041070820001ec8451a00d9605ead4a923975c72893cf1c413be1babab076fecd9b3479a366d6ab97c0a40000104ec162080ed16a53c6d0263c68c918d1b371acff6ecddbbb771f879d1a245dada43c50820804079025c84559e0ecba24a405d68959b9b1b556da6b10820e05d01f680bd3bf6f41c0104104040a30001ac119faa1140000104bc2b40007b77ece939020820808046010258233e55238000020878578000f6eed8d37304104000018d0204b0467caa4600010410f0ae0001ecddb1a7e708208000021a0508608df8548d00020820e05d0102d8bb634fcf1140000104340a10c01af1a91a01041040c0bb0204b077c79e9e23800002086814208035e25335020820808077050860ef8e3d3d4700010410d02840006bc4a76a0410400001ef0a10c0de1d7b7a8e00020820a051c011cf039e3871a29c3871222843f3e6cd253d3d3de8f2d2057bf6ec911f7ef8a1f4addfefafbffe5a626262fce6f1060104104000015d028e08e0eddbb74b7676b66466664a424242198be4e4e432f302cdf8ecb3cfe4a38f3e0ab448962e5d2ab56bd70eb88c99082080000208445ac011013c69d224397dfab4f13379f2e4b00d7af6ec29ea27d0346ad42829282808b48879082080000208445cc031e780274c982085858572f8f0e188235021020820800002911670c41eb0ea746262a2cc993327d2fda73e041040000104b40838660f584befa9140104104000014d0204b02678aa4500010410f0b60001ecedf1a7f708208000029a0408604df0548b00020820e06d0102d8dbe34fef1140000104340910c09ae0a91601041040c0db0204b0b7c79fde23800002086812208035c1532d0208208080b70508606f8f3fbd4700010410d02440006b82a75a04104000016f0b10c0de1e7f7a8f00020820a0498000d6044fb50820800002de162080bd3dfef41e0104104040930001ac099e6a1140000104bc2d40007b7bfce93d020820808026010258133cd52280000208785b8000f6f6f8d37b04104000014d0204b02678aa4500010410f0b60001ecedf1a7f708208000029a0408604df0548b00020820e06d0102d8dbe34fef1140000104340910c09ae0a91601041040c0db0204b0b7c79fde23800002086812208035c1532d0208208080b70508606f8f3fbd4700010410d02440006b82a75a04104000016f0b10c0de1e7f7a8f00020820a0498000d6044fb50820800002de162080bd3dfef41e0104104040930001ac099e6a1140000104bc2d40007b7bfce93d020820808026010258133cd52280000208785b8000f6f6f8d37b04104000014d0204b02678aa4500010410f0b60001ecedf1a7f708208000029a0408604df0548b00020820e06d0102d8dbe34fef1140000104340910c09ae0a91601041040c0db0204b0b7c79fde23800002086812208035c1532d0208208080b70508606f8f3fbd4700010410d02440006b82a75a04104000016f0b10c0de1e7f7a8f00020820a0498000d6044fb50820800002de162080bd3dfef41e0104104040930001ac099e6a1140000104bc2d40007b7bfce93d020820808026010258133cd52280000208785b8000f6f6f8d37b04104000014d0204b02678aa4500010410f0b60001ecedf1a7f708208000029a0408604df0548b00020820e06d0102d8dbe34fef1140000104340910c09ae0a91601041040c0db0204b0b7c79fde23800002086812208035c1532d0208208080b70508606f8f3fbd4700010410d02440006b82a75a04104000016f0b10c0de1e7f7a8f00020820a0498000d6044fb50820800002de162080bd3dfef41e0104104040930001ac099e6a1140000104bc2d40007b7bfce93d020820808026010258133cd52280000208785b8000f6f6f8d37b04104000014d025534d54bb5082080802305de7fff7df9f4d34f25212141fef0873f4852529223db49a3a25f803de0e81f437a80000236098c1b374e264d9a24eddab5934a952a49f5ead565f7eedd36954e3108f80bb007ecefc13b0410f0a880daeb7de9a59764e3c68d52a54a15b9f6da6be5fcf3cf97c71f7f5ca64c99e25115ba5d9102ec0157a42e65238040d408ecdcb953468e1c69846f69a37bf6ec29dbb76f2f7dcb6f046c1520806de5a43004108856819a356bcadab56bfd9abf61c3063979f2a4df3cde20609700016c9724e5208040540b74edda558a8a8a8cf3bfebd7af97f7de7b4f468c1821d9d9d951dd2f1aef5c01ce013b776c681902084458203737577272728cd04d4c4c94e9d3a74bb366cd22dc0aaaf38a0001ec9591a69f0820604a60c89021a27e9810a868010e4157b430e5238000020820104080000e80c22c0410400001042a5ac07101acae383c70e04045f79bf2114000010410d02ae088003e7efcb83cf4d043d2b06143898d8d955ab56a19b781bbe4924be485175ed00a44e508b84960debc79d2a3470fe9ddbbb7b46cd952366fdeeca6eed11704a24ac01117610d1f3e5c0a0a0a64fefcf9d2b87163237c0b0b0b8d3bd2a82fc6abaf06dc79e79d6785fdfefbef65efdebd01d7dbb76f9f1c3b762ce0326622e00501f5d51a759bc59933674a4a4a8aac5bb7cef877a5aefcad5fbfbe1708e823028e127044007ff8e187b272e54af9d5af7ee5c3a951a38674e8d041fef9cf7fcad8b1634d05f0aa55ab64e1c285be32ce7ca1fee753bb76ed3367f11a014f09cc983143c68f1f6f84afea78ab56ad24333353de7efb6d19366c98a72ce82c024e10704400ab43cd8b172f9601030694315187cc929393cbcc0f34a357af5ea27e024da3468d32f6b2032d631e025e10387af4a854ab56cdafabea493feae810130208445ec01101fce8a38fca4d37dd24cf3cf38c5c78e185c613480e1d3a249b366d326e03b760c182c8cb5023022e13484b4b33ee75ac8e38a927fda88b1d33323264cd9a352eeb29dd41203a041c11c06ddab431eec1aa0e43ab1b9fabf3c16aaf579df7edd4a993c4c4c4448726ad44c0c102ea08d3e79f7f2ead5bb7362ec2faf2cb2fe59d77de316ebde8e066d334045c2be0880056ba717171d2a54b17d742d331049c20f0f4d34fcba04183e4e0c183929595250d1a347042b36803029e14704c007b529f4e23a0412035355543ad54890002bf1470c4f7807fd928de238000020820e0760102d8ed234cff10400001041c2940003b725868140208208080db050860b78f30fd430001041070a40001ecc861a15108208000026e172080dd3ec2f40f01041040c0910204b0238785462180000208b85d800076fb08d33f0410400001470a10c08e1c161a8500020820e0760102d8ed234cff10400001041c2940003b725868140208208080db050860b78f30fd430001041070a40001ecc861a15108208000026e172080dd3ec2f40f01041040c0910204b0238785462180000208b85d800076fb08d33f0410400001470a10c08e1c161a8500020820e0760102d8ed234cff10400001041c2940003b725868140208208080db050860b78f30fd430001041070a40001ecc861a15108208000026e172080dd3ec2f40f01041040c0910204b0238785462180000208b85d800076fb08d33f0410400001470a10c08e1c161a8500020820e0760102d8ed234cff10400001041c2940003b725868140208208080db05aa04ebe0f1e3c765eddab5b261c306c9cbcb93264d9a48bb76ede4a28b2e922a55826e16ac38e623800002082080c0190265f6808b8b8be5e5975f96d4d45419356a947cfcf1c7f2f3cf3fcb82050be4e69b6f96060d1ac8c4891345053413020820800002088427e0b72b5b545424191919d2ad5b3759b972a5d4a953a74ca9070e1c902953a6485a5a9acc9d3b57ead5ab57661d662080000208208040f9027e01ac0e2dbff2ca2b9294941474ab73cf3d571e7ef861193d7ab49c3e7d3ae87a2c4000010410400081e0026502b8bcf03db398f8f8f833dff21a01041040000104421028730e38846d591501041040000104c214f0db035665a80bac4e9c3811b4b8e6cd9b4b7a7a7ad0e52c4000010410400081b30b9409e0eddbb74b7676b66466664a4242429912929393cbcc6306020820800002088426502680274d9a645c5ca52eb09a3c797268a5b176850b1c3c7850b66edd2a356ad490a64d9b56787d54800002082050310201cf014f9830410a0b0be5f0e1c315532ba58625b066cd1ae3c8446e6eaef4efdf5f468c1821ea7bdb4c0820800002d12750660f587521313151e6cc99137dbd71718b77eedc29eddbb7974d9b36893a0faf82b76bd7ae92939323b7dd769b8b7b4ed710400001770a04dc03766757a3bb574b962c9169d3a619e1ab7a121313236a4ff8a38f3e8aee8ed17a041040c0a30265f680b90ada999f8473ce39477efae927bfc6a9db8156ae5cd96f1e6f1040000104a243a04c007315b433074eddfa53dd8bbb63c78ed2a64d1b3976ec988c193386af843973b868150208207056813201cc55d06735d3b282fafad7f3cf3f6fdca75b3d956afffefd3260c000e9d7af9f96f65029020820808035813201ac8a535741676565195741ab0bb2989c21d0b87163e322ac7dfbf619dfd1565f45624200010410884e818001cc55d0ce1dccd8d8589e40e5dce1a165082080806901bfaba0d5737f172f5e6c6ae365cb96c99e3d7b4cadcb4a08208000020820e02fe017c06aef6a49c9d75dfaf4e9232fbffcb21c3a74c86fed5dbb76c91b6fbc219d3a7532969b7d72925f21bc4100010410400001f13b04adbed2f297bffc45f2f3f365ecd8b1327cf870e3b694e79d779ea8f0ad59b3a674e8d0c1b845658b162de043000104104000813005fc02b8b48c7af5eac9f4e9d38d9f828202c9cbcb93264d9a48ddba754b57e1370208208000020858100818c0a5e59d3a75cad81b56775ddab66d9bf153bb766d69d6ac59e92afc460001041040008130048206f08a152b24232343d479deb8b8385fd1575f7db5f1cc60df0c5e2080000208208040c802410358dd67f8c9279f94418306855c281b2080000208208040f9027e57419fb9eaaf7ffd6b3970e0c099b3788d00020820800002360904dd03bef7de7b8d7b0e2f5cb8505253537dd5b56ad54a060e1ce87bcf0b04104000010410085d2068004f9e3c598a8a8ae437bff98ddf39e0aa55ab865e0b5b20800002082080809f40d000fee28b2fe46f7ffb9b71530ebf2d7883000208208000029605829e03eed5ab97cc9f3fdfb81187e55a280001041040000104fc048206f0debd7b65eedcb9a21eccd0b4695369debcb9f13372e448bf02788300020820800002a10b043d04ddb56b5759b4685199126bd5aa55661e3310400001041040203481a0013c65ca1451f780fed39ffe145a89ac8d000208208000026715087a085a7d0f78fdfaf5a26e47c98400020820800002f60a04dd038e8f8f9779f3e649f5ead5a561c386a29e94a4a6eeddbbcbdffffe777b5b4169082080000208784c206800f7e8d143d44d377e39a987313021808039819d3b774a4e4e8e1c3d7ad47894a77ad63613020820a0048206b03a04ad7e7efcf147e359c0ea4ae86ad5aaa18600022605befdf65bc9cccc94bbefbe5bd4233efbf7ef2f6bd6ac91c71f7fdc6409ac8600026e16087a0e589dfb1d3c78b0d4a95347d2d2d28ca722a9a7231d3b76cccd1ef40d01db04860e1d2a4f3ffdb4dc70c30d72c51557c877df7d273b76ec9055ab56d9560705218040f40a040de0a953a7cad6ad5b65e3c68dc65ef037df7c23c5c5c53261c284e8ed2d2d47208202a74f9f964b2fbdd45763a54a95e4b2cb2e933d7bf6f8e6f1020104bc2b103480fffbdfffca7df7dd27175d7491a1d3b871631933668c2c5dbad4bb5af41c811004ead7af2fcb972ff76da1fe80fdd7bffe25292929be79bc400001ef0a040de08e1d3bcab265cbfc64d4fbe4e464bf79bc410081c002ea3bf49d3b77963973e6c88a152b8cfbaa77e9d2c5d80b0ebc05731140c04b02412fc2bafefaeba5458b16c61eaf3a7ff5d9679f897a40037bc05efa78d0572b02eaf6ad3ffcf083a8278ba97f3bb7dc728ba8eb28981040000125103480d5d78dd48d38d45fef79797972dd75d7c9ecd9b38def0443870002e604d411a371e3c6995b99b51040c0530241035829a810bee79e7b3c054267114000010410888440d0003e78f0a0dc75d75dc65ef0f1e3c77d6db9e69a6be41ffff887ef3d2f10400001041040207481a001fcd4534fc9a14387e4d9679f351e49585a344f432a95e037020820800002e10b040de0ddbb771b7bc0eaaa4d2604104000010410b057206800f7eddb57727373a57dfbf652b76e5d7b6bfd456913274e9413274efc62eeffbd555793a6a7a7ffdf0c5e21800002082010e5024103383f3f5f162c5820afbdf69aa89b70943e0d493da4c1ee73c0dbb76f97ecec6ce3beb90909096548f9ee71191266208000020844b940d000beeaaaab64d1a24565ba5711e780274d9a24eab67dea477d6732dc69efdebdb26fdfbe809bab874a9c793159c095988900020820804084048206f0942953e4bcf3ce1375379f484cea1ed359595972f8f061bf8bbe42a95bdd6de8c30f3f0cb8c9ba75eb8c074b045cc84c041040000104222c103480d5a3083ffdf453514f452a3dfc5c916d4b4c4c346efa61a50e759e38d8b9e251a3464941418195e2d916010410400001db0482de0b3a3e3e5ee6cd9b27d5ab57177511546a6aaaf1337af468db2a2fafa03beeb8430a0b0bcb5b856508208000020844ad40d03d6075b155ab56adca744cdd1d2b12d3ac59b3e4b1c71e33fe0088447dd48100020820804024058206b03a04ad7e9810400001041040c07e81a087a0edaf2ab412333333252e2e2eb48d581b010410400081281108ba07acbbfd53a74ed5dd04ea470001041040a0c2041cbb075c613da6600410400001041c2040003b601068020208208080f7040860ef8d393d460001041070800001ec8041a0090820800002de132080bd37e6f41801041040c0010204b0030681262080000208784f8000f6de98d3630410400001070810c00e18049a8000020820e03d01c7de88c37b43418f11400081b20273e6cc91850b174ad5aa55a57ffffea29ed5cee40e0102d81de3a8a517c78e1d13f51ce7e5cb97cb89132764e0c08172db6db769690b9522e04681071f7c50962d5b262fbef8a2a87f6fe3c68d331eabaafead3145bf00011cfd63a8ad07ddbb77371e55f9ce3befc8d1a347453daa523d3b7ad0a041dada44c508b84560ebd6adc62361d7ad5b27952afdef6ce18c1933242323437af7ee2d4949496ee9aa67fbc13960cf0ebdb58eaf5ebd5a6ad6ac29cf3fffbca86747abc754aad7b9b9b9d60a666b041030040e1d3a24ddba75f385af9aa99ecf5eab562d3972e4084a2e1020805d30883abaa0f678535353fdaa56415c5c5cec378f370820109ec005175c20dbb66d931d3b76f80ad8b06183ac59b3c60861df4c5e44ad00011cb543a7b7e12d5bb6942fbef842befaea2b5f43de7aeb2d397efcb8ef3d2f1040207c017554e9befbee1315c4b367cf969c9c1c1931628471583a363636fc82d9d231029c0376cc50445743d461b0f1e3c74b8b162d8c0bb1d4e1b2cd9b37cbfcf9f3a3ab23b41601070b5c71c515b265cb1659bc78b1a8d09d356b96d4ab57cfc12da669a10810c0a168b1ae9f40dbb66d253f3f5f56ad5a25717171f2c8238f18e783fd56e20d0208581268dab4a9a81f26f70910c0ee1bd388f628252545d2d3d3235a2795218000026e10e01cb01b46913e2080000208449d007bc05137643418010410d02770e0c001f9e0830fa4a8a848d439ea264d9ae86b4c94d7cc1e70940f20cd470001042225b06bd72e193060807137ae93274f1ae7a657ac5811a9ea5d570f7bc0ae1b523a84000208548cc075d75d2793274f36f67c550deabed4f7dc738fa83b74d5ad5bb7622a7571a9ec01bb7870e91a02082060a74083060d7ce1abca55df51bef8e28b8daf20da598f57ca2280bd32d2f413010410b028a01e08515858e8578a3a04cd7da9fd484cbf21804d53b122020820e06d81214386184f3ccbcbcb933d7bf648dfbe7da551a346d2ba756b6fc384d97bce018709c76608208080d7046ebae926a951a3863cf4d04372ead429e31c70565696d7186ceb2f016c1b250521800002ee17501762a91f26eb021c82b66e4809082080000208842c4000874cc60608208000020858172080ad1b5202020820800002210b10c02193b101020820800002d6050860eb869480000208208040c8020470c8646c80000208208080750102d8ba212520800002082010b200011c32191b208000020820605d8000b66e4809082080000208842c4000874cc60608208000020858172080ad1b5202020820800002210b10c02193b101020820800002d6050860eb869480000208208040c8020470c8646c80000208208080750102d8ba212520800002082010b200011c32191b208000020820605d8000b66e4809082080000208842c4000874cc60608208000020858172080ad1b5202020820800002210b10c02193b101020820800002d6050860eb869480000208208040c8020470c8646c80000208208080750102d8ba212520800002082010b200011c32191b208000020820605d8000b66e4809082080000208842c4000874cc60608208000020858172080ad1b5202020820800002210b10c02193b101020820800002d6050860eb869480000208208040c8020470c8646c80000208208080750102d8ba212520800002082010b200011c32191b208000020820605d8000b66e4809082080000208842c4000874cc60608208000020858172080ad1b5202020820800002210b10c02193b101020820800002d6050860eb869480000208208040c8020470c8646c80000208208080750102d8ba212520800002082010b200011c32191b208000020820605da08af52228010104104000013d02df7df79d4c9b364d7efae92769dbb6addc7aebad7a1a1246adec018781c6260820800002fa050a0a0a64c08001d2a2450bb9f9e69b253b3bdbf8adbf65e65a40009b73622d041040000187098c1a354ac68f1f2f37dc7083b46fdf5e56af5e2d090909f2c1071f38aca5819b43000776612e0208208080c3058e1f3f2e6ddab4f16b65c78e1de5871f7ef09be7d4378e0fe053a74ec9b163c79cea47bb104000010434093468d040162d5ae457fb73cf3d276a7e344c8e086075125d9d384f4c4c946eddbac9d6ad5b7d76afbdf69adc72cb2dbef7bc4000010410404009dc7ffffdd2af5f3f993469922c59b2c4381fdcba756be9d2a54b54003922809f79e61949494991356bd648870e1da453a74eb265cb96a800a49108208000027a04ead7af2f85858572f8f06159b870a1646464c8d4a953f534268c5a1df135a4050b16c8dab56b253e3e5e1e7df451b9f8e28ba57bf7eeb27cf9f230bac42608208000025e11484a4a92071f7c302abbeb88005681abf67eafbcf24a03f1c61b6f94fcfc7cb9e69a6b242b2bcb34ec8f3ffe28fbf7ef0fb8fe810307449db067420001041040c009028e08e0a14387caf5d75f2fea92f2071e78c070193d7ab4f1c56a352f3d3ddd94d5d2a54be5fdf7df0fb8ee860d1be4820b2e08b88c99082080000208445ac011017cf5d557cbb66ddb242f2fcfafff63c78e95dffdee77c632bf0541def4eddb57d44fa0e9d5575f15b517cc8400020820808013041c71119682505f9e567733299deeb8e30ee3e47ae7ce9de5b6db6e2b9dcd6f0410400001045c21e09800fea5e6ac59b3a4a8a8e897b3798f0002082080802b041c1bc0aed0a5130820800002080411706c006766664a5c5c5c9066331b010410400081e81670c445588108a3e9cbd481dacf3c041040000104ca1370ec1e70798d6619020820800002d12e400047fb08d27e0410400081a8142080a372d868340208208040b40b10c0d13e82b41f01041040202a0508e0a81c361a8d0002082010ed020470b48f20ed4700010410884a01c77e0dc9099adf7efbad3cf5d453b27bf76ea95cb9b2f1d0e7060d1a38a169b4010104104020ca0508e02003a81edcd0b87163993f7fbef14088cf3fff5c060c18202fbdf492346cd830c856cc460001041040c09c0087a083384d9a3449a64f9f2ed75e7badf1a008f5ace2e1c387cb8c1933826cc16c041040000104cc0b10c041ac8e1c3922cd9a35f35b7afef9e71bcf28f69bc91b041040000104c210208083a0b56fdf5eb2b3b3a5b8b8d8b7867a2ca29acf84000208208080550102388860bf7efda476edda72d96597c9b469d364f0e0c1c6b960751e9809010410400001ab025c84558ee073cf3d27cb962d93fcfc7c514f67eadcb973396bb308010410400001f30204f059acd4c5574c082080000208d82dc02168bb45290f010410400001130204b0092456410001041040c06e0102d86e51ca430001041040c08400016c028955104000010410b05b8000b65b94f2104000010410302140009b406215041040000104ec162080ed16a53c0410400001044c0810c026905805010410400001bb050860bb45290f010410400001130204b0092456410001041040c06e0102d86e51ca430001041040c08400016c028955104000010410b05b8000b65b94f2104000010410302140009b406215041040000104ec162080ed16a53c0410400001044c0810c026905805010410400001bb050860bb45290f010410400001130204b0092456410001041040c06e0102d86e51ca430001041040c08400016c028955104000010410b05b8000b65b94f2104000010410302140009b406215041040000104ec162080ed16a53c0410400001044c0810c026905805010410400001bb050860bb45290f010410400001130204b0092456410001041040c06e0102d86e51ca430001041040c08400016c028955104000010410b05b8000b65b94f2104000010410302140009b406215041040000104ec162080ed16a53c0410400001044c085431b10eab208000021526f0f1c71fcbf6eddba556ad5a929e9e5e61f55030024e13600fd86923427b10f090c0bdf7de2b393939121b1b2b3367ce942e5dbac88913273c244057bd2c40007b79f4e93b021a05de7df75d99376f9ee4e6e6cac08103e5edb7df96162d5ac8f4e9d335b68aaa11889c00011c396b6a4200813304d6af5f2fcf3cf38cc4c4c4f8e60e1d3a54d6ae5deb7bcf0b04dc2c4000bb7974e91b020e16484848906fbef9c6af855f7df595d4a851c36f1e6f1070ab001761b97564e917020e1718346890646464484a4a8aa4a5a5c9679f7d26fdfbf7977dfbf639bce5340f017b0408607b1c290501044214507bba6fbdf596dc77df7df2faebaf4bcd9a3565f3e6cd52bb76ed104b627504a25380008ece71a3d508b842202929499e7ffe7957f4854e2010aa00e7804315637d0410400001046c1020806d40a408041040000104421520804315637d0410400001046c1020806d40a408041040000104421520804315637d0410400001046c1020806d40a408041040000104421520804315637d0410400001046c1020806d40a408041040000104421588292e9942dd281ad7ffe28b2fe4baebae93366dda4463f3fddabc7cf972a954a992df4decfd56f0f81bf5383bf5b1568fb8630a2c70e4c81151f762660a2cf0f3cf3fcb39e79c63fc3b0bbc86b7e79e3c7952aa57af2ead5ab58a7a88bcbc3c59b870a1d4af5f3fe27df14c00475cb6022becd3a78fbcf0c20bc6adfb2ab09aa82d5addd6f0fbefbf9761c386456d1f2abae19d3b7796254b96547435515bfe902143e4cf7ffeb3346ad4286afb50910d5fb46891ac5cb9521e79e4918aacc6f5657308daf5434c0711400001049c2840003b715468130208208080eb050860d70f311d440001041070a20001ecc451a14d0820800002ae1720805d3fc4741001041040c0890204b0134785362180000208b85e80af2145e110abafd8242727f31dc52063a7bee37aead429e37b8a4156f1fcec3d7bf6484a4a8ae71d8201ecddbb57ce3df75ca952a54ab0553c3dbfa8a848d44fcd9a353ded60b5f304b05541b6470001041040200c010e418781c62608208000020858152080ad0ab23d020820800002610810c061a0b10902082080000256050860ab826c8f0002082080401802047018686c82000208208080550102d8aa20db238000020820108600011c061a9b20800002082060558000b62ac8f60820808047044e9c38e1919e46a69b0470649c6da965e3c68d3260c00069d5aa9574edda555e7df5555bca75632177dc7187646565b9b16b96fab46ad52ab9f4d24b253535557af6ec299b366db2549edb36deb56b97dc72cb2dd2ba756bb9e69a6b64e9d2a56eeb62d8fd79f9e597a543870e7edb2f59b244aeb8e20a69d4a891f4e9d3470e1c38e0b79c37671128668a1a816eddba15bff8e28b467b77efde5d5cb76edde2828282a8697fa41a3a6fdebce25ab56a15978470a4aa8c8a7a4a6e1d58dcb871e3e2952b571aed2df91f6a7146464654b43d528dbcfdf6db8bfffad7bf1ad57dfae9a78657c95e5fa4aa77643dfbf7ef2f1e366c5871c9ed6f8bdbb66deb6b63c9ed3a8b4b6e675abc6eddbae2e3c78f178f1a35aa78f0e0c1bee5bc38bb007bc067f903c5298b4f9f3e2d77dd7597b107acda54af5e3d494a4a92cf3fffdc294d74443b7efcf14779ecb1c764f8f0e18e688f931ab160c10269d2a4895c7ef9e572e8d021b9f1c61be5f5d75f775213b5b745dd033a3636d66887faf755f207ae715f71ed0dd3d880458b1649b56ad5a4e48f7fbf56ac59b3462ebae82269d9b2a554ad5ad5f837f7e69b6ffaadc39bf20508e0f27d1cb3b452a54a929e9e6e7cd055a3d43f0a75b8e79787841cd3604d0db9f3ce3b65dcb871929898a8a905cead76c78e1d527264403a75ea643ccce3c20b2f940d1b3638b7c11a5aa6fe789b3e7dbaf4ebd74f4a8e38c9942953e49c73ced1d012e754a92c9e7aea29898f8ff76bd4ce9d3bfd1ee871de79e7197fd81d3b76cc6f3dde0417208083db3876c9962d5b8cf354d9d9d93c8de48c517ae9a5978cff4974efdefd8cb9bc2c15507b7773e7ce95a143878a3a52d0a3470f99306142e9627e9708ac58b1424a0e1c1a7b76f5ebd717758ef3e4c993d80410509fa1848404df92d2803e7af4a86f1e2fca172080cbf771dcd2afbffe5a3a77ee2c63c68cf11d8e765c23353448fdcf60e4c8919296962625e7808d8b8bd41e5fc9f94e0dad716695ead171eae2ab9b6ebac9387df1c0030fc8bffffd6f29397fe7cc0647b8552a68efbfff7e79e5955764fcf8f146187ff8e187b27cf9f208b7243aaaab53a78e141616fa1afbd34f3f495c5c9cf11847df4c5e942bc0c32ecbe571d6c2bcbc3cb9eaaaabe4e1871f36f6629cd53abdad3978f0a0717e73ead4a94643f2f3f38de795e6e6e67298feff0f4d83060d8ce02d1d2975deeee79f7f16757d019318a774d473a4d5b70cd4a44efbb46bd74ebefdf65be38f5e8cfc05d4e769fbf6edbe99ea75c3860d7def79717601f680cf6ee49835d4d7236ebef96663cfb7e4ca44513fecbdfc6f78d4f9cc4f3ef9c4f773f7dd774befdebd8d73788e1940cd0d515f3bdabc79b3ac5ebdda68494e4e8e714196da6b6112e3bcb8baa6e2b5d75e333854f0aabd5f75ed0553590175b449ed14a8eb51d479df8913274ac955f56557644e5001f68083d2386b41c957227ce1a22e88289d66ce9c29999999a56ff98d4050017555af0a5df587893a7757a54a1579efbdf782aeefc505255f41322ee253bfd5f4f4d34f734835c807415d9ca6ae43517fa0d4a851439a356b2693274f0eb236b30309c4a86f2a055ac03c041070a780fa27bf6fdf3e638fcf9d3db4de2b756eb37af5ead60bf24009eadcb93aff7beeb9e77aa0b7f6769100b6d793d21040000104103025c03960534cac84000208208080bd0204b0bd9e9486000208208080290102d814132b21800002082060af00016caf27a5218000020820604a800036c5c44a082080000208d82b4000dbeb4969082080000208981220804d31b112020820800002f60a10c0f67a521a020820800002a6040860534cac84000208208080bd0204b0bd9e9486000208208080290102d814132b21800002082060af00016caf27a5218000020820604a800036c5c44a082080000208d82b4000dbeb4969082080000208981220804d31b112020820800002f60a10c0f67a521a020820800002a6040860534cac84000208208080bd0204b0bd9e9486000208208080290102d814132b21e04c81d5ab574b9d3a75426edcf0e1c3e589279e08793b36400001fb040860fb2c2909010410400001d30204b0692a5644c0d902ebd7af97cccc4c19316284d4ae5d5b5ab76e2d5f7ef9a5d1e8e2e262193d7ab4a4a4a4c895575e29bb76edf27566efdebdd2b76f5fa959b3a6b46ad54afef39fff18cba64d9b26bd7bf716b5ad9a6ebcf146993e7dbaf19aff208080750102d8ba212520e00881a2a222993d7bb6d4aa554bbefaea2be9d0a1833cf4d04346dba64c996204ebe2c58b65d8b061b260c1025f9b870c1922356ad490afbffe5a468e1c2983070f3696dd7aebadb269d326c9cdcd959933671a65aa80674200017b04aad8530ca52080801304aa57af2e63c78e359aa2f65855d8aae9cd37df9441830649f3e6cd8d9f679f7dd698bf7fff7e238c556057ab564d323232242727c7d8736ed9b2a54c9d3a55060e1c28274f9e9479f3e6496c6cacb11dff410001eb0204b075434a40c0310275ebd6f5b5252121c1084e3563dbb66dd2ae5d3bdfb2cb2fbfdc78ad0e45c7c4c4485a5a9a6f997af1c9279f880ae02e5dba1887ade3e2e2a47dfbf67eebf0060104ac0910c0d6fcd81a014709a8300d349d7ffef9b271e346e3b0b45a9e979727c9c9c9c6deb03afcacce1f975e4dadce09ab796a7af7dd77e5e0c18372faf469e3f5ef7fff7b633eff410001eb029c03b66e480908385ea06bd7ae3277ee5c3972e488ecd8b1c377a1953aa4ac964d9e3cd908d9828202b9f8e28b8df3c185858572d75d77497676b6a843d6eab59ac7840002f60810c0f638520a028e16501763c5c7c74bd3a64d8dbde0cb2ebbccd7de071f7c50e6cc99238d1a35928e1d3bca1ffff847e3f0f3030f3c20ea50758f1e3da467cf9ec6216c358f090104ec118829f98ac1ffbe63604f79948200020e163874e8902426264ae5ca95cbb4521d7a5687a1831dc62eb301331040c09200016c898f8d114000010410084f8043d0e1b9b115020820800002960408604b7c6c8c00020820804078020470786e6c85000208208080250102d8121f1b238000020820109e00011c9e1b5b21800002082060498000b6c4c7c60820800002088427400087e7c656082080000208581220802df1b131020820800002e10910c0e1b9b115020820800002960408604b7c6c8c00020820804078020470786e6c85000208208080250102d8121f1b238000020820109e00011c9e1b5b21800002082060498000b6c4c7c60820800002088427400087e7c656082080000208581220802df1b131020820800002e109fc3fc24a541ca811c9cc0000000049454e44ae426082
\.
