; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [352 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [698 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 254
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 288
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 6: Newtonsoft.Json.dll => 0x254c520 => 205
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 57725457, ; 9: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 300
	i32 57727992, ; 10: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 301
	i32 66028056, ; 11: CapaDAL => 0x3ef8218 => 344
	i32 66541672, ; 12: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 13: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 342
	i32 68219467, ; 14: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 15: Microsoft.Maui.Graphics.dll => 0x44bb714 => 203
	i32 82292897, ; 16: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 17: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 272
	i32 117431740, ; 18: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 19: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 272
	i32 122350210, ; 20: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 21: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 292
	i32 139659294, ; 22: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 301
	i32 142721839, ; 23: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 24: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 25: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 26: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 228
	i32 166535111, ; 27: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 305
	i32 176265551, ; 28: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 29: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 274
	i32 184328833, ; 30: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 31: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 339
	i32 199333315, ; 32: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 340
	i32 205061960, ; 33: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 34: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 226
	i32 220171995, ; 35: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 36: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 248
	i32 230752869, ; 37: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 38: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 39: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 40: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 41: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 231
	i32 264223668, ; 42: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 307
	i32 276479776, ; 43: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 44: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 250
	i32 280482487, ; 45: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 247
	i32 280992041, ; 46: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 311
	i32 291076382, ; 47: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 48: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 49: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 339
	i32 318968648, ; 50: Xamarin.AndroidX.Activity.dll => 0x13031348 => 217
	i32 321597661, ; 51: System.Numerics => 0x132b30dd => 83
	i32 330147069, ; 52: Microsoft.SqlServer.Server => 0x13ada4fd => 204
	i32 336156722, ; 53: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 324
	i32 342366114, ; 54: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 249
	i32 356389973, ; 55: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 323
	i32 360082299, ; 56: System.ServiceModel.Web => 0x15766b7b => 131
	i32 360671332, ; 57: pl\Microsoft.Data.SqlClient.resources => 0x157f6864 => 303
	i32 367780167, ; 58: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 59: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 60: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 61: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 62: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 63: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 64: _Microsoft.Android.Resource.Designer => 0x17969339 => 348
	i32 403441872, ; 65: WindowsBase => 0x180c08d0 => 165
	i32 407321033, ; 66: tr/Microsoft.Data.SqlClient.resources.dll => 0x184739c9 => 306
	i32 435591531, ; 67: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 335
	i32 441335492, ; 68: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 232
	i32 442565967, ; 69: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 70: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 245
	i32 451504562, ; 71: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 72: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 73: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 74: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 75: System.dll => 0x1bff388e => 164
	i32 476646585, ; 76: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 247
	i32 485463106, ; 77: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 192
	i32 486930444, ; 78: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 260
	i32 498788369, ; 79: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 80: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 322
	i32 503918385, ; 81: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 316
	i32 513247710, ; 82: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 189
	i32 520770167, ; 83: CapaBL => 0x1f0a5277 => 343
	i32 526420162, ; 84: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 85: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 292
	i32 530272170, ; 86: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 87: Microsoft.Extensions.Logging => 0x20216150 => 185
	i32 540030774, ; 88: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 89: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 90: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 91: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 176
	i32 549171840, ; 92: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 93: Jsr305Binding => 0x213954e7 => 285
	i32 569601784, ; 94: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 283
	i32 577335427, ; 95: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 96: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 330
	i32 601371474, ; 97: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 98: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 99: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 100: Xamarin.AndroidX.CustomView => 0x2568904f => 237
	i32 627931235, ; 101: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 328
	i32 639843206, ; 102: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 243
	i32 643868501, ; 103: System.Net => 0x2660a755 => 81
	i32 662205335, ; 104: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 105: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 279
	i32 666292255, ; 106: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 224
	i32 672442732, ; 107: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 108: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 109: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 310
	i32 690569205, ; 110: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 111: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 294
	i32 693804605, ; 112: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 113: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 114: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 289
	i32 700358131, ; 115: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 702553234, ; 116: Services.dll => 0x29e01c92 => 347
	i32 706645707, ; 117: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 325
	i32 709152836, ; 118: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 211
	i32 709557578, ; 119: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 313
	i32 720511267, ; 120: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 293
	i32 722857257, ; 121: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 723796036, ; 122: System.ClientModel.dll => 0x2b244044 => 206
	i32 735137430, ; 123: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 124: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 125: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 214
	i32 759454413, ; 126: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 127: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 128: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 129: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 334
	i32 789151979, ; 130: Microsoft.Extensions.Options => 0x2f0980eb => 188
	i32 790371945, ; 131: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 238
	i32 804715423, ; 132: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 133: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 252
	i32 823281589, ; 134: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 135: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 136: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 137: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 138: Xamarin.AndroidX.Print => 0x3246f6cd => 265
	i32 873119928, ; 139: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 140: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 141: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 142: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 143: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 913563620, ; 144: CapaDAL.dll => 0x3673dfe4 => 344
	i32 926902833, ; 145: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 337
	i32 928116545, ; 146: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 288
	i32 952186615, ; 147: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 148: Newtonsoft.Json => 0x38f24a24 => 205
	i32 956575887, ; 149: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 293
	i32 966729478, ; 150: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 286
	i32 967690846, ; 151: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 249
	i32 975236339, ; 152: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 153: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 154: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 155: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 156: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 157: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 158: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 159: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 269
	i32 1019214401, ; 160: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 161: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 184
	i32 1029334545, ; 162: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 312
	i32 1031528504, ; 163: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 287
	i32 1035644815, ; 164: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 222
	i32 1036536393, ; 165: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 166: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1048439329, ; 167: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 297
	i32 1052210849, ; 168: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 256
	i32 1062017875, ; 169: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 191
	i32 1067306892, ; 170: GoogleGson => 0x3f9dcf8c => 175
	i32 1082857460, ; 171: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 172: Xamarin.Kotlin.StdLib => 0x409e66d8 => 290
	i32 1089913930, ; 173: System.Diagnostics.EventLog.dll => 0x40f6c44a => 208
	i32 1098259244, ; 174: System => 0x41761b2c => 164
	i32 1118262833, ; 175: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 325
	i32 1121599056, ; 176: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 255
	i32 1127624469, ; 177: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 187
	i32 1138436374, ; 178: Microsoft.Data.SqlClient.dll => 0x43db2916 => 178
	i32 1149092582, ; 179: Xamarin.AndroidX.Window => 0x447dc2e6 => 282
	i32 1168523401, ; 180: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 331
	i32 1170634674, ; 181: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 182: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 278
	i32 1178241025, ; 183: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 263
	i32 1181870847, ; 184: Microsoft.Bcl.Cryptography => 0x4671eaff => 177
	i32 1203215381, ; 185: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 329
	i32 1204270330, ; 186: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 224
	i32 1204575371, ; 187: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 180
	i32 1208641965, ; 188: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 189: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 190: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 327
	i32 1243150071, ; 191: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 283
	i32 1253011324, ; 192: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 193: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 311
	i32 1264511973, ; 194: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 273
	i32 1267360935, ; 195: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 277
	i32 1273260888, ; 196: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 229
	i32 1275534314, ; 197: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 294
	i32 1278448581, ; 198: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 221
	i32 1293217323, ; 199: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 240
	i32 1309188875, ; 200: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1315359775, ; 201: cs/Microsoft.Data.SqlClient.resources.dll => 0x4e66cc1f => 296
	i32 1322716291, ; 202: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 282
	i32 1324164729, ; 203: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 204: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 205: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 206: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 341
	i32 1376866003, ; 207: Xamarin.AndroidX.SavedState => 0x52114ed3 => 269
	i32 1379779777, ; 208: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 209: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 210: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 233
	i32 1408764838, ; 211: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 212: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 213: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 214: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 309
	i32 1434145427, ; 215: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 216: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 286
	i32 1439761251, ; 217: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 218: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 219: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 220: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 221: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 222: System.IdentityModel.Tokens.Jwt => 0x57137723 => 209
	i32 1461004990, ; 223: es\Microsoft.Maui.Controls.resources => 0x57152abe => 315
	i32 1461234159, ; 224: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 225: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 226: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 227: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 223
	i32 1469939953, ; 228: CapaBL.dll => 0x579d80f1 => 343
	i32 1470490898, ; 229: Microsoft.Extensions.Primitives => 0x57a5e912 => 189
	i32 1479771757, ; 230: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 231: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 232: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 233: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 270
	i32 1493001747, ; 234: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 319
	i32 1498168481, ; 235: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 193
	i32 1514721132, ; 236: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 314
	i32 1536373174, ; 237: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 238: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 239: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 240: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 241: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 334
	i32 1565862583, ; 242: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 243: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 244: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 245: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 246: Azure.Identity => 0x5e501131 => 174
	i32 1582372066, ; 247: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 239
	i32 1592978981, ; 248: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1596263029, ; 249: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 308
	i32 1597949149, ; 250: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 287
	i32 1601112923, ; 251: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 252: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 253: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 254: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 259
	i32 1622358360, ; 255: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 256: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 281
	i32 1628113371, ; 257: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 196
	i32 1635184631, ; 258: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 243
	i32 1636350590, ; 259: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 236
	i32 1639515021, ; 260: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 261: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 262: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1645479650, ; 263: CapaUI-Maui => 0x621406e2 => 0
	i32 1657153582, ; 264: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 265: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 275
	i32 1658251792, ; 266: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 284
	i32 1670060433, ; 267: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 231
	i32 1675553242, ; 268: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 269: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 270: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 271: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 272: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 273: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 274: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 291
	i32 1701541528, ; 275: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1705359571, ; 276: CapaENT => 0x65a5b8d3 => 345
	i32 1720223769, ; 277: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 252
	i32 1726116996, ; 278: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 279: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 280: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 227
	i32 1736233607, ; 281: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 332
	i32 1743415430, ; 282: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 310
	i32 1744735666, ; 283: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 284: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 285: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 286: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 287: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 288: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 289: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 274
	i32 1770582343, ; 290: Microsoft.Extensions.Logging.dll => 0x6988f147 => 185
	i32 1776026572, ; 291: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 292: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 293: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 294: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 326
	i32 1788241197, ; 295: Xamarin.AndroidX.Fragment => 0x6a96652d => 245
	i32 1793755602, ; 296: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 318
	i32 1794500907, ; 297: Microsoft.Identity.Client.dll => 0x6af5e92b => 190
	i32 1796167890, ; 298: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 176
	i32 1808609942, ; 299: Xamarin.AndroidX.Loader => 0x6bcd3296 => 259
	i32 1813058853, ; 300: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 290
	i32 1813201214, ; 301: Xamarin.Google.Android.Material => 0x6c13413e => 284
	i32 1818569960, ; 302: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 264
	i32 1818787751, ; 303: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 304: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 305: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 306: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 186
	i32 1842015223, ; 307: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 338
	i32 1847515442, ; 308: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 214
	i32 1853025655, ; 309: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 335
	i32 1858542181, ; 310: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 311: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 312: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 196
	i32 1875935024, ; 313: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 317
	i32 1879696579, ; 314: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 315: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 225
	i32 1888955245, ; 316: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 317: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 318: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 319: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 320: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 321: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 322: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 323: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 271
	i32 1968388702, ; 324: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 181
	i32 1983156543, ; 325: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 291
	i32 1983756059, ; 326: CapaENT.dll => 0x763db71b => 345
	i32 1985761444, ; 327: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 216
	i32 1986222447, ; 328: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 197
	i32 2003115576, ; 329: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 314
	i32 2011961780, ; 330: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 331: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 256
	i32 2025202353, ; 332: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 309
	i32 2031763787, ; 333: Xamarin.Android.Glide => 0x791a414b => 213
	i32 2040764568, ; 334: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 191
	i32 2045470958, ; 335: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 336: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 251
	i32 2060060697, ; 337: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 338: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 313
	i32 2070888862, ; 339: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 340: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 341: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 342: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 343: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 344: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 345: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 346: Microsoft.Maui => 0x80bd55ad => 201
	i32 2169148018, ; 347: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 321
	i32 2181898931, ; 348: Microsoft.Extensions.Options.dll => 0x820d22b3 => 188
	i32 2192057212, ; 349: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 186
	i32 2193016926, ; 350: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 351: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 295
	i32 2201231467, ; 352: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 353: it\Microsoft.Maui.Controls.resources => 0x839595db => 323
	i32 2217644978, ; 354: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 278
	i32 2222056684, ; 355: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2228745826, ; 356: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 304
	i32 2231958974, ; 357: DTO => 0x8508fdbe => 346
	i32 2244775296, ; 358: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 260
	i32 2252106437, ; 359: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2253551641, ; 360: Microsoft.IdentityModel.Protocols => 0x86527819 => 195
	i32 2256313426, ; 361: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 362: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 363: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 182
	i32 2267999099, ; 364: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 215
	i32 2270573516, ; 365: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 317
	i32 2279755925, ; 366: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 267
	i32 2280481699, ; 367: DTO.dll => 0x87ed63a3 => 346
	i32 2293034957, ; 368: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 369: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 370: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 371: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 327
	i32 2305521784, ; 372: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2309278602, ; 373: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 302
	i32 2315684594, ; 374: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 219
	i32 2320631194, ; 375: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 376: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 377: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 378: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 379: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 380: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 194
	i32 2371007202, ; 381: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 181
	i32 2378619854, ; 382: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 383: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2386993223, ; 384: CapaUI-Maui.dll => 0x8e46a047 => 0
	i32 2395872292, ; 385: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 322
	i32 2401565422, ; 386: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 387: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 242
	i32 2421380589, ; 388: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 389: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 229
	i32 2427813419, ; 390: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 319
	i32 2435356389, ; 391: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 392: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 393: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 394: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 395: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 396: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 232
	i32 2471841756, ; 397: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 398: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 399: Microsoft.Maui.Controls => 0x93dba8a1 => 199
	i32 2483903535, ; 400: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 401: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 402: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 403: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 404: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 254
	i32 2509217888, ; 405: System.Diagnostics.EventLog => 0x958fa060 => 208
	i32 2522472828, ; 406: Xamarin.Android.Glide.dll => 0x9659e17c => 213
	i32 2538310050, ; 407: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 408: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 320
	i32 2562349572, ; 409: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 410: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 411: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 255
	i32 2581819634, ; 412: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 277
	i32 2585220780, ; 413: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 414: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 415: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 416: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 329
	i32 2605712449, ; 417: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 295
	i32 2615233544, ; 418: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 246
	i32 2616218305, ; 419: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 187
	i32 2617129537, ; 420: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 421: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 422: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 236
	i32 2624644809, ; 423: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 241
	i32 2626831493, ; 424: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 324
	i32 2627185994, ; 425: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 426: System.Memory.Data => 0x9ca74fdc => 210
	i32 2629843544, ; 427: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 428: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 250
	i32 2640290731, ; 429: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 194
	i32 2640706905, ; 430: Azure.Core => 0x9d65fd59 => 173
	i32 2660759594, ; 431: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 212
	i32 2663391936, ; 432: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 215
	i32 2663698177, ; 433: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 434: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 435: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 436: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 437: Azure.Identity.dll => 0x9f9148fa => 174
	i32 2678266992, ; 438: tr\Microsoft.Data.SqlClient.resources => 0x9fa31c70 => 306
	i32 2686887180, ; 439: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 440: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 441: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 275
	i32 2715334215, ; 442: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 443: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 444: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 445: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 446: Xamarin.AndroidX.Activity => 0xa2e0939b => 217
	i32 2735172069, ; 447: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 448: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 223
	i32 2740051746, ; 449: Microsoft.Identity.Client => 0xa351df22 => 190
	i32 2740948882, ; 450: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 451: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 452: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 330
	i32 2755098380, ; 453: Microsoft.SqlServer.Server.dll => 0xa437770c => 204
	i32 2758225723, ; 454: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 200
	i32 2764765095, ; 455: Microsoft.Maui.dll => 0xa4caf7a7 => 201
	i32 2765824710, ; 456: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 457: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 289
	i32 2778768386, ; 458: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 280
	i32 2779977773, ; 459: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 268
	i32 2785988530, ; 460: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 336
	i32 2788224221, ; 461: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 246
	i32 2801831435, ; 462: Microsoft.Maui.Graphics => 0xa7008e0b => 203
	i32 2803228030, ; 463: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2804509662, ; 464: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 298
	i32 2806116107, ; 465: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 315
	i32 2810250172, ; 466: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 233
	i32 2819470561, ; 467: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 468: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 469: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 268
	i32 2824502124, ; 470: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 471: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 328
	i32 2838993487, ; 472: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 257
	i32 2841937114, ; 473: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 300
	i32 2849599387, ; 474: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 475: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 280
	i32 2855708567, ; 476: Xamarin.AndroidX.Transition => 0xaa36a797 => 276
	i32 2861098320, ; 477: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 478: Microsoft.Maui.Essentials => 0xaa8a4878 => 202
	i32 2867946736, ; 479: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 212
	i32 2870099610, ; 480: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 218
	i32 2875164099, ; 481: Jsr305Binding.dll => 0xab5f85c3 => 285
	i32 2875220617, ; 482: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 483: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 244
	i32 2887636118, ; 484: System.Net.dll => 0xac1dd496 => 81
	i32 2891872470, ; 485: cs\Microsoft.Data.SqlClient.resources => 0xac5e78d6 => 296
	i32 2899753641, ; 486: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 487: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 488: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 489: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 490: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 491: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 281
	i32 2919462931, ; 492: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 493: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 220
	i32 2936416060, ; 494: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 495: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 496: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 497: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 207
	i32 2959614098, ; 498: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 499: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 500: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 501: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 240
	i32 2987532451, ; 502: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 271
	i32 2996846495, ; 503: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 253
	i32 3012788804, ; 504: System.Configuration.ConfigurationManager => 0xb3938244 => 207
	i32 3016983068, ; 505: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 273
	i32 3023353419, ; 506: WindowsBase.dll => 0xb434b64b => 165
	i32 3023511517, ; 507: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 305
	i32 3024354802, ; 508: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 248
	i32 3033605958, ; 509: System.Memory.Data.dll => 0xb4d12746 => 210
	i32 3038032645, ; 510: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 348
	i32 3056245963, ; 511: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 270
	i32 3057625584, ; 512: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 261
	i32 3059408633, ; 513: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 514: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 515: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 179
	i32 3075834255, ; 516: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 517: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 321
	i32 3084678329, ; 518: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 197
	i32 3090735792, ; 519: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 520: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 521: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 522: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 523: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 524: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 525: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 526: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 527: GoogleGson.dll => 0xbba64c02 => 175
	i32 3158628304, ; 528: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 308
	i32 3159123045, ; 529: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 530: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 531: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 262
	i32 3192346100, ; 532: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 533: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 534: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 179
	i32 3204380047, ; 535: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 536: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 537: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 239
	i32 3220365878, ; 538: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 539: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 540: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 541: Xamarin.AndroidX.CardView => 0xc235e84d => 227
	i32 3265493905, ; 542: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 543: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3268887220, ; 544: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 299
	i32 3276600297, ; 545: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 304
	i32 3277815716, ; 546: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 547: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 548: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 549: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 550: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 551: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 552: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 316
	i32 3312457198, ; 553: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 193
	i32 3316684772, ; 554: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 555: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 237
	i32 3317144872, ; 556: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 557: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 225
	i32 3343947874, ; 558: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 299
	i32 3345895724, ; 559: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 266
	i32 3346324047, ; 560: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 263
	i32 3357674450, ; 561: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 333
	i32 3358260929, ; 562: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 563: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 218
	i32 3362522851, ; 564: Xamarin.AndroidX.Core => 0xc86c06e3 => 234
	i32 3366347497, ; 565: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 566: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 195
	i32 3374999561, ; 567: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 267
	i32 3381016424, ; 568: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 312
	i32 3395150330, ; 569: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 570: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 571: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 238
	i32 3428513518, ; 572: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 183
	i32 3429136800, ; 573: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 574: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 575: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 241
	i32 3445260447, ; 576: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 577: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 198
	i32 3463511458, ; 578: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 320
	i32 3471940407, ; 579: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 580: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 581: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 333
	i32 3484440000, ; 582: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 332
	i32 3485117614, ; 583: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 584: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 585: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 230
	i32 3509114376, ; 586: System.Xml.Linq => 0xd128d608 => 155
	i32 3512826571, ; 587: Microsoft.Bcl.Cryptography.dll => 0xd1617acb => 177
	i32 3515174580, ; 588: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 589: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 590: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 591: Microsoft.Data.SqlClient => 0xd35114f1 => 178
	i32 3555084973, ; 592: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 297
	i32 3558648585, ; 593: System.ClientModel => 0xd41cab09 => 206
	i32 3560100363, ; 594: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 595: Azure.Core.dll => 0xd44f0a73 => 173
	i32 3570554715, ; 596: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 597: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 340
	i32 3597029428, ; 598: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 216
	i32 3598340787, ; 599: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 600: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 601: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 602: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 265
	i32 3633644679, ; 603: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 220
	i32 3638274909, ; 604: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 605: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 251
	i32 3643446276, ; 606: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 337
	i32 3643854240, ; 607: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 262
	i32 3645089577, ; 608: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 609: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 182
	i32 3660523487, ; 610: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 611: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 612: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 226
	i32 3684561358, ; 613: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 230
	i32 3697841164, ; 614: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 342
	i32 3700591436, ; 615: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 192
	i32 3700866549, ; 616: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 617: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 235
	i32 3716563718, ; 618: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 619: Xamarin.AndroidX.Annotation => 0xdda814c6 => 219
	i32 3724971120, ; 620: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 261
	i32 3732100267, ; 621: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 622: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 623: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 624: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 625: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 228
	i32 3792276235, ; 626: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 627: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 198
	i32 3802395368, ; 628: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3803019198, ; 629: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 307
	i32 3807198597, ; 630: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 211
	i32 3819260425, ; 631: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 632: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 633: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 634: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 184
	i32 3844307129, ; 635: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3848348906, ; 636: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 298
	i32 3849253459, ; 637: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 638: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 639: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 640: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 641: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 642: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 276
	i32 3888767677, ; 643: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 266
	i32 3889960447, ; 644: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 341
	i32 3896106733, ; 645: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 646: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 234
	i32 3901907137, ; 647: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 648: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 649: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 279
	i32 3928044579, ; 650: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 651: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 652: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 264
	i32 3945713374, ; 653: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 654: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 655: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 222
	i32 3959773229, ; 656: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 253
	i32 3980434154, ; 657: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 336
	i32 3987592930, ; 658: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 318
	i32 4003436829, ; 659: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 660: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 221
	i32 4025784931, ; 661: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 662: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 200
	i32 4054681211, ; 663: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4064142224, ; 664: pl/Microsoft.Data.SqlClient.resources.dll => 0xf23de390 => 303
	i32 4068434129, ; 665: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 666: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 667: Microsoft.Maui.Essentials.dll => 0xf40add04 => 202
	i32 4099507663, ; 668: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 669: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 670: Xamarin.AndroidX.Emoji2 => 0xf479582c => 242
	i32 4101842092, ; 671: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 180
	i32 4102112229, ; 672: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 331
	i32 4112757957, ; 673: Services => 0xf523b4c5 => 347
	i32 4125707920, ; 674: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 326
	i32 4126470640, ; 675: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 183
	i32 4127667938, ; 676: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 677: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 678: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 679: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 338
	i32 4151237749, ; 680: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 681: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 682: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 683: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 684: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 685: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 258
	i32 4185676441, ; 686: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 687: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 688: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 689: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 235
	i32 4257443520, ; 690: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 302
	i32 4258378803, ; 691: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 257
	i32 4260525087, ; 692: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 693: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 209
	i32 4271975918, ; 694: Microsoft.Maui.Controls.dll => 0xfea12dee => 199
	i32 4274976490, ; 695: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 696: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 258
	i32 4294763496 ; 697: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 244
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [698 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 254, ; 3
	i32 288, ; 4
	i32 48, ; 5
	i32 205, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 300, ; 9
	i32 301, ; 10
	i32 344, ; 11
	i32 30, ; 12
	i32 342, ; 13
	i32 124, ; 14
	i32 203, ; 15
	i32 102, ; 16
	i32 272, ; 17
	i32 107, ; 18
	i32 272, ; 19
	i32 139, ; 20
	i32 292, ; 21
	i32 301, ; 22
	i32 77, ; 23
	i32 124, ; 24
	i32 13, ; 25
	i32 228, ; 26
	i32 305, ; 27
	i32 132, ; 28
	i32 274, ; 29
	i32 151, ; 30
	i32 339, ; 31
	i32 340, ; 32
	i32 18, ; 33
	i32 226, ; 34
	i32 26, ; 35
	i32 248, ; 36
	i32 1, ; 37
	i32 59, ; 38
	i32 42, ; 39
	i32 91, ; 40
	i32 231, ; 41
	i32 307, ; 42
	i32 147, ; 43
	i32 250, ; 44
	i32 247, ; 45
	i32 311, ; 46
	i32 54, ; 47
	i32 69, ; 48
	i32 339, ; 49
	i32 217, ; 50
	i32 83, ; 51
	i32 204, ; 52
	i32 324, ; 53
	i32 249, ; 54
	i32 323, ; 55
	i32 131, ; 56
	i32 303, ; 57
	i32 55, ; 58
	i32 149, ; 59
	i32 74, ; 60
	i32 145, ; 61
	i32 62, ; 62
	i32 146, ; 63
	i32 348, ; 64
	i32 165, ; 65
	i32 306, ; 66
	i32 335, ; 67
	i32 232, ; 68
	i32 12, ; 69
	i32 245, ; 70
	i32 125, ; 71
	i32 152, ; 72
	i32 113, ; 73
	i32 166, ; 74
	i32 164, ; 75
	i32 247, ; 76
	i32 192, ; 77
	i32 260, ; 78
	i32 84, ; 79
	i32 322, ; 80
	i32 316, ; 81
	i32 189, ; 82
	i32 343, ; 83
	i32 150, ; 84
	i32 292, ; 85
	i32 60, ; 86
	i32 185, ; 87
	i32 51, ; 88
	i32 103, ; 89
	i32 114, ; 90
	i32 176, ; 91
	i32 40, ; 92
	i32 285, ; 93
	i32 283, ; 94
	i32 120, ; 95
	i32 330, ; 96
	i32 52, ; 97
	i32 44, ; 98
	i32 119, ; 99
	i32 237, ; 100
	i32 328, ; 101
	i32 243, ; 102
	i32 81, ; 103
	i32 136, ; 104
	i32 279, ; 105
	i32 224, ; 106
	i32 8, ; 107
	i32 73, ; 108
	i32 310, ; 109
	i32 155, ; 110
	i32 294, ; 111
	i32 154, ; 112
	i32 92, ; 113
	i32 289, ; 114
	i32 45, ; 115
	i32 347, ; 116
	i32 325, ; 117
	i32 211, ; 118
	i32 313, ; 119
	i32 293, ; 120
	i32 109, ; 121
	i32 206, ; 122
	i32 129, ; 123
	i32 25, ; 124
	i32 214, ; 125
	i32 72, ; 126
	i32 55, ; 127
	i32 46, ; 128
	i32 334, ; 129
	i32 188, ; 130
	i32 238, ; 131
	i32 22, ; 132
	i32 252, ; 133
	i32 86, ; 134
	i32 43, ; 135
	i32 160, ; 136
	i32 71, ; 137
	i32 265, ; 138
	i32 3, ; 139
	i32 42, ; 140
	i32 63, ; 141
	i32 16, ; 142
	i32 53, ; 143
	i32 344, ; 144
	i32 337, ; 145
	i32 288, ; 146
	i32 105, ; 147
	i32 205, ; 148
	i32 293, ; 149
	i32 286, ; 150
	i32 249, ; 151
	i32 34, ; 152
	i32 158, ; 153
	i32 85, ; 154
	i32 32, ; 155
	i32 12, ; 156
	i32 51, ; 157
	i32 56, ; 158
	i32 269, ; 159
	i32 36, ; 160
	i32 184, ; 161
	i32 312, ; 162
	i32 287, ; 163
	i32 222, ; 164
	i32 35, ; 165
	i32 58, ; 166
	i32 297, ; 167
	i32 256, ; 168
	i32 191, ; 169
	i32 175, ; 170
	i32 17, ; 171
	i32 290, ; 172
	i32 208, ; 173
	i32 164, ; 174
	i32 325, ; 175
	i32 255, ; 176
	i32 187, ; 177
	i32 178, ; 178
	i32 282, ; 179
	i32 331, ; 180
	i32 153, ; 181
	i32 278, ; 182
	i32 263, ; 183
	i32 177, ; 184
	i32 329, ; 185
	i32 224, ; 186
	i32 180, ; 187
	i32 29, ; 188
	i32 52, ; 189
	i32 327, ; 190
	i32 283, ; 191
	i32 5, ; 192
	i32 311, ; 193
	i32 273, ; 194
	i32 277, ; 195
	i32 229, ; 196
	i32 294, ; 197
	i32 221, ; 198
	i32 240, ; 199
	i32 85, ; 200
	i32 296, ; 201
	i32 282, ; 202
	i32 61, ; 203
	i32 112, ; 204
	i32 57, ; 205
	i32 341, ; 206
	i32 269, ; 207
	i32 99, ; 208
	i32 19, ; 209
	i32 233, ; 210
	i32 111, ; 211
	i32 101, ; 212
	i32 102, ; 213
	i32 309, ; 214
	i32 104, ; 215
	i32 286, ; 216
	i32 71, ; 217
	i32 38, ; 218
	i32 32, ; 219
	i32 103, ; 220
	i32 73, ; 221
	i32 209, ; 222
	i32 315, ; 223
	i32 9, ; 224
	i32 123, ; 225
	i32 46, ; 226
	i32 223, ; 227
	i32 343, ; 228
	i32 189, ; 229
	i32 9, ; 230
	i32 43, ; 231
	i32 4, ; 232
	i32 270, ; 233
	i32 319, ; 234
	i32 193, ; 235
	i32 314, ; 236
	i32 31, ; 237
	i32 138, ; 238
	i32 92, ; 239
	i32 93, ; 240
	i32 334, ; 241
	i32 49, ; 242
	i32 141, ; 243
	i32 112, ; 244
	i32 140, ; 245
	i32 174, ; 246
	i32 239, ; 247
	i32 115, ; 248
	i32 308, ; 249
	i32 287, ; 250
	i32 157, ; 251
	i32 76, ; 252
	i32 79, ; 253
	i32 259, ; 254
	i32 37, ; 255
	i32 281, ; 256
	i32 196, ; 257
	i32 243, ; 258
	i32 236, ; 259
	i32 64, ; 260
	i32 138, ; 261
	i32 15, ; 262
	i32 0, ; 263
	i32 116, ; 264
	i32 275, ; 265
	i32 284, ; 266
	i32 231, ; 267
	i32 48, ; 268
	i32 70, ; 269
	i32 80, ; 270
	i32 126, ; 271
	i32 94, ; 272
	i32 121, ; 273
	i32 291, ; 274
	i32 26, ; 275
	i32 345, ; 276
	i32 252, ; 277
	i32 97, ; 278
	i32 28, ; 279
	i32 227, ; 280
	i32 332, ; 281
	i32 310, ; 282
	i32 149, ; 283
	i32 169, ; 284
	i32 4, ; 285
	i32 98, ; 286
	i32 33, ; 287
	i32 93, ; 288
	i32 274, ; 289
	i32 185, ; 290
	i32 21, ; 291
	i32 41, ; 292
	i32 170, ; 293
	i32 326, ; 294
	i32 245, ; 295
	i32 318, ; 296
	i32 190, ; 297
	i32 176, ; 298
	i32 259, ; 299
	i32 290, ; 300
	i32 284, ; 301
	i32 264, ; 302
	i32 2, ; 303
	i32 134, ; 304
	i32 111, ; 305
	i32 186, ; 306
	i32 338, ; 307
	i32 214, ; 308
	i32 335, ; 309
	i32 58, ; 310
	i32 95, ; 311
	i32 196, ; 312
	i32 317, ; 313
	i32 39, ; 314
	i32 225, ; 315
	i32 25, ; 316
	i32 94, ; 317
	i32 89, ; 318
	i32 99, ; 319
	i32 10, ; 320
	i32 87, ; 321
	i32 100, ; 322
	i32 271, ; 323
	i32 181, ; 324
	i32 291, ; 325
	i32 345, ; 326
	i32 216, ; 327
	i32 197, ; 328
	i32 314, ; 329
	i32 7, ; 330
	i32 256, ; 331
	i32 309, ; 332
	i32 213, ; 333
	i32 191, ; 334
	i32 88, ; 335
	i32 251, ; 336
	i32 154, ; 337
	i32 313, ; 338
	i32 33, ; 339
	i32 116, ; 340
	i32 82, ; 341
	i32 20, ; 342
	i32 11, ; 343
	i32 162, ; 344
	i32 3, ; 345
	i32 201, ; 346
	i32 321, ; 347
	i32 188, ; 348
	i32 186, ; 349
	i32 84, ; 350
	i32 295, ; 351
	i32 64, ; 352
	i32 323, ; 353
	i32 278, ; 354
	i32 143, ; 355
	i32 304, ; 356
	i32 346, ; 357
	i32 260, ; 358
	i32 157, ; 359
	i32 195, ; 360
	i32 41, ; 361
	i32 117, ; 362
	i32 182, ; 363
	i32 215, ; 364
	i32 317, ; 365
	i32 267, ; 366
	i32 346, ; 367
	i32 131, ; 368
	i32 75, ; 369
	i32 66, ; 370
	i32 327, ; 371
	i32 172, ; 372
	i32 302, ; 373
	i32 219, ; 374
	i32 143, ; 375
	i32 106, ; 376
	i32 151, ; 377
	i32 70, ; 378
	i32 156, ; 379
	i32 194, ; 380
	i32 181, ; 381
	i32 121, ; 382
	i32 127, ; 383
	i32 0, ; 384
	i32 322, ; 385
	i32 152, ; 386
	i32 242, ; 387
	i32 141, ; 388
	i32 229, ; 389
	i32 319, ; 390
	i32 20, ; 391
	i32 14, ; 392
	i32 135, ; 393
	i32 75, ; 394
	i32 59, ; 395
	i32 232, ; 396
	i32 167, ; 397
	i32 168, ; 398
	i32 199, ; 399
	i32 15, ; 400
	i32 74, ; 401
	i32 6, ; 402
	i32 23, ; 403
	i32 254, ; 404
	i32 208, ; 405
	i32 213, ; 406
	i32 91, ; 407
	i32 320, ; 408
	i32 1, ; 409
	i32 136, ; 410
	i32 255, ; 411
	i32 277, ; 412
	i32 134, ; 413
	i32 69, ; 414
	i32 146, ; 415
	i32 329, ; 416
	i32 295, ; 417
	i32 246, ; 418
	i32 187, ; 419
	i32 88, ; 420
	i32 96, ; 421
	i32 236, ; 422
	i32 241, ; 423
	i32 324, ; 424
	i32 31, ; 425
	i32 210, ; 426
	i32 45, ; 427
	i32 250, ; 428
	i32 194, ; 429
	i32 173, ; 430
	i32 212, ; 431
	i32 215, ; 432
	i32 109, ; 433
	i32 158, ; 434
	i32 35, ; 435
	i32 22, ; 436
	i32 174, ; 437
	i32 306, ; 438
	i32 114, ; 439
	i32 57, ; 440
	i32 275, ; 441
	i32 144, ; 442
	i32 118, ; 443
	i32 120, ; 444
	i32 110, ; 445
	i32 217, ; 446
	i32 139, ; 447
	i32 223, ; 448
	i32 190, ; 449
	i32 54, ; 450
	i32 105, ; 451
	i32 330, ; 452
	i32 204, ; 453
	i32 200, ; 454
	i32 201, ; 455
	i32 133, ; 456
	i32 289, ; 457
	i32 280, ; 458
	i32 268, ; 459
	i32 336, ; 460
	i32 246, ; 461
	i32 203, ; 462
	i32 159, ; 463
	i32 298, ; 464
	i32 315, ; 465
	i32 233, ; 466
	i32 163, ; 467
	i32 132, ; 468
	i32 268, ; 469
	i32 161, ; 470
	i32 328, ; 471
	i32 257, ; 472
	i32 300, ; 473
	i32 140, ; 474
	i32 280, ; 475
	i32 276, ; 476
	i32 169, ; 477
	i32 202, ; 478
	i32 212, ; 479
	i32 218, ; 480
	i32 285, ; 481
	i32 40, ; 482
	i32 244, ; 483
	i32 81, ; 484
	i32 296, ; 485
	i32 56, ; 486
	i32 37, ; 487
	i32 97, ; 488
	i32 166, ; 489
	i32 172, ; 490
	i32 281, ; 491
	i32 82, ; 492
	i32 220, ; 493
	i32 98, ; 494
	i32 30, ; 495
	i32 159, ; 496
	i32 207, ; 497
	i32 18, ; 498
	i32 127, ; 499
	i32 119, ; 500
	i32 240, ; 501
	i32 271, ; 502
	i32 253, ; 503
	i32 207, ; 504
	i32 273, ; 505
	i32 165, ; 506
	i32 305, ; 507
	i32 248, ; 508
	i32 210, ; 509
	i32 348, ; 510
	i32 270, ; 511
	i32 261, ; 512
	i32 170, ; 513
	i32 16, ; 514
	i32 179, ; 515
	i32 144, ; 516
	i32 321, ; 517
	i32 197, ; 518
	i32 125, ; 519
	i32 118, ; 520
	i32 38, ; 521
	i32 115, ; 522
	i32 47, ; 523
	i32 142, ; 524
	i32 117, ; 525
	i32 34, ; 526
	i32 175, ; 527
	i32 308, ; 528
	i32 95, ; 529
	i32 53, ; 530
	i32 262, ; 531
	i32 129, ; 532
	i32 153, ; 533
	i32 179, ; 534
	i32 24, ; 535
	i32 161, ; 536
	i32 239, ; 537
	i32 148, ; 538
	i32 104, ; 539
	i32 89, ; 540
	i32 227, ; 541
	i32 60, ; 542
	i32 142, ; 543
	i32 299, ; 544
	i32 304, ; 545
	i32 100, ; 546
	i32 5, ; 547
	i32 13, ; 548
	i32 122, ; 549
	i32 135, ; 550
	i32 28, ; 551
	i32 316, ; 552
	i32 193, ; 553
	i32 72, ; 554
	i32 237, ; 555
	i32 24, ; 556
	i32 225, ; 557
	i32 299, ; 558
	i32 266, ; 559
	i32 263, ; 560
	i32 333, ; 561
	i32 137, ; 562
	i32 218, ; 563
	i32 234, ; 564
	i32 168, ; 565
	i32 195, ; 566
	i32 267, ; 567
	i32 312, ; 568
	i32 101, ; 569
	i32 123, ; 570
	i32 238, ; 571
	i32 183, ; 572
	i32 163, ; 573
	i32 167, ; 574
	i32 241, ; 575
	i32 39, ; 576
	i32 198, ; 577
	i32 320, ; 578
	i32 17, ; 579
	i32 171, ; 580
	i32 333, ; 581
	i32 332, ; 582
	i32 137, ; 583
	i32 150, ; 584
	i32 230, ; 585
	i32 155, ; 586
	i32 177, ; 587
	i32 130, ; 588
	i32 19, ; 589
	i32 65, ; 590
	i32 178, ; 591
	i32 297, ; 592
	i32 206, ; 593
	i32 147, ; 594
	i32 173, ; 595
	i32 47, ; 596
	i32 340, ; 597
	i32 216, ; 598
	i32 79, ; 599
	i32 61, ; 600
	i32 106, ; 601
	i32 265, ; 602
	i32 220, ; 603
	i32 49, ; 604
	i32 251, ; 605
	i32 337, ; 606
	i32 262, ; 607
	i32 14, ; 608
	i32 182, ; 609
	i32 68, ; 610
	i32 171, ; 611
	i32 226, ; 612
	i32 230, ; 613
	i32 342, ; 614
	i32 192, ; 615
	i32 78, ; 616
	i32 235, ; 617
	i32 108, ; 618
	i32 219, ; 619
	i32 261, ; 620
	i32 67, ; 621
	i32 63, ; 622
	i32 27, ; 623
	i32 160, ; 624
	i32 228, ; 625
	i32 10, ; 626
	i32 198, ; 627
	i32 11, ; 628
	i32 307, ; 629
	i32 211, ; 630
	i32 78, ; 631
	i32 126, ; 632
	i32 83, ; 633
	i32 184, ; 634
	i32 66, ; 635
	i32 298, ; 636
	i32 107, ; 637
	i32 65, ; 638
	i32 128, ; 639
	i32 122, ; 640
	i32 77, ; 641
	i32 276, ; 642
	i32 266, ; 643
	i32 341, ; 644
	i32 8, ; 645
	i32 234, ; 646
	i32 2, ; 647
	i32 44, ; 648
	i32 279, ; 649
	i32 156, ; 650
	i32 128, ; 651
	i32 264, ; 652
	i32 23, ; 653
	i32 133, ; 654
	i32 222, ; 655
	i32 253, ; 656
	i32 336, ; 657
	i32 318, ; 658
	i32 29, ; 659
	i32 221, ; 660
	i32 62, ; 661
	i32 200, ; 662
	i32 90, ; 663
	i32 303, ; 664
	i32 87, ; 665
	i32 148, ; 666
	i32 202, ; 667
	i32 36, ; 668
	i32 86, ; 669
	i32 242, ; 670
	i32 180, ; 671
	i32 331, ; 672
	i32 347, ; 673
	i32 326, ; 674
	i32 183, ; 675
	i32 50, ; 676
	i32 6, ; 677
	i32 90, ; 678
	i32 338, ; 679
	i32 21, ; 680
	i32 162, ; 681
	i32 96, ; 682
	i32 50, ; 683
	i32 113, ; 684
	i32 258, ; 685
	i32 130, ; 686
	i32 76, ; 687
	i32 27, ; 688
	i32 235, ; 689
	i32 302, ; 690
	i32 257, ; 691
	i32 7, ; 692
	i32 209, ; 693
	i32 199, ; 694
	i32 110, ; 695
	i32 258, ; 696
	i32 244 ; 697
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
