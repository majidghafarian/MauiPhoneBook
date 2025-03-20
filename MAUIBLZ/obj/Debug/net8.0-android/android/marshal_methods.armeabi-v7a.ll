; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [389 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [772 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 306
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 340
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 6: Newtonsoft.Json.dll => 0x254c520 => 254
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 65960268, ; 9: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 253
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 11: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 381
	i32 68219467, ; 12: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 250
	i32 82292897, ; 14: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 98325684, ; 15: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 222
	i32 101534019, ; 16: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 324
	i32 117431740, ; 17: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 18: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 324
	i32 122350210, ; 19: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 20: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 344
	i32 142721839, ; 21: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 22: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 23: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 24: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 280
	i32 176265551, ; 25: System.ServiceProcess => 0xa81994f => 132
	i32 176714968, ; 26: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 206
	i32 182336117, ; 27: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 326
	i32 184328833, ; 28: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 29: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 378
	i32 199333315, ; 30: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 379
	i32 205061960, ; 31: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 32: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 278
	i32 220171995, ; 33: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221063263, ; 34: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 192
	i32 230216969, ; 35: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 300
	i32 230752869, ; 36: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 37: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 38: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 39: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 40: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 181
	i32 261689757, ; 41: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 283
	i32 276479776, ; 42: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 302
	i32 280482487, ; 44: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 299
	i32 280992041, ; 45: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 350
	i32 291076382, ; 46: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 47: System.Net.Ping.dll => 0x11d123fd => 69
	i32 300686228, ; 48: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 178
	i32 317674968, ; 49: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 378
	i32 318968648, ; 50: Xamarin.AndroidX.Activity.dll => 0x13031348 => 269
	i32 321597661, ; 51: System.Numerics => 0x132b30dd => 83
	i32 330147069, ; 52: Microsoft.SqlServer.Server => 0x13ada4fd => 252
	i32 336156722, ; 53: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 363
	i32 342366114, ; 54: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 301
	i32 348048101, ; 55: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 193
	i32 356389973, ; 56: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 362
	i32 360082299, ; 57: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 58: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 59: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 60: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 61: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 384051609, ; 62: Microsoft.AspNetCore.Routing.dll => 0x16e42999 => 197
	i32 385762202, ; 63: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 64: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 65: _Microsoft.Android.Resource.Designer => 0x17969339 => 385
	i32 403441872, ; 66: WindowsBase => 0x180c08d0 => 165
	i32 417611542, ; 67: Microsoft.AspNetCore.WebSockets.dll => 0x18e43f16 => 205
	i32 435591531, ; 68: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 374
	i32 441335492, ; 69: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 284
	i32 442565967, ; 70: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 71: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 297
	i32 451504562, ; 72: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 73: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 457806524, ; 74: Application => 0x1b4992bc => 382
	i32 458494020, ; 75: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 202
	i32 459347974, ; 76: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 77: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 78: System.dll => 0x1bff388e => 164
	i32 476646585, ; 79: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 299
	i32 485463106, ; 80: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 238
	i32 486930444, ; 81: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 312
	i32 490002678, ; 82: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 188
	i32 498788369, ; 83: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 84: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 361
	i32 503918385, ; 85: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 355
	i32 513247710, ; 86: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 235
	i32 526420162, ; 87: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 88: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 344
	i32 530272170, ; 89: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 90: Microsoft.Extensions.Logging => 0x20216150 => 230
	i32 540030774, ; 91: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 92: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 93: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 94: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 207
	i32 549171840, ; 95: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 96: Jsr305Binding => 0x213954e7 => 337
	i32 569601784, ; 97: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 335
	i32 571435654, ; 98: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 226
	i32 577335427, ; 99: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 100: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 369
	i32 601371474, ; 101: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 102: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 103: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 104: Xamarin.AndroidX.CustomView => 0x2568904f => 289
	i32 627931235, ; 105: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 367
	i32 639843206, ; 106: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 295
	i32 643868501, ; 107: System.Net => 0x2660a755 => 81
	i32 662205335, ; 108: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 109: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 331
	i32 666292255, ; 110: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 276
	i32 672442732, ; 111: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 112: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 113: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 349
	i32 690569205, ; 114: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 115: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 346
	i32 693804605, ; 116: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 117: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 118: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 341
	i32 700358131, ; 119: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 120: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 364
	i32 709557578, ; 121: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 352
	i32 720511267, ; 122: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 345
	i32 722857257, ; 123: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 724146010, ; 124: Microsoft.AspNetCore.Authorization.Policy.dll => 0x2b29975a => 180
	i32 735137430, ; 125: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 126: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 127: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 266
	i32 759454413, ; 128: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 129: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 130: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 131: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 373
	i32 789151979, ; 132: Microsoft.Extensions.Options => 0x2f0980eb => 234
	i32 790371945, ; 133: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 290
	i32 804008546, ; 134: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 185
	i32 804715423, ; 135: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 136: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 304
	i32 809851609, ; 137: System.Drawing.Common.dll => 0x30455ad9 => 256
	i32 823281589, ; 138: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 139: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 140: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 832711436, ; 141: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 204
	i32 834051424, ; 142: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 143: Xamarin.AndroidX.Print => 0x3246f6cd => 317
	i32 873119928, ; 144: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 145: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 146: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 147: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 148: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 149: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 376
	i32 928116545, ; 150: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 340
	i32 952186615, ; 151: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 152: Newtonsoft.Json => 0x38f24a24 => 254
	i32 956575887, ; 153: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 345
	i32 966729478, ; 154: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 338
	i32 967690846, ; 155: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 301
	i32 975236339, ; 156: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 157: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 158: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 159: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 160: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 161: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 162: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 228
	i32 1001831731, ; 163: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 164: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 321
	i32 1019214401, ; 165: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 166: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 221
	i32 1029334545, ; 167: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 351
	i32 1031528504, ; 168: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 339
	i32 1035644815, ; 169: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 274
	i32 1036536393, ; 170: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 171: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1046434417, ; 172: Domain.dll => 0x3e5f5271 => 383
	i32 1048992957, ; 173: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 222
	i32 1052210849, ; 174: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 308
	i32 1058641855, ; 175: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 193
	i32 1062017875, ; 176: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 237
	i32 1067306892, ; 177: GoogleGson => 0x3f9dcf8c => 177
	i32 1082857460, ; 178: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 179: Xamarin.Kotlin.StdLib => 0x409e66d8 => 342
	i32 1098259244, ; 180: System => 0x41761b2c => 164
	i32 1106973742, ; 181: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 218
	i32 1110309514, ; 182: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 229
	i32 1112354281, ; 183: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 178
	i32 1118262833, ; 184: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 364
	i32 1121599056, ; 185: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 307
	i32 1127624469, ; 186: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 232
	i32 1138436374, ; 187: Microsoft.Data.SqlClient.dll => 0x43db2916 => 208
	i32 1145483052, ; 188: System.Windows.Extensions.dll => 0x4446af2c => 264
	i32 1149092582, ; 189: Xamarin.AndroidX.Window => 0x447dc2e6 => 334
	i32 1157931901, ; 190: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 210
	i32 1168523401, ; 191: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 370
	i32 1170634674, ; 192: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 193: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 224
	i32 1175144683, ; 194: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 330
	i32 1178241025, ; 195: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 315
	i32 1202000627, ; 196: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 210
	i32 1203215381, ; 197: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 368
	i32 1204270330, ; 198: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 276
	i32 1204575371, ; 199: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 214
	i32 1208641965, ; 200: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 201: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1220193633, ; 202: Microsoft.Net.Http.Headers => 0x48baad61 => 251
	i32 1233093933, ; 203: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 201
	i32 1234928153, ; 204: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 366
	i32 1236289705, ; 205: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 188
	i32 1243150071, ; 206: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 335
	i32 1253011324, ; 207: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 208: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 350
	i32 1264511973, ; 209: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 325
	i32 1267360935, ; 210: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 329
	i32 1267908789, ; 211: Microsoft.AspNetCore.Routing => 0x4b92c0b5 => 197
	i32 1273260888, ; 212: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 281
	i32 1275534314, ; 213: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 346
	i32 1278448581, ; 214: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 273
	i32 1293217323, ; 215: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 292
	i32 1309188875, ; 216: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 217: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 334
	i32 1324164729, ; 218: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 219: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1356351372, ; 220: MAUIBLZ => 0x50d8478c => 0
	i32 1364015309, ; 221: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 222: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 380
	i32 1376866003, ; 223: Xamarin.AndroidX.SavedState => 0x52114ed3 => 321
	i32 1379779777, ; 224: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 225: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 226: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 285
	i32 1408764838, ; 227: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 228: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1414043276, ; 229: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 186
	i32 1422545099, ; 230: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 231: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 348
	i32 1434145427, ; 232: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 233: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 338
	i32 1439761251, ; 234: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 235: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1452416952, ; 236: AutoMapper => 0x56921fb8 => 173
	i32 1453312822, ; 237: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 238: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 225
	i32 1457743152, ; 239: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 240: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 241: System.IdentityModel.Tokens.Jwt => 0x57137723 => 257
	i32 1461004990, ; 242: es\Microsoft.Maui.Controls.resources => 0x57152abe => 354
	i32 1461234159, ; 243: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 244: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 245: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 246: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 275
	i32 1470490898, ; 247: Microsoft.Extensions.Primitives => 0x57a5e912 => 235
	i32 1479771757, ; 248: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 249: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1486966743, ; 250: Microsoft.AspNetCore.SignalR => 0x58a14fd7 => 199
	i32 1487239319, ; 251: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 252: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 322
	i32 1493001747, ; 253: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 358
	i32 1498168481, ; 254: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 239
	i32 1514721132, ; 255: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 353
	i32 1521091094, ; 256: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 228
	i32 1536373174, ; 257: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 258: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 259: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 260: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 185
	i32 1550322496, ; 261: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1550813921, ; 262: AutoMapper.Extensions.Microsoft.DependencyInjection.dll => 0x5c6f8ae1 => 174
	i32 1551623176, ; 263: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 373
	i32 1565310744, ; 264: System.Runtime.Caching => 0x5d4cbf18 => 261
	i32 1565862583, ; 265: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 266: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 267: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 268: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 269: Azure.Identity => 0x5e501131 => 176
	i32 1582372066, ; 270: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 291
	i32 1592978981, ; 271: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 272: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 339
	i32 1601112923, ; 273: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 274: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 275: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 276: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 311
	i32 1622358360, ; 277: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 278: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 333
	i32 1628113371, ; 279: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 242
	i32 1632842087, ; 280: Microsoft.Extensions.Configuration.Json => 0x61533167 => 219
	i32 1635184631, ; 281: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 295
	i32 1636350590, ; 282: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 288
	i32 1639515021, ; 283: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 284: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 285: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 286: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 184
	i32 1657153582, ; 287: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 288: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 327
	i32 1658251792, ; 289: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 336
	i32 1670060433, ; 290: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 283
	i32 1675553242, ; 291: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 292: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 293: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 294: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1689493916, ; 295: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 209
	i32 1691477237, ; 296: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 297: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 298: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 343
	i32 1701541528, ; 299: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 300: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 304
	i32 1726116996, ; 301: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 302: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 303: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 279
	i32 1736233607, ; 304: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 371
	i32 1743415430, ; 305: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 349
	i32 1744735666, ; 306: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746115085, ; 307: System.IO.Pipelines.dll => 0x68139a0d => 258
	i32 1746316138, ; 308: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 309: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 310: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1760259689, ; 311: Microsoft.AspNetCore.Components.Web.dll => 0x68eb6e69 => 183
	i32 1763938596, ; 312: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 313: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 314: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 326
	i32 1770582343, ; 315: Microsoft.Extensions.Logging.dll => 0x6988f147 => 230
	i32 1776026572, ; 316: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 317: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 318: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 319: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 365
	i32 1788241197, ; 320: Xamarin.AndroidX.Fragment => 0x6a96652d => 297
	i32 1793755602, ; 321: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 357
	i32 1794500907, ; 322: Microsoft.Identity.Client.dll => 0x6af5e92b => 236
	i32 1796167890, ; 323: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 207
	i32 1808609942, ; 324: Xamarin.AndroidX.Loader => 0x6bcd3296 => 311
	i32 1813058853, ; 325: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 342
	i32 1813201214, ; 326: Xamarin.Google.Android.Material => 0x6c13413e => 336
	i32 1818569960, ; 327: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 316
	i32 1818787751, ; 328: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1819327070, ; 329: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 195
	i32 1824175904, ; 330: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 331: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 332: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 231
	i32 1829150748, ; 333: System.Windows.Extensions => 0x6d06a01c => 264
	i32 1842015223, ; 334: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 377
	i32 1847515442, ; 335: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 266
	i32 1853025655, ; 336: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 374
	i32 1858542181, ; 337: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 338: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 339: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 242
	i32 1875935024, ; 340: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 356
	i32 1879696579, ; 341: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 342: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 277
	i32 1888955245, ; 343: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 344: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 345: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 346: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 347: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1919899850, ; 348: Infrastructure.dll => 0x726f58ca => 384
	i32 1928288591, ; 349: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 190
	i32 1939592360, ; 350: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1945717188, ; 351: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 201
	i32 1956758971, ; 352: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 353: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 323
	i32 1967334205, ; 354: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 202
	i32 1968388702, ; 355: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 215
	i32 1983156543, ; 356: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 343
	i32 1985761444, ; 357: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 268
	i32 1986222447, ; 358: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 243
	i32 2003115576, ; 359: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 353
	i32 2011961780, ; 360: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 361: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 308
	i32 2025202353, ; 362: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 348
	i32 2031445118, ; 363: AutoMapper.dll => 0x7915647e => 173
	i32 2031763787, ; 364: Xamarin.Android.Glide => 0x791a414b => 265
	i32 2040764568, ; 365: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 237
	i32 2045470958, ; 366: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 367: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 217
	i32 2055257422, ; 368: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 303
	i32 2060060697, ; 369: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 370: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 352
	i32 2070888862, ; 371: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 372: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 227
	i32 2075706075, ; 373: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 190
	i32 2079903147, ; 374: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 375: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 376: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 377: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 378: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 379: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 380: Microsoft.Maui => 0x80bd55ad => 248
	i32 2169148018, ; 381: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 360
	i32 2179096858, ; 382: Microsoft.AspNetCore.Http.Connections => 0x81e2611a => 191
	i32 2181898931, ; 383: Microsoft.Extensions.Options.dll => 0x820d22b3 => 234
	i32 2192057212, ; 384: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 231
	i32 2193016926, ; 385: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 386: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 347
	i32 2201231467, ; 387: System.Net.Http => 0x8334206b => 64
	i32 2204417087, ; 388: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 233
	i32 2207618523, ; 389: it\Microsoft.Maui.Controls.resources => 0x839595db => 362
	i32 2217644978, ; 390: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 330
	i32 2222056684, ; 391: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2229158877, ; 392: Microsoft.Extensions.Features.dll => 0x84de43dd => 223
	i32 2242871324, ; 393: Microsoft.AspNetCore.Http.dll => 0x85af801c => 189
	i32 2244775296, ; 394: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 312
	i32 2252106437, ; 395: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2252897993, ; 396: Microsoft.EntityFrameworkCore => 0x86487ec9 => 209
	i32 2253551641, ; 397: Microsoft.IdentityModel.Protocols => 0x86527819 => 241
	i32 2256313426, ; 398: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 399: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 400: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 216
	i32 2267999099, ; 401: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 267
	i32 2270573516, ; 402: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 356
	i32 2279755925, ; 403: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 319
	i32 2293034957, ; 404: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 405: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 406: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 407: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 366
	i32 2305521784, ; 408: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 409: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 271
	i32 2319144366, ; 410: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 200
	i32 2320631194, ; 411: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 412: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 413: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 414: System.Net.Primitives => 0x8c40e0db => 70
	i32 2363376857, ; 415: Application.dll => 0x8cde44d9 => 382
	i32 2368005991, ; 416: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 417: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 240
	i32 2371007202, ; 418: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 215
	i32 2378619854, ; 419: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 420: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 421: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 361
	i32 2400516001, ; 422: Domain => 0x8f14f7a1 => 383
	i32 2401565422, ; 423: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 424: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 294
	i32 2411328690, ; 425: Microsoft.AspNetCore.Components => 0x8fb9f4b2 => 181
	i32 2412485197, ; 426: Infrastructure => 0x8fcb9a4d => 384
	i32 2421380589, ; 427: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 428: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 281
	i32 2427813419, ; 429: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 358
	i32 2435356389, ; 430: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 431: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2442556106, ; 432: Microsoft.JSInterop.dll => 0x919672ca => 244
	i32 2454642406, ; 433: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 434: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 435: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 436: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 284
	i32 2471841756, ; 437: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 438: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 439: Microsoft.Maui.Controls => 0x93dba8a1 => 246
	i32 2483903535, ; 440: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 441: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 442: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 443: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 444: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 306
	i32 2522472828, ; 445: Xamarin.Android.Glide.dll => 0x9659e17c => 265
	i32 2537015816, ; 446: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 179
	i32 2538310050, ; 447: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 448: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 359
	i32 2562349572, ; 449: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 450: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 451: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 307
	i32 2581819634, ; 452: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 329
	i32 2585220780, ; 453: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 454: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 455: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 182
	i32 2589602615, ; 456: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 457: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 224
	i32 2593268061, ; 458: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 198
	i32 2593496499, ; 459: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 368
	i32 2594125473, ; 460: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 187
	i32 2605712449, ; 461: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 347
	i32 2615233544, ; 462: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 298
	i32 2616218305, ; 463: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 232
	i32 2617129537, ; 464: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 465: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 466: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 288
	i32 2624644809, ; 467: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 293
	i32 2626831493, ; 468: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 363
	i32 2627185994, ; 469: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 470: System.Memory.Data => 0x9ca74fdc => 259
	i32 2629843544, ; 471: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 472: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 302
	i32 2633959305, ; 473: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 194
	i32 2634653062, ; 474: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 211
	i32 2637500010, ; 475: Microsoft.Extensions.Features => 0x9d350e6a => 223
	i32 2640290731, ; 476: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 240
	i32 2640706905, ; 477: Azure.Core => 0x9d65fd59 => 175
	i32 2642291320, ; 478: System.Net.WebSockets.WebSocketProtocol.dll => 0x9d7e2a78 => 260
	i32 2660759594, ; 479: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 262
	i32 2663391936, ; 480: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 267
	i32 2663698177, ; 481: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 482: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 483: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 484: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 485: Azure.Identity.dll => 0x9f9148fa => 176
	i32 2686887180, ; 486: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 487: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 184
	i32 2693849962, ; 488: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 489: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 327
	i32 2715334215, ; 490: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 491: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 492: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 493: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 494: Xamarin.AndroidX.Activity => 0xa2e0939b => 269
	i32 2735172069, ; 495: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 496: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 179
	i32 2737747696, ; 497: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 275
	i32 2740051746, ; 498: Microsoft.Identity.Client => 0xa351df22 => 236
	i32 2740948882, ; 499: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 500: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 501: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 369
	i32 2755098380, ; 502: Microsoft.SqlServer.Server.dll => 0xa437770c => 252
	i32 2755643133, ; 503: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 212
	i32 2758225723, ; 504: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 247
	i32 2764765095, ; 505: Microsoft.Maui.dll => 0xa4caf7a7 => 248
	i32 2765824710, ; 506: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 507: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 341
	i32 2778768386, ; 508: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 332
	i32 2779977773, ; 509: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 320
	i32 2785988530, ; 510: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 375
	i32 2788224221, ; 511: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 298
	i32 2795666278, ; 512: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 253
	i32 2801831435, ; 513: Microsoft.Maui.Graphics => 0xa7008e0b => 250
	i32 2803228030, ; 514: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 515: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 354
	i32 2810250172, ; 516: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 285
	i32 2819470561, ; 517: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 518: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 519: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 320
	i32 2824502124, ; 520: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 521: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 367
	i32 2833784645, ; 522: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 196
	i32 2838993487, ; 523: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 309
	i32 2841355853, ; 524: System.Security.Permissions => 0xa95ba64d => 263
	i32 2847789619, ; 525: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 211
	i32 2849599387, ; 526: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2850549256, ; 527: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 195
	i32 2853208004, ; 528: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 332
	i32 2855708567, ; 529: Xamarin.AndroidX.Transition => 0xaa36a797 => 328
	i32 2861098320, ; 530: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 531: Microsoft.Maui.Essentials => 0xaa8a4878 => 249
	i32 2867946736, ; 532: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 262
	i32 2870099610, ; 533: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 270
	i32 2875164099, ; 534: Jsr305Binding.dll => 0xab5f85c3 => 337
	i32 2875220617, ; 535: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2875347124, ; 536: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 192
	i32 2884993177, ; 537: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 296
	i32 2887636118, ; 538: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 539: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 183
	i32 2899753641, ; 540: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 541: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 542: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 543: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 544: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 545: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 227
	i32 2916838712, ; 546: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 333
	i32 2919462931, ; 547: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 548: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 272
	i32 2930166128, ; 549: Microsoft.AspNetCore.SignalR.dll => 0xaea6c970 => 199
	i32 2936416060, ; 550: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 551: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 552: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 553: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 255
	i32 2959614098, ; 554: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 555: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 556: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978368250, ; 557: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 187
	i32 2978675010, ; 558: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 292
	i32 2987532451, ; 559: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 323
	i32 2996646946, ; 560: Microsoft.AspNetCore.Http => 0xb29d3422 => 189
	i32 2996846495, ; 561: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 305
	i32 3012788804, ; 562: System.Configuration.ConfigurationManager => 0xb3938244 => 255
	i32 3016983068, ; 563: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 325
	i32 3023353419, ; 564: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 565: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 300
	i32 3033605958, ; 566: System.Memory.Data.dll => 0xb4d12746 => 259
	i32 3036999524, ; 567: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 194
	i32 3038032645, ; 568: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 385
	i32 3056245963, ; 569: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 322
	i32 3057625584, ; 570: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 313
	i32 3059408633, ; 571: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 572: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 573: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 213
	i32 3075834255, ; 574: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 575: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 360
	i32 3084678329, ; 576: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 243
	i32 3090735792, ; 577: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 578: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 579: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 580: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3113762169, ; 581: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 198
	i32 3121463068, ; 582: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 583: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 584: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 585: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 586: GoogleGson.dll => 0xbba64c02 => 177
	i32 3159123045, ; 587: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 588: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 589: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 314
	i32 3180757527, ; 590: Microsoft.AspNetCore.WebSockets => 0xbd968217 => 205
	i32 3192346100, ; 591: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 592: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 593: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 213
	i32 3204380047, ; 594: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 595: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 596: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 291
	i32 3213246214, ; 597: System.Security.Permissions.dll => 0xbf863f06 => 263
	i32 3220365878, ; 598: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 599: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 600: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 601: Xamarin.AndroidX.CardView => 0xc235e84d => 279
	i32 3265493905, ; 602: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 603: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 604: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 605: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 606: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3287939112, ; 607: AutoMapper.Extensions.Microsoft.DependencyInjection => 0xc3f9f828 => 174
	i32 3290767353, ; 608: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 609: System.Text.Encoding => 0xc4a8494a => 135
	i32 3300764913, ; 610: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 206
	i32 3303498502, ; 611: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 612: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 355
	i32 3312457198, ; 613: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 239
	i32 3316684772, ; 614: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 615: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 289
	i32 3317144872, ; 616: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 617: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 277
	i32 3345895724, ; 618: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 318
	i32 3346324047, ; 619: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 315
	i32 3357674450, ; 620: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 372
	i32 3358260929, ; 621: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 622: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 270
	i32 3362522851, ; 623: Xamarin.AndroidX.Core => 0xc86c06e3 => 286
	i32 3366347497, ; 624: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 625: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 241
	i32 3374999561, ; 626: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 319
	i32 3381016424, ; 627: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 351
	i32 3395150330, ; 628: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 629: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 630: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 290
	i32 3406629867, ; 631: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 225
	i32 3421170118, ; 632: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 217
	i32 3428513518, ; 633: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 220
	i32 3429136800, ; 634: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 635: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 636: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 293
	i32 3445260447, ; 637: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 638: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 245
	i32 3463511458, ; 639: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 359
	i32 3464190856, ; 640: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 182
	i32 3465108994, ; 641: MAUIBLZ.dll => 0xce895e02 => 0
	i32 3466904072, ; 642: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 200
	i32 3471940407, ; 643: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 644: Mono.Android => 0xcf3163e6 => 171
	i32 3476505041, ; 645: Microsoft.AspNetCore.SignalR.Core => 0xcf3741d1 => 203
	i32 3479583265, ; 646: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 372
	i32 3484440000, ; 647: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 371
	i32 3485117614, ; 648: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 649: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 650: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 282
	i32 3500000672, ; 651: Microsoft.JSInterop => 0xd09dc5a0 => 244
	i32 3509114376, ; 652: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 653: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 654: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 655: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3545306353, ; 656: Microsoft.Data.SqlClient => 0xd35114f1 => 208
	i32 3560100363, ; 657: System.Threading.Timer => 0xd432d20b => 147
	i32 3561949811, ; 658: Azure.Core.dll => 0xd44f0a73 => 175
	i32 3570554715, ; 659: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3570608287, ; 660: System.Runtime.Caching.dll => 0xd4d3289f => 261
	i32 3580758918, ; 661: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 379
	i32 3594787188, ; 662: System.Net.WebSockets.WebSocketProtocol => 0xd6441974 => 260
	i32 3597029428, ; 663: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 268
	i32 3598340787, ; 664: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 665: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 666: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 667: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 317
	i32 3633644679, ; 668: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 272
	i32 3638274909, ; 669: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 670: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 303
	i32 3643446276, ; 671: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 376
	i32 3643854240, ; 672: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 314
	i32 3645089577, ; 673: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 674: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 216
	i32 3660523487, ; 675: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 676: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3679340867, ; 677: Microsoft.AspNetCore.Http.Connections.dll => 0xdb4e4943 => 191
	i32 3682565725, ; 678: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 278
	i32 3684561358, ; 679: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 282
	i32 3689375977, ; 680: System.Drawing.Common => 0xdbe768e9 => 256
	i32 3691870036, ; 681: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 204
	i32 3697841164, ; 682: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 381
	i32 3700591436, ; 683: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 238
	i32 3700866549, ; 684: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 685: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 287
	i32 3716563718, ; 686: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 687: Xamarin.AndroidX.Annotation => 0xdda814c6 => 271
	i32 3722202641, ; 688: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 219
	i32 3724971120, ; 689: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 313
	i32 3732100267, ; 690: System.Net.NameResolution => 0xde7354ab => 67
	i32 3732214720, ; 691: Microsoft.AspNetCore.Metadata.dll => 0xde7513c0 => 196
	i32 3737834244, ; 692: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 693: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 694: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3758424670, ; 695: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 218
	i32 3765508441, ; 696: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 233
	i32 3786282454, ; 697: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 280
	i32 3787005001, ; 698: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 186
	i32 3792276235, ; 699: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 700: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 245
	i32 3802395368, ; 701: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 702: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 703: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 704: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 705: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 221
	i32 3844307129, ; 706: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 707: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 708: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 709: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 710: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 711: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 712: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 328
	i32 3888767677, ; 713: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 318
	i32 3889960447, ; 714: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 380
	i32 3896106733, ; 715: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 716: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 286
	i32 3901907137, ; 717: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 718: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 719: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 331
	i32 3928044579, ; 720: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 721: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 722: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 316
	i32 3945713374, ; 723: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 724: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 725: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 274
	i32 3959773229, ; 726: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 305
	i32 3980434154, ; 727: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 375
	i32 3987592930, ; 728: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 357
	i32 4003436829, ; 729: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 730: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 273
	i32 4023392905, ; 731: System.IO.Pipelines => 0xefd01a89 => 258
	i32 4025784931, ; 732: System.Memory => 0xeff49a63 => 62
	i32 4044155772, ; 733: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 251
	i32 4046471985, ; 734: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 247
	i32 4054681211, ; 735: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 736: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 737: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4078967171, ; 738: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 229
	i32 4094352644, ; 739: Microsoft.Maui.Essentials.dll => 0xf40add04 => 249
	i32 4099507663, ; 740: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 741: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 742: Xamarin.AndroidX.Emoji2 => 0xf479582c => 294
	i32 4101842092, ; 743: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 214
	i32 4102112229, ; 744: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 370
	i32 4125707920, ; 745: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 365
	i32 4126470640, ; 746: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 220
	i32 4127667938, ; 747: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 748: System.AppContext => 0xf6318da0 => 6
	i32 4141580284, ; 749: Microsoft.AspNetCore.Authorization.Policy => 0xf6db7ffc => 180
	i32 4147896353, ; 750: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 751: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 377
	i32 4151237749, ; 752: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 753: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 754: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 755: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 756: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 757: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 310
	i32 4185676441, ; 758: System.Security => 0xf97c5a99 => 130
	i32 4194278001, ; 759: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 212
	i32 4196529839, ; 760: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 761: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 762: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 287
	i32 4258378803, ; 763: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 309
	i32 4260525087, ; 764: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 765: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 257
	i32 4271975918, ; 766: Microsoft.Maui.Controls.dll => 0xfea12dee => 246
	i32 4274976490, ; 767: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 768: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 310
	i32 4293859396, ; 769: Microsoft.AspNetCore.SignalR.Core.dll => 0xffef1844 => 203
	i32 4294648842, ; 770: Microsoft.Extensions.FileProviders.Embedded => 0xfffb240a => 226
	i32 4294763496 ; 771: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 296
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [772 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 306, ; 3
	i32 340, ; 4
	i32 48, ; 5
	i32 254, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 253, ; 9
	i32 30, ; 10
	i32 381, ; 11
	i32 124, ; 12
	i32 250, ; 13
	i32 102, ; 14
	i32 222, ; 15
	i32 324, ; 16
	i32 107, ; 17
	i32 324, ; 18
	i32 139, ; 19
	i32 344, ; 20
	i32 77, ; 21
	i32 124, ; 22
	i32 13, ; 23
	i32 280, ; 24
	i32 132, ; 25
	i32 206, ; 26
	i32 326, ; 27
	i32 151, ; 28
	i32 378, ; 29
	i32 379, ; 30
	i32 18, ; 31
	i32 278, ; 32
	i32 26, ; 33
	i32 192, ; 34
	i32 300, ; 35
	i32 1, ; 36
	i32 59, ; 37
	i32 42, ; 38
	i32 91, ; 39
	i32 181, ; 40
	i32 283, ; 41
	i32 147, ; 42
	i32 302, ; 43
	i32 299, ; 44
	i32 350, ; 45
	i32 54, ; 46
	i32 69, ; 47
	i32 178, ; 48
	i32 378, ; 49
	i32 269, ; 50
	i32 83, ; 51
	i32 252, ; 52
	i32 363, ; 53
	i32 301, ; 54
	i32 193, ; 55
	i32 362, ; 56
	i32 131, ; 57
	i32 55, ; 58
	i32 149, ; 59
	i32 74, ; 60
	i32 145, ; 61
	i32 197, ; 62
	i32 62, ; 63
	i32 146, ; 64
	i32 385, ; 65
	i32 165, ; 66
	i32 205, ; 67
	i32 374, ; 68
	i32 284, ; 69
	i32 12, ; 70
	i32 297, ; 71
	i32 125, ; 72
	i32 152, ; 73
	i32 382, ; 74
	i32 202, ; 75
	i32 113, ; 76
	i32 166, ; 77
	i32 164, ; 78
	i32 299, ; 79
	i32 238, ; 80
	i32 312, ; 81
	i32 188, ; 82
	i32 84, ; 83
	i32 361, ; 84
	i32 355, ; 85
	i32 235, ; 86
	i32 150, ; 87
	i32 344, ; 88
	i32 60, ; 89
	i32 230, ; 90
	i32 51, ; 91
	i32 103, ; 92
	i32 114, ; 93
	i32 207, ; 94
	i32 40, ; 95
	i32 337, ; 96
	i32 335, ; 97
	i32 226, ; 98
	i32 120, ; 99
	i32 369, ; 100
	i32 52, ; 101
	i32 44, ; 102
	i32 119, ; 103
	i32 289, ; 104
	i32 367, ; 105
	i32 295, ; 106
	i32 81, ; 107
	i32 136, ; 108
	i32 331, ; 109
	i32 276, ; 110
	i32 8, ; 111
	i32 73, ; 112
	i32 349, ; 113
	i32 155, ; 114
	i32 346, ; 115
	i32 154, ; 116
	i32 92, ; 117
	i32 341, ; 118
	i32 45, ; 119
	i32 364, ; 120
	i32 352, ; 121
	i32 345, ; 122
	i32 109, ; 123
	i32 180, ; 124
	i32 129, ; 125
	i32 25, ; 126
	i32 266, ; 127
	i32 72, ; 128
	i32 55, ; 129
	i32 46, ; 130
	i32 373, ; 131
	i32 234, ; 132
	i32 290, ; 133
	i32 185, ; 134
	i32 22, ; 135
	i32 304, ; 136
	i32 256, ; 137
	i32 86, ; 138
	i32 43, ; 139
	i32 160, ; 140
	i32 204, ; 141
	i32 71, ; 142
	i32 317, ; 143
	i32 3, ; 144
	i32 42, ; 145
	i32 63, ; 146
	i32 16, ; 147
	i32 53, ; 148
	i32 376, ; 149
	i32 340, ; 150
	i32 105, ; 151
	i32 254, ; 152
	i32 345, ; 153
	i32 338, ; 154
	i32 301, ; 155
	i32 34, ; 156
	i32 158, ; 157
	i32 85, ; 158
	i32 32, ; 159
	i32 12, ; 160
	i32 51, ; 161
	i32 228, ; 162
	i32 56, ; 163
	i32 321, ; 164
	i32 36, ; 165
	i32 221, ; 166
	i32 351, ; 167
	i32 339, ; 168
	i32 274, ; 169
	i32 35, ; 170
	i32 58, ; 171
	i32 383, ; 172
	i32 222, ; 173
	i32 308, ; 174
	i32 193, ; 175
	i32 237, ; 176
	i32 177, ; 177
	i32 17, ; 178
	i32 342, ; 179
	i32 164, ; 180
	i32 218, ; 181
	i32 229, ; 182
	i32 178, ; 183
	i32 364, ; 184
	i32 307, ; 185
	i32 232, ; 186
	i32 208, ; 187
	i32 264, ; 188
	i32 334, ; 189
	i32 210, ; 190
	i32 370, ; 191
	i32 153, ; 192
	i32 224, ; 193
	i32 330, ; 194
	i32 315, ; 195
	i32 210, ; 196
	i32 368, ; 197
	i32 276, ; 198
	i32 214, ; 199
	i32 29, ; 200
	i32 52, ; 201
	i32 251, ; 202
	i32 201, ; 203
	i32 366, ; 204
	i32 188, ; 205
	i32 335, ; 206
	i32 5, ; 207
	i32 350, ; 208
	i32 325, ; 209
	i32 329, ; 210
	i32 197, ; 211
	i32 281, ; 212
	i32 346, ; 213
	i32 273, ; 214
	i32 292, ; 215
	i32 85, ; 216
	i32 334, ; 217
	i32 61, ; 218
	i32 112, ; 219
	i32 0, ; 220
	i32 57, ; 221
	i32 380, ; 222
	i32 321, ; 223
	i32 99, ; 224
	i32 19, ; 225
	i32 285, ; 226
	i32 111, ; 227
	i32 101, ; 228
	i32 186, ; 229
	i32 102, ; 230
	i32 348, ; 231
	i32 104, ; 232
	i32 338, ; 233
	i32 71, ; 234
	i32 38, ; 235
	i32 173, ; 236
	i32 32, ; 237
	i32 225, ; 238
	i32 103, ; 239
	i32 73, ; 240
	i32 257, ; 241
	i32 354, ; 242
	i32 9, ; 243
	i32 123, ; 244
	i32 46, ; 245
	i32 275, ; 246
	i32 235, ; 247
	i32 9, ; 248
	i32 43, ; 249
	i32 199, ; 250
	i32 4, ; 251
	i32 322, ; 252
	i32 358, ; 253
	i32 239, ; 254
	i32 353, ; 255
	i32 228, ; 256
	i32 31, ; 257
	i32 138, ; 258
	i32 92, ; 259
	i32 185, ; 260
	i32 93, ; 261
	i32 174, ; 262
	i32 373, ; 263
	i32 261, ; 264
	i32 49, ; 265
	i32 141, ; 266
	i32 112, ; 267
	i32 140, ; 268
	i32 176, ; 269
	i32 291, ; 270
	i32 115, ; 271
	i32 339, ; 272
	i32 157, ; 273
	i32 76, ; 274
	i32 79, ; 275
	i32 311, ; 276
	i32 37, ; 277
	i32 333, ; 278
	i32 242, ; 279
	i32 219, ; 280
	i32 295, ; 281
	i32 288, ; 282
	i32 64, ; 283
	i32 138, ; 284
	i32 15, ; 285
	i32 184, ; 286
	i32 116, ; 287
	i32 327, ; 288
	i32 336, ; 289
	i32 283, ; 290
	i32 48, ; 291
	i32 70, ; 292
	i32 80, ; 293
	i32 126, ; 294
	i32 209, ; 295
	i32 94, ; 296
	i32 121, ; 297
	i32 343, ; 298
	i32 26, ; 299
	i32 304, ; 300
	i32 97, ; 301
	i32 28, ; 302
	i32 279, ; 303
	i32 371, ; 304
	i32 349, ; 305
	i32 149, ; 306
	i32 258, ; 307
	i32 169, ; 308
	i32 4, ; 309
	i32 98, ; 310
	i32 183, ; 311
	i32 33, ; 312
	i32 93, ; 313
	i32 326, ; 314
	i32 230, ; 315
	i32 21, ; 316
	i32 41, ; 317
	i32 170, ; 318
	i32 365, ; 319
	i32 297, ; 320
	i32 357, ; 321
	i32 236, ; 322
	i32 207, ; 323
	i32 311, ; 324
	i32 342, ; 325
	i32 336, ; 326
	i32 316, ; 327
	i32 2, ; 328
	i32 195, ; 329
	i32 134, ; 330
	i32 111, ; 331
	i32 231, ; 332
	i32 264, ; 333
	i32 377, ; 334
	i32 266, ; 335
	i32 374, ; 336
	i32 58, ; 337
	i32 95, ; 338
	i32 242, ; 339
	i32 356, ; 340
	i32 39, ; 341
	i32 277, ; 342
	i32 25, ; 343
	i32 94, ; 344
	i32 89, ; 345
	i32 99, ; 346
	i32 10, ; 347
	i32 384, ; 348
	i32 190, ; 349
	i32 87, ; 350
	i32 201, ; 351
	i32 100, ; 352
	i32 323, ; 353
	i32 202, ; 354
	i32 215, ; 355
	i32 343, ; 356
	i32 268, ; 357
	i32 243, ; 358
	i32 353, ; 359
	i32 7, ; 360
	i32 308, ; 361
	i32 348, ; 362
	i32 173, ; 363
	i32 265, ; 364
	i32 237, ; 365
	i32 88, ; 366
	i32 217, ; 367
	i32 303, ; 368
	i32 154, ; 369
	i32 352, ; 370
	i32 33, ; 371
	i32 227, ; 372
	i32 190, ; 373
	i32 116, ; 374
	i32 82, ; 375
	i32 20, ; 376
	i32 11, ; 377
	i32 162, ; 378
	i32 3, ; 379
	i32 248, ; 380
	i32 360, ; 381
	i32 191, ; 382
	i32 234, ; 383
	i32 231, ; 384
	i32 84, ; 385
	i32 347, ; 386
	i32 64, ; 387
	i32 233, ; 388
	i32 362, ; 389
	i32 330, ; 390
	i32 143, ; 391
	i32 223, ; 392
	i32 189, ; 393
	i32 312, ; 394
	i32 157, ; 395
	i32 209, ; 396
	i32 241, ; 397
	i32 41, ; 398
	i32 117, ; 399
	i32 216, ; 400
	i32 267, ; 401
	i32 356, ; 402
	i32 319, ; 403
	i32 131, ; 404
	i32 75, ; 405
	i32 66, ; 406
	i32 366, ; 407
	i32 172, ; 408
	i32 271, ; 409
	i32 200, ; 410
	i32 143, ; 411
	i32 106, ; 412
	i32 151, ; 413
	i32 70, ; 414
	i32 382, ; 415
	i32 156, ; 416
	i32 240, ; 417
	i32 215, ; 418
	i32 121, ; 419
	i32 127, ; 420
	i32 361, ; 421
	i32 383, ; 422
	i32 152, ; 423
	i32 294, ; 424
	i32 181, ; 425
	i32 384, ; 426
	i32 141, ; 427
	i32 281, ; 428
	i32 358, ; 429
	i32 20, ; 430
	i32 14, ; 431
	i32 244, ; 432
	i32 135, ; 433
	i32 75, ; 434
	i32 59, ; 435
	i32 284, ; 436
	i32 167, ; 437
	i32 168, ; 438
	i32 246, ; 439
	i32 15, ; 440
	i32 74, ; 441
	i32 6, ; 442
	i32 23, ; 443
	i32 306, ; 444
	i32 265, ; 445
	i32 179, ; 446
	i32 91, ; 447
	i32 359, ; 448
	i32 1, ; 449
	i32 136, ; 450
	i32 307, ; 451
	i32 329, ; 452
	i32 134, ; 453
	i32 69, ; 454
	i32 182, ; 455
	i32 146, ; 456
	i32 224, ; 457
	i32 198, ; 458
	i32 368, ; 459
	i32 187, ; 460
	i32 347, ; 461
	i32 298, ; 462
	i32 232, ; 463
	i32 88, ; 464
	i32 96, ; 465
	i32 288, ; 466
	i32 293, ; 467
	i32 363, ; 468
	i32 31, ; 469
	i32 259, ; 470
	i32 45, ; 471
	i32 302, ; 472
	i32 194, ; 473
	i32 211, ; 474
	i32 223, ; 475
	i32 240, ; 476
	i32 175, ; 477
	i32 260, ; 478
	i32 262, ; 479
	i32 267, ; 480
	i32 109, ; 481
	i32 158, ; 482
	i32 35, ; 483
	i32 22, ; 484
	i32 176, ; 485
	i32 114, ; 486
	i32 184, ; 487
	i32 57, ; 488
	i32 327, ; 489
	i32 144, ; 490
	i32 118, ; 491
	i32 120, ; 492
	i32 110, ; 493
	i32 269, ; 494
	i32 139, ; 495
	i32 179, ; 496
	i32 275, ; 497
	i32 236, ; 498
	i32 54, ; 499
	i32 105, ; 500
	i32 369, ; 501
	i32 252, ; 502
	i32 212, ; 503
	i32 247, ; 504
	i32 248, ; 505
	i32 133, ; 506
	i32 341, ; 507
	i32 332, ; 508
	i32 320, ; 509
	i32 375, ; 510
	i32 298, ; 511
	i32 253, ; 512
	i32 250, ; 513
	i32 159, ; 514
	i32 354, ; 515
	i32 285, ; 516
	i32 163, ; 517
	i32 132, ; 518
	i32 320, ; 519
	i32 161, ; 520
	i32 367, ; 521
	i32 196, ; 522
	i32 309, ; 523
	i32 263, ; 524
	i32 211, ; 525
	i32 140, ; 526
	i32 195, ; 527
	i32 332, ; 528
	i32 328, ; 529
	i32 169, ; 530
	i32 249, ; 531
	i32 262, ; 532
	i32 270, ; 533
	i32 337, ; 534
	i32 40, ; 535
	i32 192, ; 536
	i32 296, ; 537
	i32 81, ; 538
	i32 183, ; 539
	i32 56, ; 540
	i32 37, ; 541
	i32 97, ; 542
	i32 166, ; 543
	i32 172, ; 544
	i32 227, ; 545
	i32 333, ; 546
	i32 82, ; 547
	i32 272, ; 548
	i32 199, ; 549
	i32 98, ; 550
	i32 30, ; 551
	i32 159, ; 552
	i32 255, ; 553
	i32 18, ; 554
	i32 127, ; 555
	i32 119, ; 556
	i32 187, ; 557
	i32 292, ; 558
	i32 323, ; 559
	i32 189, ; 560
	i32 305, ; 561
	i32 255, ; 562
	i32 325, ; 563
	i32 165, ; 564
	i32 300, ; 565
	i32 259, ; 566
	i32 194, ; 567
	i32 385, ; 568
	i32 322, ; 569
	i32 313, ; 570
	i32 170, ; 571
	i32 16, ; 572
	i32 213, ; 573
	i32 144, ; 574
	i32 360, ; 575
	i32 243, ; 576
	i32 125, ; 577
	i32 118, ; 578
	i32 38, ; 579
	i32 115, ; 580
	i32 198, ; 581
	i32 47, ; 582
	i32 142, ; 583
	i32 117, ; 584
	i32 34, ; 585
	i32 177, ; 586
	i32 95, ; 587
	i32 53, ; 588
	i32 314, ; 589
	i32 205, ; 590
	i32 129, ; 591
	i32 153, ; 592
	i32 213, ; 593
	i32 24, ; 594
	i32 161, ; 595
	i32 291, ; 596
	i32 263, ; 597
	i32 148, ; 598
	i32 104, ; 599
	i32 89, ; 600
	i32 279, ; 601
	i32 60, ; 602
	i32 142, ; 603
	i32 100, ; 604
	i32 5, ; 605
	i32 13, ; 606
	i32 174, ; 607
	i32 122, ; 608
	i32 135, ; 609
	i32 206, ; 610
	i32 28, ; 611
	i32 355, ; 612
	i32 239, ; 613
	i32 72, ; 614
	i32 289, ; 615
	i32 24, ; 616
	i32 277, ; 617
	i32 318, ; 618
	i32 315, ; 619
	i32 372, ; 620
	i32 137, ; 621
	i32 270, ; 622
	i32 286, ; 623
	i32 168, ; 624
	i32 241, ; 625
	i32 319, ; 626
	i32 351, ; 627
	i32 101, ; 628
	i32 123, ; 629
	i32 290, ; 630
	i32 225, ; 631
	i32 217, ; 632
	i32 220, ; 633
	i32 163, ; 634
	i32 167, ; 635
	i32 293, ; 636
	i32 39, ; 637
	i32 245, ; 638
	i32 359, ; 639
	i32 182, ; 640
	i32 0, ; 641
	i32 200, ; 642
	i32 17, ; 643
	i32 171, ; 644
	i32 203, ; 645
	i32 372, ; 646
	i32 371, ; 647
	i32 137, ; 648
	i32 150, ; 649
	i32 282, ; 650
	i32 244, ; 651
	i32 155, ; 652
	i32 130, ; 653
	i32 19, ; 654
	i32 65, ; 655
	i32 208, ; 656
	i32 147, ; 657
	i32 175, ; 658
	i32 47, ; 659
	i32 261, ; 660
	i32 379, ; 661
	i32 260, ; 662
	i32 268, ; 663
	i32 79, ; 664
	i32 61, ; 665
	i32 106, ; 666
	i32 317, ; 667
	i32 272, ; 668
	i32 49, ; 669
	i32 303, ; 670
	i32 376, ; 671
	i32 314, ; 672
	i32 14, ; 673
	i32 216, ; 674
	i32 68, ; 675
	i32 171, ; 676
	i32 191, ; 677
	i32 278, ; 678
	i32 282, ; 679
	i32 256, ; 680
	i32 204, ; 681
	i32 381, ; 682
	i32 238, ; 683
	i32 78, ; 684
	i32 287, ; 685
	i32 108, ; 686
	i32 271, ; 687
	i32 219, ; 688
	i32 313, ; 689
	i32 67, ; 690
	i32 196, ; 691
	i32 63, ; 692
	i32 27, ; 693
	i32 160, ; 694
	i32 218, ; 695
	i32 233, ; 696
	i32 280, ; 697
	i32 186, ; 698
	i32 10, ; 699
	i32 245, ; 700
	i32 11, ; 701
	i32 78, ; 702
	i32 126, ; 703
	i32 83, ; 704
	i32 221, ; 705
	i32 66, ; 706
	i32 107, ; 707
	i32 65, ; 708
	i32 128, ; 709
	i32 122, ; 710
	i32 77, ; 711
	i32 328, ; 712
	i32 318, ; 713
	i32 380, ; 714
	i32 8, ; 715
	i32 286, ; 716
	i32 2, ; 717
	i32 44, ; 718
	i32 331, ; 719
	i32 156, ; 720
	i32 128, ; 721
	i32 316, ; 722
	i32 23, ; 723
	i32 133, ; 724
	i32 274, ; 725
	i32 305, ; 726
	i32 375, ; 727
	i32 357, ; 728
	i32 29, ; 729
	i32 273, ; 730
	i32 258, ; 731
	i32 62, ; 732
	i32 251, ; 733
	i32 247, ; 734
	i32 90, ; 735
	i32 87, ; 736
	i32 148, ; 737
	i32 229, ; 738
	i32 249, ; 739
	i32 36, ; 740
	i32 86, ; 741
	i32 294, ; 742
	i32 214, ; 743
	i32 370, ; 744
	i32 365, ; 745
	i32 220, ; 746
	i32 50, ; 747
	i32 6, ; 748
	i32 180, ; 749
	i32 90, ; 750
	i32 377, ; 751
	i32 21, ; 752
	i32 162, ; 753
	i32 96, ; 754
	i32 50, ; 755
	i32 113, ; 756
	i32 310, ; 757
	i32 130, ; 758
	i32 212, ; 759
	i32 76, ; 760
	i32 27, ; 761
	i32 287, ; 762
	i32 309, ; 763
	i32 7, ; 764
	i32 257, ; 765
	i32 246, ; 766
	i32 110, ; 767
	i32 310, ; 768
	i32 203, ; 769
	i32 226, ; 770
	i32 296 ; 771
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

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
!7 = !{i32 1, !"min_enum_size", i32 4}
