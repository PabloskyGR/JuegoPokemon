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

@assembly_image_cache = dso_local local_unnamed_addr global [206 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [412 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 151
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 150
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 76
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 192
	i32 57725457, ; 4: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 4
	i32 57727992, ; 5: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 5
	i32 66028056, ; 6: CapaDAL => 0x3ef8218 => 114
	i32 66541672, ; 7: System.Diagnostics.StackTrace => 0x3f75868 => 134
	i32 67008169, ; 8: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 46
	i32 68219467, ; 9: System.Security.Cryptography.Primitives => 0x410f24b => 181
	i32 72070932, ; 10: Microsoft.Maui.Graphics.dll => 0x44bb714 => 74
	i32 117431740, ; 11: System.Runtime.InteropServices => 0x6ffddbc => 169
	i32 122350210, ; 12: System.Threading.Channels.dll => 0x74aea82 => 190
	i32 139659294, ; 13: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 5
	i32 142721839, ; 14: System.Net.WebHeaderCollection => 0x881c32f => 158
	i32 149972175, ; 15: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 181
	i32 165246403, ; 16: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 89
	i32 166535111, ; 17: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 9
	i32 182336117, ; 18: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 107
	i32 195452805, ; 19: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 43
	i32 199333315, ; 20: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 44
	i32 205061960, ; 21: System.ComponentModel => 0xc38ff48 => 129
	i32 209399409, ; 22: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 87
	i32 230752869, ; 23: Microsoft.CSharp.dll => 0xdc10265 => 119
	i32 246610117, ; 24: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 166
	i32 264223668, ; 25: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 11
	i32 280992041, ; 26: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 15
	i32 317674968, ; 27: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 43
	i32 318968648, ; 28: Xamarin.AndroidX.Activity.dll => 0x13031348 => 84
	i32 330147069, ; 29: Microsoft.SqlServer.Server => 0x13ada4fd => 75
	i32 336156722, ; 30: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 28
	i32 342366114, ; 31: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 96
	i32 356389973, ; 32: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 27
	i32 360671332, ; 33: pl\Microsoft.Data.SqlClient.resources => 0x157f6864 => 7
	i32 367780167, ; 34: System.IO.Pipes => 0x15ebe147 => 145
	i32 374914964, ; 35: System.Transactions.Local => 0x1658bf94 => 195
	i32 375677976, ; 36: System.Net.ServicePoint.dll => 0x16646418 => 155
	i32 379916513, ; 37: System.Threading.Thread.dll => 0x16a510e1 => 192
	i32 385762202, ; 38: System.Memory.dll => 0x16fe439a => 148
	i32 392610295, ; 39: System.Threading.ThreadPool.dll => 0x1766c1f7 => 193
	i32 395744057, ; 40: _Microsoft.Android.Resource.Designer => 0x17969339 => 47
	i32 407321033, ; 41: tr/Microsoft.Data.SqlClient.resources.dll => 0x184739c9 => 10
	i32 435591531, ; 42: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 39
	i32 442565967, ; 43: System.Collections => 0x1a61054f => 126
	i32 450948140, ; 44: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 95
	i32 451504562, ; 45: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 182
	i32 459347974, ; 46: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 174
	i32 469710990, ; 47: System.dll => 0x1bff388e => 200
	i32 485463106, ; 48: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 64
	i32 498788369, ; 49: System.ObjectModel => 0x1dbae811 => 160
	i32 500358224, ; 50: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 26
	i32 503918385, ; 51: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 20
	i32 513247710, ; 52: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 61
	i32 520770167, ; 53: CapaBL => 0x1f0a5277 => 113
	i32 539058512, ; 54: Microsoft.Extensions.Logging => 0x20216150 => 58
	i32 546455878, ; 55: System.Runtime.Serialization.Xml => 0x20924146 => 175
	i32 548916678, ; 56: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 50
	i32 592146354, ; 57: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 34
	i32 613668793, ; 58: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 179
	i32 627609679, ; 59: Xamarin.AndroidX.CustomView => 0x2568904f => 93
	i32 627931235, ; 60: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 32
	i32 662205335, ; 61: System.Text.Encodings.Web.dll => 0x27787397 => 187
	i32 672442732, ; 62: System.Collections.Concurrent => 0x2814a96c => 122
	i32 683518922, ; 63: System.Net.Security => 0x28bdabca => 154
	i32 688181140, ; 64: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 14
	i32 690569205, ; 65: System.Xml.Linq.dll => 0x29293ff5 => 196
	i32 702553234, ; 66: Services.dll => 0x29e01c92 => 117
	i32 706645707, ; 67: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 29
	i32 709152836, ; 68: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 82
	i32 709557578, ; 69: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 17
	i32 722857257, ; 70: System.Runtime.Loader.dll => 0x2b15ed29 => 170
	i32 723796036, ; 71: System.ClientModel.dll => 0x2b244044 => 77
	i32 759454413, ; 72: System.Net.Requests => 0x2d445acd => 153
	i32 762598435, ; 73: System.IO.Pipes.dll => 0x2d745423 => 145
	i32 775507847, ; 74: System.IO.Compression => 0x2e394f87 => 142
	i32 777317022, ; 75: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 38
	i32 789151979, ; 76: Microsoft.Extensions.Options => 0x2f0980eb => 60
	i32 804715423, ; 77: System.Data.Common => 0x2ff6fb9f => 131
	i32 823281589, ; 78: System.Private.Uri.dll => 0x311247b5 => 162
	i32 830298997, ; 79: System.IO.Compression.Brotli => 0x317d5b75 => 141
	i32 904024072, ; 80: System.ComponentModel.Primitives.dll => 0x35e25008 => 127
	i32 913563620, ; 81: CapaDAL.dll => 0x3673dfe4 => 114
	i32 926902833, ; 82: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 41
	i32 955402788, ; 83: Newtonsoft.Json => 0x38f24a24 => 76
	i32 967690846, ; 84: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 96
	i32 975236339, ; 85: System.Diagnostics.Tracing => 0x3a20ecf3 => 137
	i32 975874589, ; 86: System.Xml.XDocument => 0x3a2aaa1d => 198
	i32 986514023, ; 87: System.Private.DataContractSerialization.dll => 0x3acd0267 => 161
	i32 992768348, ; 88: System.Collections.dll => 0x3b2c715c => 126
	i32 1012816738, ; 89: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 106
	i32 1019214401, ; 90: System.Drawing => 0x3cbffa41 => 139
	i32 1028951442, ; 91: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 57
	i32 1029334545, ; 92: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 16
	i32 1035644815, ; 93: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 85
	i32 1036536393, ; 94: System.Drawing.Primitives.dll => 0x3dc84a49 => 138
	i32 1044663988, ; 95: System.Linq.Expressions.dll => 0x3e444eb4 => 146
	i32 1048439329, ; 96: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 1
	i32 1052210849, ; 97: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 98
	i32 1062017875, ; 98: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 63
	i32 1082857460, ; 99: System.ComponentModel.TypeConverter => 0x408b17f4 => 128
	i32 1084122840, ; 100: Xamarin.Kotlin.StdLib => 0x409e66d8 => 111
	i32 1089913930, ; 101: System.Diagnostics.EventLog.dll => 0x40f6c44a => 79
	i32 1098259244, ; 102: System => 0x41761b2c => 200
	i32 1118262833, ; 103: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 29
	i32 1138436374, ; 104: Microsoft.Data.SqlClient.dll => 0x43db2916 => 51
	i32 1168523401, ; 105: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 35
	i32 1178241025, ; 106: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 103
	i32 1203215381, ; 107: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 33
	i32 1204575371, ; 108: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 53
	i32 1208641965, ; 109: System.Diagnostics.Process => 0x480a69ad => 133
	i32 1234928153, ; 110: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 31
	i32 1260983243, ; 111: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 15
	i32 1293217323, ; 112: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 94
	i32 1309188875, ; 113: System.Private.DataContractSerialization => 0x4e08a30b => 161
	i32 1315359775, ; 114: cs/Microsoft.Data.SqlClient.resources.dll => 0x4e66cc1f => 0
	i32 1324164729, ; 115: System.Linq => 0x4eed2679 => 147
	i32 1335329327, ; 116: System.Runtime.Serialization.Json.dll => 0x4f97822f => 173
	i32 1373134921, ; 117: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 45
	i32 1376866003, ; 118: Xamarin.AndroidX.SavedState => 0x52114ed3 => 106
	i32 1406073936, ; 119: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 90
	i32 1408764838, ; 120: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 172
	i32 1430672901, ; 121: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 13
	i32 1452070440, ; 122: System.Formats.Asn1.dll => 0x568cd628 => 140
	i32 1458022317, ; 123: System.Net.Security.dll => 0x56e7a7ad => 154
	i32 1460893475, ; 124: System.IdentityModel.Tokens.Jwt => 0x57137723 => 80
	i32 1461004990, ; 125: es\Microsoft.Maui.Controls.resources => 0x57152abe => 19
	i32 1461234159, ; 126: System.Collections.Immutable.dll => 0x5718a9ef => 123
	i32 1462112819, ; 127: System.IO.Compression.dll => 0x57261233 => 142
	i32 1469204771, ; 128: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 86
	i32 1469939953, ; 129: CapaBL.dll => 0x579d80f1 => 113
	i32 1470490898, ; 130: Microsoft.Extensions.Primitives => 0x57a5e912 => 61
	i32 1479771757, ; 131: System.Collections.Immutable => 0x5833866d => 123
	i32 1480492111, ; 132: System.IO.Compression.Brotli.dll => 0x583e844f => 141
	i32 1487239319, ; 133: Microsoft.Win32.Primitives => 0x58a57897 => 120
	i32 1493001747, ; 134: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 23
	i32 1498168481, ; 135: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 65
	i32 1514721132, ; 136: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 18
	i32 1536373174, ; 137: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 135
	i32 1543031311, ; 138: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 189
	i32 1551623176, ; 139: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 38
	i32 1573704789, ; 140: System.Runtime.Serialization.Json => 0x5dccd455 => 173
	i32 1582305585, ; 141: Azure.Identity => 0x5e501131 => 49
	i32 1596263029, ; 142: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 12
	i32 1604827217, ; 143: System.Net.WebClient => 0x5fa7b851 => 157
	i32 1622152042, ; 144: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 100
	i32 1624863272, ; 145: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 109
	i32 1628113371, ; 146: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 68
	i32 1636350590, ; 147: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 92
	i32 1639515021, ; 148: System.Net.Http.dll => 0x61b9038d => 149
	i32 1639986890, ; 149: System.Text.RegularExpressions => 0x61c036ca => 189
	i32 1645479650, ; 150: CapaUI-Maui => 0x621406e2 => 118
	i32 1657153582, ; 151: System.Runtime => 0x62c6282e => 176
	i32 1658251792, ; 152: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 110
	i32 1677501392, ; 153: System.Net.Primitives.dll => 0x63fca3d0 => 152
	i32 1679769178, ; 154: System.Security.Cryptography => 0x641f3e5a => 183
	i32 1705359571, ; 155: CapaENT => 0x65a5b8d3 => 115
	i32 1729485958, ; 156: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 88
	i32 1736233607, ; 157: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 36
	i32 1743415430, ; 158: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 14
	i32 1744735666, ; 159: System.Transactions.Local.dll => 0x67fe8db2 => 195
	i32 1750313021, ; 160: Microsoft.Win32.Primitives.dll => 0x6853a83d => 120
	i32 1763938596, ; 161: System.Diagnostics.TraceSource.dll => 0x69239124 => 136
	i32 1766324549, ; 162: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 107
	i32 1770582343, ; 163: Microsoft.Extensions.Logging.dll => 0x6988f147 => 58
	i32 1780572499, ; 164: Mono.Android.Runtime.dll => 0x6a216153 => 204
	i32 1782862114, ; 165: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 30
	i32 1788241197, ; 166: Xamarin.AndroidX.Fragment => 0x6a96652d => 95
	i32 1793755602, ; 167: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 22
	i32 1794500907, ; 168: Microsoft.Identity.Client.dll => 0x6af5e92b => 62
	i32 1796167890, ; 169: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 50
	i32 1808609942, ; 170: Xamarin.AndroidX.Loader => 0x6bcd3296 => 100
	i32 1813058853, ; 171: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 111
	i32 1813201214, ; 172: Xamarin.Google.Android.Material => 0x6c13413e => 110
	i32 1818569960, ; 173: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 104
	i32 1824175904, ; 174: System.Text.Encoding.Extensions => 0x6cbab720 => 186
	i32 1824722060, ; 175: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 172
	i32 1828688058, ; 176: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 59
	i32 1842015223, ; 177: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 42
	i32 1853025655, ; 178: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 39
	i32 1858542181, ; 179: System.Linq.Expressions => 0x6ec71a65 => 146
	i32 1870277092, ; 180: System.Reflection.Primitives => 0x6f7a29e4 => 167
	i32 1871986876, ; 181: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 68
	i32 1875935024, ; 182: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 21
	i32 1910275211, ; 183: System.Collections.NonGeneric.dll => 0x71dc7c8b => 124
	i32 1939592360, ; 184: System.Private.Xml.Linq => 0x739bd4a8 => 163
	i32 1968388702, ; 185: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 54
	i32 1983756059, ; 186: CapaENT.dll => 0x763db71b => 115
	i32 1986222447, ; 187: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 69
	i32 2003115576, ; 188: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 18
	i32 2011961780, ; 189: System.Buffers.dll => 0x77ec19b4 => 121
	i32 2019465201, ; 190: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 98
	i32 2025202353, ; 191: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 13
	i32 2040764568, ; 192: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 63
	i32 2045470958, ; 193: System.Private.Xml => 0x79eb68ee => 164
	i32 2055257422, ; 194: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 97
	i32 2066184531, ; 195: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 17
	i32 2070888862, ; 196: System.Diagnostics.TraceSource => 0x7b6f419e => 136
	i32 2079903147, ; 197: System.Runtime.dll => 0x7bf8cdab => 176
	i32 2090596640, ; 198: System.Numerics.Vectors => 0x7c9bf920 => 159
	i32 2127167465, ; 199: System.Console => 0x7ec9ffe9 => 130
	i32 2142473426, ; 200: System.Collections.Specialized => 0x7fb38cd2 => 125
	i32 2143790110, ; 201: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 199
	i32 2159891885, ; 202: Microsoft.Maui => 0x80bd55ad => 72
	i32 2169148018, ; 203: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 25
	i32 2181898931, ; 204: Microsoft.Extensions.Options.dll => 0x820d22b3 => 60
	i32 2192057212, ; 205: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 59
	i32 2193016926, ; 206: System.ObjectModel.dll => 0x82b6c85e => 160
	i32 2201107256, ; 207: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 112
	i32 2201231467, ; 208: System.Net.Http => 0x8334206b => 149
	i32 2207618523, ; 209: it\Microsoft.Maui.Controls.resources => 0x839595db => 27
	i32 2228745826, ; 210: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 8
	i32 2231958974, ; 211: DTO => 0x8508fdbe => 116
	i32 2253551641, ; 212: Microsoft.IdentityModel.Protocols => 0x86527819 => 67
	i32 2265110946, ; 213: System.Security.AccessControl.dll => 0x8702d9a2 => 177
	i32 2266799131, ; 214: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 55
	i32 2270573516, ; 215: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 21
	i32 2279755925, ; 216: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 105
	i32 2280481699, ; 217: DTO.dll => 0x87ed63a3 => 116
	i32 2295906218, ; 218: System.Net.Sockets => 0x88d8bfaa => 156
	i32 2303942373, ; 219: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 31
	i32 2305521784, ; 220: System.Private.CoreLib.dll => 0x896b7878 => 202
	i32 2309278602, ; 221: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 6
	i32 2340441535, ; 222: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 168
	i32 2353062107, ; 223: System.Net.Primitives => 0x8c40e0db => 152
	i32 2368005991, ; 224: System.Xml.ReaderWriter.dll => 0x8d24e767 => 197
	i32 2369706906, ; 225: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 66
	i32 2371007202, ; 226: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 54
	i32 2383496789, ; 227: System.Security.Principal.Windows.dll => 0x8e114655 => 184
	i32 2386993223, ; 228: CapaUI-Maui.dll => 0x8e46a047 => 118
	i32 2395872292, ; 229: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 26
	i32 2427813419, ; 230: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 23
	i32 2435356389, ; 231: System.Console.dll => 0x912896e5 => 130
	i32 2458678730, ; 232: System.Net.Sockets.dll => 0x928c75ca => 156
	i32 2471841756, ; 233: netstandard.dll => 0x93554fdc => 201
	i32 2475788418, ; 234: Java.Interop.dll => 0x93918882 => 203
	i32 2480646305, ; 235: Microsoft.Maui.Controls => 0x93dba8a1 => 70
	i32 2484371297, ; 236: System.Net.ServicePoint => 0x94147f61 => 155
	i32 2509217888, ; 237: System.Diagnostics.EventLog => 0x958fa060 => 79
	i32 2538310050, ; 238: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 166
	i32 2550873716, ; 239: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 24
	i32 2562349572, ; 240: Microsoft.CSharp => 0x98ba5a04 => 119
	i32 2570120770, ; 241: System.Text.Encodings.Web => 0x9930ee42 => 187
	i32 2585220780, ; 242: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 186
	i32 2589602615, ; 243: System.Threading.ThreadPool => 0x9a5a3337 => 193
	i32 2593496499, ; 244: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 33
	i32 2605712449, ; 245: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 112
	i32 2617129537, ; 246: System.Private.Xml.dll => 0x9bfe3a41 => 164
	i32 2620871830, ; 247: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 92
	i32 2626831493, ; 248: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 28
	i32 2627185994, ; 249: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 135
	i32 2628210652, ; 250: System.Memory.Data => 0x9ca74fdc => 81
	i32 2640290731, ; 251: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 66
	i32 2640706905, ; 252: Azure.Core => 0x9d65fd59 => 48
	i32 2660759594, ; 253: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 83
	i32 2663698177, ; 254: System.Runtime.Loader => 0x9ec4cf01 => 170
	i32 2664396074, ; 255: System.Xml.XDocument.dll => 0x9ecf752a => 198
	i32 2665622720, ; 256: System.Drawing.Primitives => 0x9ee22cc0 => 138
	i32 2676780864, ; 257: System.Data.Common.dll => 0x9f8c6f40 => 131
	i32 2677098746, ; 258: Azure.Identity.dll => 0x9f9148fa => 49
	i32 2678266992, ; 259: tr\Microsoft.Data.SqlClient.resources => 0x9fa31c70 => 10
	i32 2686887180, ; 260: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 175
	i32 2717744543, ; 261: System.Security.Claims => 0xa1fd7d9f => 178
	i32 2724373263, ; 262: System.Runtime.Numerics.dll => 0xa262a30f => 171
	i32 2732626843, ; 263: Xamarin.AndroidX.Activity => 0xa2e0939b => 84
	i32 2735172069, ; 264: System.Threading.Channels => 0xa30769e5 => 190
	i32 2737747696, ; 265: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 86
	i32 2740051746, ; 266: Microsoft.Identity.Client => 0xa351df22 => 62
	i32 2752995522, ; 267: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 34
	i32 2755098380, ; 268: Microsoft.SqlServer.Server.dll => 0xa437770c => 75
	i32 2758225723, ; 269: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 71
	i32 2764765095, ; 270: Microsoft.Maui.dll => 0xa4caf7a7 => 72
	i32 2765824710, ; 271: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 185
	i32 2778768386, ; 272: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 108
	i32 2785988530, ; 273: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 40
	i32 2801831435, ; 274: Microsoft.Maui.Graphics => 0xa7008e0b => 74
	i32 2804509662, ; 275: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 2
	i32 2806116107, ; 276: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 19
	i32 2810250172, ; 277: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 90
	i32 2831556043, ; 278: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 32
	i32 2841937114, ; 279: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 4
	i32 2853208004, ; 280: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 108
	i32 2861189240, ; 281: Microsoft.Maui.Essentials => 0xaa8a4878 => 73
	i32 2867946736, ; 282: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 83
	i32 2891872470, ; 283: cs\Microsoft.Data.SqlClient.resources => 0xac5e78d6 => 0
	i32 2909740682, ; 284: System.Private.CoreLib => 0xad6f1e8a => 202
	i32 2916838712, ; 285: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 109
	i32 2919462931, ; 286: System.Numerics.Vectors.dll => 0xae037813 => 159
	i32 2940926066, ; 287: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 134
	i32 2944313911, ; 288: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 78
	i32 2959614098, ; 289: System.ComponentModel.dll => 0xb0682092 => 129
	i32 2968338931, ; 290: System.Security.Principal.Windows => 0xb0ed41f3 => 184
	i32 2972252294, ; 291: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 179
	i32 2978675010, ; 292: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 94
	i32 3012788804, ; 293: System.Configuration.ConfigurationManager => 0xb3938244 => 78
	i32 3023511517, ; 294: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 9
	i32 3033605958, ; 295: System.Memory.Data.dll => 0xb4d12746 => 81
	i32 3038032645, ; 296: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 47
	i32 3057625584, ; 297: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 101
	i32 3059408633, ; 298: Mono.Android.Runtime => 0xb65adef9 => 204
	i32 3059793426, ; 299: System.ComponentModel.Primitives => 0xb660be12 => 127
	i32 3069363400, ; 300: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 52
	i32 3077302341, ; 301: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 25
	i32 3084678329, ; 302: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 69
	i32 3090735792, ; 303: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 182
	i32 3099732863, ; 304: System.Security.Claims.dll => 0xb8c22b7f => 178
	i32 3103600923, ; 305: System.Formats.Asn1 => 0xb8fd311b => 140
	i32 3121463068, ; 306: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 143
	i32 3124832203, ; 307: System.Threading.Tasks.Extensions => 0xba4127cb => 191
	i32 3132293585, ; 308: System.Security.AccessControl => 0xbab301d1 => 177
	i32 3147165239, ; 309: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 137
	i32 3158628304, ; 310: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 12
	i32 3159123045, ; 311: System.Reflection.Primitives.dll => 0xbc4c6465 => 167
	i32 3178803400, ; 312: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 102
	i32 3195844289, ; 313: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 52
	i32 3220365878, ; 314: System.Threading => 0xbff2e236 => 194
	i32 3258312781, ; 315: Xamarin.AndroidX.CardView => 0xc235e84d => 88
	i32 3265893370, ; 316: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 191
	i32 3268887220, ; 317: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 3
	i32 3276600297, ; 318: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 8
	i32 3290767353, ; 319: System.Security.Cryptography.Encoding => 0xc4251ff9 => 180
	i32 3305363605, ; 320: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 20
	i32 3312457198, ; 321: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 65
	i32 3316684772, ; 322: System.Net.Requests.dll => 0xc5b097e4 => 153
	i32 3317135071, ; 323: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 93
	i32 3343947874, ; 324: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 3
	i32 3346324047, ; 325: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 103
	i32 3357674450, ; 326: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 37
	i32 3358260929, ; 327: System.Text.Json => 0xc82afec1 => 188
	i32 3362522851, ; 328: Xamarin.AndroidX.Core => 0xc86c06e3 => 91
	i32 3366347497, ; 329: Java.Interop => 0xc8a662e9 => 203
	i32 3374879918, ; 330: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 67
	i32 3374999561, ; 331: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 105
	i32 3381016424, ; 332: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 16
	i32 3428513518, ; 333: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 56
	i32 3430777524, ; 334: netstandard => 0xcc7d82b4 => 201
	i32 3463511458, ; 335: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 24
	i32 3471940407, ; 336: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 128
	i32 3476120550, ; 337: Mono.Android => 0xcf3163e6 => 205
	i32 3479583265, ; 338: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 37
	i32 3484440000, ; 339: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 36
	i32 3485117614, ; 340: System.Text.Json.dll => 0xcfbaacae => 188
	i32 3509114376, ; 341: System.Xml.Linq => 0xd128d608 => 196
	i32 3545306353, ; 342: Microsoft.Data.SqlClient => 0xd35114f1 => 51
	i32 3555084973, ; 343: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 1
	i32 3558648585, ; 344: System.ClientModel => 0xd41cab09 => 77
	i32 3561949811, ; 345: Azure.Core.dll => 0xd44f0a73 => 48
	i32 3570554715, ; 346: System.IO.FileSystem.AccessControl => 0xd4d2575b => 143
	i32 3580758918, ; 347: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 44
	i32 3608519521, ; 348: System.Linq.dll => 0xd715a361 => 147
	i32 3624195450, ; 349: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 168
	i32 3641597786, ; 350: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 97
	i32 3643446276, ; 351: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 41
	i32 3643854240, ; 352: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 102
	i32 3657292374, ; 353: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 55
	i32 3660523487, ; 354: System.Net.NetworkInformation => 0xda2f27df => 151
	i32 3672681054, ; 355: Mono.Android.dll => 0xdae8aa5e => 205
	i32 3682565725, ; 356: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 87
	i32 3697841164, ; 357: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 46
	i32 3700591436, ; 358: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 64
	i32 3724971120, ; 359: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 101
	i32 3732100267, ; 360: System.Net.NameResolution => 0xde7354ab => 150
	i32 3748608112, ; 361: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 132
	i32 3786282454, ; 362: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 89
	i32 3792276235, ; 363: System.Collections.NonGeneric => 0xe2098b0b => 124
	i32 3802395368, ; 364: System.Collections.Specialized.dll => 0xe2a3f2e8 => 125
	i32 3803019198, ; 365: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 11
	i32 3807198597, ; 366: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 82
	i32 3823082795, ; 367: System.Security.Cryptography.dll => 0xe3df9d2b => 183
	i32 3841636137, ; 368: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 57
	i32 3848348906, ; 369: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 2
	i32 3849253459, ; 370: System.Runtime.InteropServices.dll => 0xe56ef253 => 169
	i32 3875112723, ; 371: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 180
	i32 3885497537, ; 372: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 158
	i32 3889960447, ; 373: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 45
	i32 3896106733, ; 374: System.Collections.Concurrent.dll => 0xe839deed => 122
	i32 3896760992, ; 375: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 91
	i32 3928044579, ; 376: System.Xml.ReaderWriter => 0xea213423 => 197
	i32 3931092270, ; 377: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 104
	i32 3953953790, ; 378: System.Text.Encoding.CodePages => 0xebac8bfe => 185
	i32 3955647286, ; 379: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 85
	i32 3980434154, ; 380: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 40
	i32 3987592930, ; 381: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 22
	i32 4003436829, ; 382: System.Diagnostics.Process.dll => 0xee9f991d => 133
	i32 4025784931, ; 383: System.Memory => 0xeff49a63 => 148
	i32 4046471985, ; 384: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 71
	i32 4054681211, ; 385: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 165
	i32 4064142224, ; 386: pl/Microsoft.Data.SqlClient.resources.dll => 0xf23de390 => 7
	i32 4068434129, ; 387: System.Private.Xml.Linq.dll => 0xf27f60d1 => 163
	i32 4073602200, ; 388: System.Threading.dll => 0xf2ce3c98 => 194
	i32 4094352644, ; 389: Microsoft.Maui.Essentials.dll => 0xf40add04 => 73
	i32 4099507663, ; 390: System.Drawing.dll => 0xf45985cf => 139
	i32 4100113165, ; 391: System.Private.Uri => 0xf462c30d => 162
	i32 4101842092, ; 392: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 53
	i32 4102112229, ; 393: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 35
	i32 4112757957, ; 394: Services => 0xf523b4c5 => 117
	i32 4125707920, ; 395: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 30
	i32 4126470640, ; 396: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 56
	i32 4127667938, ; 397: System.IO.FileSystem.Watcher => 0xf60736e2 => 144
	i32 4147896353, ; 398: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 165
	i32 4150914736, ; 399: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 42
	i32 4159265925, ; 400: System.Xml.XmlSerializer => 0xf7e95c85 => 199
	i32 4164802419, ; 401: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 144
	i32 4181436372, ; 402: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 174
	i32 4182413190, ; 403: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 99
	i32 4196529839, ; 404: System.Net.WebClient.dll => 0xfa21f6af => 157
	i32 4213026141, ; 405: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 132
	i32 4257443520, ; 406: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 6
	i32 4260525087, ; 407: System.Buffers => 0xfdf2741f => 121
	i32 4263231520, ; 408: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 80
	i32 4271975918, ; 409: Microsoft.Maui.Controls.dll => 0xfea12dee => 70
	i32 4274976490, ; 410: System.Runtime.Numerics => 0xfecef6ea => 171
	i32 4292120959 ; 411: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 99
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [412 x i32] [
	i32 151, ; 0
	i32 150, ; 1
	i32 76, ; 2
	i32 192, ; 3
	i32 4, ; 4
	i32 5, ; 5
	i32 114, ; 6
	i32 134, ; 7
	i32 46, ; 8
	i32 181, ; 9
	i32 74, ; 10
	i32 169, ; 11
	i32 190, ; 12
	i32 5, ; 13
	i32 158, ; 14
	i32 181, ; 15
	i32 89, ; 16
	i32 9, ; 17
	i32 107, ; 18
	i32 43, ; 19
	i32 44, ; 20
	i32 129, ; 21
	i32 87, ; 22
	i32 119, ; 23
	i32 166, ; 24
	i32 11, ; 25
	i32 15, ; 26
	i32 43, ; 27
	i32 84, ; 28
	i32 75, ; 29
	i32 28, ; 30
	i32 96, ; 31
	i32 27, ; 32
	i32 7, ; 33
	i32 145, ; 34
	i32 195, ; 35
	i32 155, ; 36
	i32 192, ; 37
	i32 148, ; 38
	i32 193, ; 39
	i32 47, ; 40
	i32 10, ; 41
	i32 39, ; 42
	i32 126, ; 43
	i32 95, ; 44
	i32 182, ; 45
	i32 174, ; 46
	i32 200, ; 47
	i32 64, ; 48
	i32 160, ; 49
	i32 26, ; 50
	i32 20, ; 51
	i32 61, ; 52
	i32 113, ; 53
	i32 58, ; 54
	i32 175, ; 55
	i32 50, ; 56
	i32 34, ; 57
	i32 179, ; 58
	i32 93, ; 59
	i32 32, ; 60
	i32 187, ; 61
	i32 122, ; 62
	i32 154, ; 63
	i32 14, ; 64
	i32 196, ; 65
	i32 117, ; 66
	i32 29, ; 67
	i32 82, ; 68
	i32 17, ; 69
	i32 170, ; 70
	i32 77, ; 71
	i32 153, ; 72
	i32 145, ; 73
	i32 142, ; 74
	i32 38, ; 75
	i32 60, ; 76
	i32 131, ; 77
	i32 162, ; 78
	i32 141, ; 79
	i32 127, ; 80
	i32 114, ; 81
	i32 41, ; 82
	i32 76, ; 83
	i32 96, ; 84
	i32 137, ; 85
	i32 198, ; 86
	i32 161, ; 87
	i32 126, ; 88
	i32 106, ; 89
	i32 139, ; 90
	i32 57, ; 91
	i32 16, ; 92
	i32 85, ; 93
	i32 138, ; 94
	i32 146, ; 95
	i32 1, ; 96
	i32 98, ; 97
	i32 63, ; 98
	i32 128, ; 99
	i32 111, ; 100
	i32 79, ; 101
	i32 200, ; 102
	i32 29, ; 103
	i32 51, ; 104
	i32 35, ; 105
	i32 103, ; 106
	i32 33, ; 107
	i32 53, ; 108
	i32 133, ; 109
	i32 31, ; 110
	i32 15, ; 111
	i32 94, ; 112
	i32 161, ; 113
	i32 0, ; 114
	i32 147, ; 115
	i32 173, ; 116
	i32 45, ; 117
	i32 106, ; 118
	i32 90, ; 119
	i32 172, ; 120
	i32 13, ; 121
	i32 140, ; 122
	i32 154, ; 123
	i32 80, ; 124
	i32 19, ; 125
	i32 123, ; 126
	i32 142, ; 127
	i32 86, ; 128
	i32 113, ; 129
	i32 61, ; 130
	i32 123, ; 131
	i32 141, ; 132
	i32 120, ; 133
	i32 23, ; 134
	i32 65, ; 135
	i32 18, ; 136
	i32 135, ; 137
	i32 189, ; 138
	i32 38, ; 139
	i32 173, ; 140
	i32 49, ; 141
	i32 12, ; 142
	i32 157, ; 143
	i32 100, ; 144
	i32 109, ; 145
	i32 68, ; 146
	i32 92, ; 147
	i32 149, ; 148
	i32 189, ; 149
	i32 118, ; 150
	i32 176, ; 151
	i32 110, ; 152
	i32 152, ; 153
	i32 183, ; 154
	i32 115, ; 155
	i32 88, ; 156
	i32 36, ; 157
	i32 14, ; 158
	i32 195, ; 159
	i32 120, ; 160
	i32 136, ; 161
	i32 107, ; 162
	i32 58, ; 163
	i32 204, ; 164
	i32 30, ; 165
	i32 95, ; 166
	i32 22, ; 167
	i32 62, ; 168
	i32 50, ; 169
	i32 100, ; 170
	i32 111, ; 171
	i32 110, ; 172
	i32 104, ; 173
	i32 186, ; 174
	i32 172, ; 175
	i32 59, ; 176
	i32 42, ; 177
	i32 39, ; 178
	i32 146, ; 179
	i32 167, ; 180
	i32 68, ; 181
	i32 21, ; 182
	i32 124, ; 183
	i32 163, ; 184
	i32 54, ; 185
	i32 115, ; 186
	i32 69, ; 187
	i32 18, ; 188
	i32 121, ; 189
	i32 98, ; 190
	i32 13, ; 191
	i32 63, ; 192
	i32 164, ; 193
	i32 97, ; 194
	i32 17, ; 195
	i32 136, ; 196
	i32 176, ; 197
	i32 159, ; 198
	i32 130, ; 199
	i32 125, ; 200
	i32 199, ; 201
	i32 72, ; 202
	i32 25, ; 203
	i32 60, ; 204
	i32 59, ; 205
	i32 160, ; 206
	i32 112, ; 207
	i32 149, ; 208
	i32 27, ; 209
	i32 8, ; 210
	i32 116, ; 211
	i32 67, ; 212
	i32 177, ; 213
	i32 55, ; 214
	i32 21, ; 215
	i32 105, ; 216
	i32 116, ; 217
	i32 156, ; 218
	i32 31, ; 219
	i32 202, ; 220
	i32 6, ; 221
	i32 168, ; 222
	i32 152, ; 223
	i32 197, ; 224
	i32 66, ; 225
	i32 54, ; 226
	i32 184, ; 227
	i32 118, ; 228
	i32 26, ; 229
	i32 23, ; 230
	i32 130, ; 231
	i32 156, ; 232
	i32 201, ; 233
	i32 203, ; 234
	i32 70, ; 235
	i32 155, ; 236
	i32 79, ; 237
	i32 166, ; 238
	i32 24, ; 239
	i32 119, ; 240
	i32 187, ; 241
	i32 186, ; 242
	i32 193, ; 243
	i32 33, ; 244
	i32 112, ; 245
	i32 164, ; 246
	i32 92, ; 247
	i32 28, ; 248
	i32 135, ; 249
	i32 81, ; 250
	i32 66, ; 251
	i32 48, ; 252
	i32 83, ; 253
	i32 170, ; 254
	i32 198, ; 255
	i32 138, ; 256
	i32 131, ; 257
	i32 49, ; 258
	i32 10, ; 259
	i32 175, ; 260
	i32 178, ; 261
	i32 171, ; 262
	i32 84, ; 263
	i32 190, ; 264
	i32 86, ; 265
	i32 62, ; 266
	i32 34, ; 267
	i32 75, ; 268
	i32 71, ; 269
	i32 72, ; 270
	i32 185, ; 271
	i32 108, ; 272
	i32 40, ; 273
	i32 74, ; 274
	i32 2, ; 275
	i32 19, ; 276
	i32 90, ; 277
	i32 32, ; 278
	i32 4, ; 279
	i32 108, ; 280
	i32 73, ; 281
	i32 83, ; 282
	i32 0, ; 283
	i32 202, ; 284
	i32 109, ; 285
	i32 159, ; 286
	i32 134, ; 287
	i32 78, ; 288
	i32 129, ; 289
	i32 184, ; 290
	i32 179, ; 291
	i32 94, ; 292
	i32 78, ; 293
	i32 9, ; 294
	i32 81, ; 295
	i32 47, ; 296
	i32 101, ; 297
	i32 204, ; 298
	i32 127, ; 299
	i32 52, ; 300
	i32 25, ; 301
	i32 69, ; 302
	i32 182, ; 303
	i32 178, ; 304
	i32 140, ; 305
	i32 143, ; 306
	i32 191, ; 307
	i32 177, ; 308
	i32 137, ; 309
	i32 12, ; 310
	i32 167, ; 311
	i32 102, ; 312
	i32 52, ; 313
	i32 194, ; 314
	i32 88, ; 315
	i32 191, ; 316
	i32 3, ; 317
	i32 8, ; 318
	i32 180, ; 319
	i32 20, ; 320
	i32 65, ; 321
	i32 153, ; 322
	i32 93, ; 323
	i32 3, ; 324
	i32 103, ; 325
	i32 37, ; 326
	i32 188, ; 327
	i32 91, ; 328
	i32 203, ; 329
	i32 67, ; 330
	i32 105, ; 331
	i32 16, ; 332
	i32 56, ; 333
	i32 201, ; 334
	i32 24, ; 335
	i32 128, ; 336
	i32 205, ; 337
	i32 37, ; 338
	i32 36, ; 339
	i32 188, ; 340
	i32 196, ; 341
	i32 51, ; 342
	i32 1, ; 343
	i32 77, ; 344
	i32 48, ; 345
	i32 143, ; 346
	i32 44, ; 347
	i32 147, ; 348
	i32 168, ; 349
	i32 97, ; 350
	i32 41, ; 351
	i32 102, ; 352
	i32 55, ; 353
	i32 151, ; 354
	i32 205, ; 355
	i32 87, ; 356
	i32 46, ; 357
	i32 64, ; 358
	i32 101, ; 359
	i32 150, ; 360
	i32 132, ; 361
	i32 89, ; 362
	i32 124, ; 363
	i32 125, ; 364
	i32 11, ; 365
	i32 82, ; 366
	i32 183, ; 367
	i32 57, ; 368
	i32 2, ; 369
	i32 169, ; 370
	i32 180, ; 371
	i32 158, ; 372
	i32 45, ; 373
	i32 122, ; 374
	i32 91, ; 375
	i32 197, ; 376
	i32 104, ; 377
	i32 185, ; 378
	i32 85, ; 379
	i32 40, ; 380
	i32 22, ; 381
	i32 133, ; 382
	i32 148, ; 383
	i32 71, ; 384
	i32 165, ; 385
	i32 7, ; 386
	i32 163, ; 387
	i32 194, ; 388
	i32 73, ; 389
	i32 139, ; 390
	i32 162, ; 391
	i32 53, ; 392
	i32 35, ; 393
	i32 117, ; 394
	i32 30, ; 395
	i32 56, ; 396
	i32 144, ; 397
	i32 165, ; 398
	i32 42, ; 399
	i32 199, ; 400
	i32 144, ; 401
	i32 174, ; 402
	i32 99, ; 403
	i32 157, ; 404
	i32 132, ; 405
	i32 6, ; 406
	i32 121, ; 407
	i32 80, ; 408
	i32 70, ; 409
	i32 171, ; 410
	i32 99 ; 411
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
