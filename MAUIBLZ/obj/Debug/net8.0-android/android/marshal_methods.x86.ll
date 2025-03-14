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

@assembly_image_cache = dso_local local_unnamed_addr global [389 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [772 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 306
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 340
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 38948123, ; 6: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 348
	i32 39109920, ; 7: Newtonsoft.Json.dll => 0x254c520 => 254
	i32 39485524, ; 8: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42244203, ; 9: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 357
	i32 42639949, ; 10: System.Threading.Thread => 0x28aa24d => 145
	i32 65960268, ; 11: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 253
	i32 66541672, ; 12: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 13: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 381
	i32 68219467, ; 14: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 15: Microsoft.Maui.Graphics.dll => 0x44bb714 => 250
	i32 82292897, ; 16: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83839681, ; 17: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 365
	i32 98325684, ; 18: Microsoft.Extensions.Diagnostics.Abstractions => 0x5dc54b4 => 222
	i32 101534019, ; 19: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 324
	i32 117431740, ; 20: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 21: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 324
	i32 122350210, ; 22: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 23: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 344
	i32 136584136, ; 24: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 380
	i32 140062828, ; 25: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 373
	i32 142721839, ; 26: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 27: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 28: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 29: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 280
	i32 176265551, ; 30: System.ServiceProcess => 0xa81994f => 132
	i32 176714968, ; 31: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 206
	i32 182336117, ; 32: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 326
	i32 184328833, ; 33: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 34: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 35: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 278
	i32 220171995, ; 36: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 221063263, ; 37: Microsoft.AspNetCore.Http.Connections.Client => 0xd2d285f => 192
	i32 230216969, ; 38: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 300
	i32 230752869, ; 39: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 40: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 41: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 42: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 254259026, ; 43: Microsoft.AspNetCore.Components.dll => 0xf27af52 => 181
	i32 261689757, ; 44: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 283
	i32 276479776, ; 45: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 46: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 302
	i32 280482487, ; 47: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 299
	i32 291076382, ; 48: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 49: System.Net.Ping.dll => 0x11d123fd => 69
	i32 300686228, ; 50: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 178
	i32 317674968, ; 51: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 378
	i32 318968648, ; 52: Xamarin.AndroidX.Activity.dll => 0x13031348 => 269
	i32 321597661, ; 53: System.Numerics => 0x132b30dd => 83
	i32 321963286, ; 54: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 356
	i32 330147069, ; 55: Microsoft.SqlServer.Server => 0x13ada4fd => 252
	i32 342366114, ; 56: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 301
	i32 348048101, ; 57: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x14becae5 => 193
	i32 360082299, ; 58: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 59: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 60: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 61: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 62: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 384051609, ; 63: Microsoft.AspNetCore.Routing.dll => 0x16e42999 => 197
	i32 385762202, ; 64: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 65: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 66: _Microsoft.Android.Resource.Designer => 0x17969339 => 385
	i32 403441872, ; 67: WindowsBase => 0x180c08d0 => 165
	i32 409257351, ; 68: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 376
	i32 417611542, ; 69: Microsoft.AspNetCore.WebSockets.dll => 0x18e43f16 => 205
	i32 441335492, ; 70: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 284
	i32 442565967, ; 71: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 72: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 297
	i32 451504562, ; 73: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 74: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 457806524, ; 75: Application => 0x1b4992bc => 382
	i32 458494020, ; 76: Microsoft.AspNetCore.SignalR.Common.dll => 0x1b541044 => 202
	i32 459347974, ; 77: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 78: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 79: System.dll => 0x1bff388e => 164
	i32 476646585, ; 80: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 299
	i32 485463106, ; 81: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 238
	i32 486930444, ; 82: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 312
	i32 489220957, ; 83: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 354
	i32 490002678, ; 84: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 188
	i32 498788369, ; 85: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 86: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 235
	i32 526420162, ; 87: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 88: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 344
	i32 530272170, ; 89: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 538707440, ; 90: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 375
	i32 539058512, ; 91: Microsoft.Extensions.Logging => 0x20216150 => 230
	i32 540030774, ; 92: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 93: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 94: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 95: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 207
	i32 549171840, ; 96: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 97: Jsr305Binding => 0x213954e7 => 337
	i32 569601784, ; 98: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 335
	i32 571435654, ; 99: Microsoft.Extensions.FileProviders.Embedded.dll => 0x220f6a86 => 226
	i32 577335427, ; 100: System.Security.Cryptography.Cng => 0x22697083 => 120
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
	i32 690569205, ; 113: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 114: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 346
	i32 693804605, ; 115: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 116: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 117: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 341
	i32 700358131, ; 118: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 720511267, ; 119: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 345
	i32 722857257, ; 120: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 724146010, ; 121: Microsoft.AspNetCore.Authorization.Policy.dll => 0x2b29975a => 180
	i32 735137430, ; 122: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 123: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 124: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 266
	i32 759454413, ; 125: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 126: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 127: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 128: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 373
	i32 789151979, ; 129: Microsoft.Extensions.Options => 0x2f0980eb => 234
	i32 790371945, ; 130: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 290
	i32 804008546, ; 131: Microsoft.AspNetCore.Components.WebView.Maui => 0x2fec3262 => 185
	i32 804715423, ; 132: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 133: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 304
	i32 809851609, ; 134: System.Drawing.Common.dll => 0x30455ad9 => 256
	i32 823281589, ; 135: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 136: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 137: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 832711436, ; 138: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x31a22b0c => 204
	i32 834051424, ; 139: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 140: Xamarin.AndroidX.Print => 0x3246f6cd => 317
	i32 869139383, ; 141: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 358
	i32 873119928, ; 142: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 143: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 144: System.Net.Http.Json => 0x3463c971 => 63
	i32 880668424, ; 145: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 372
	i32 904024072, ; 146: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 147: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 918734561, ; 148: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 369
	i32 928116545, ; 149: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 340
	i32 952186615, ; 150: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 151: Newtonsoft.Json => 0x38f24a24 => 254
	i32 956575887, ; 152: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 345
	i32 961460050, ; 153: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 362
	i32 966729478, ; 154: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 338
	i32 967690846, ; 155: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 301
	i32 975236339, ; 156: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 157: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 158: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 159: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 990727110, ; 160: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 371
	i32 992768348, ; 161: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 162: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 163: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 228
	i32 1001831731, ; 164: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 165: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 321
	i32 1019214401, ; 166: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 167: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 221
	i32 1031528504, ; 168: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 339
	i32 1035644815, ; 169: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 274
	i32 1036536393, ; 170: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1043950537, ; 171: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 352
	i32 1044663988, ; 172: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1046434417, ; 173: Domain.dll => 0x3e5f5271 => 383
	i32 1048992957, ; 174: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0x3e865cbd => 222
	i32 1052210849, ; 175: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 308
	i32 1058641855, ; 176: Microsoft.AspNetCore.Http.Connections.Common => 0x3f1997bf => 193
	i32 1062017875, ; 177: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 237
	i32 1067306892, ; 178: GoogleGson => 0x3f9dcf8c => 177
	i32 1082857460, ; 179: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 180: Xamarin.Kotlin.StdLib => 0x409e66d8 => 342
	i32 1098259244, ; 181: System => 0x41761b2c => 164
	i32 1106973742, ; 182: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 218
	i32 1108272742, ; 183: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 374
	i32 1110309514, ; 184: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 229
	i32 1112354281, ; 185: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 178
	i32 1117529484, ; 186: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 368
	i32 1118262833, ; 187: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 364
	i32 1121599056, ; 188: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 307
	i32 1127624469, ; 189: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 232
	i32 1138436374, ; 190: Microsoft.Data.SqlClient.dll => 0x43db2916 => 208
	i32 1145483052, ; 191: System.Windows.Extensions.dll => 0x4446af2c => 264
	i32 1149092582, ; 192: Xamarin.AndroidX.Window => 0x447dc2e6 => 334
	i32 1157931901, ; 193: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 210
	i32 1168523401, ; 194: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 370
	i32 1170634674, ; 195: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 196: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 224
	i32 1175144683, ; 197: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 330
	i32 1178241025, ; 198: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 315
	i32 1202000627, ; 199: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 210
	i32 1204270330, ; 200: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 276
	i32 1204575371, ; 201: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 214
	i32 1208641965, ; 202: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 203: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1220193633, ; 204: Microsoft.Net.Http.Headers => 0x48baad61 => 251
	i32 1233093933, ; 205: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0x497f852d => 201
	i32 1236289705, ; 206: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 188
	i32 1243150071, ; 207: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 335
	i32 1253011324, ; 208: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 209: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 350
	i32 1264511973, ; 210: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 325
	i32 1267360935, ; 211: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 329
	i32 1267908789, ; 212: Microsoft.AspNetCore.Routing => 0x4b92c0b5 => 197
	i32 1273260888, ; 213: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 281
	i32 1275534314, ; 214: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 346
	i32 1278448581, ; 215: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 273
	i32 1293217323, ; 216: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 292
	i32 1308624726, ; 217: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 359
	i32 1309188875, ; 218: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 219: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 334
	i32 1324164729, ; 220: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 221: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1336711579, ; 222: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 379
	i32 1356351372, ; 223: MAUIBLZ => 0x50d8478c => 0
	i32 1364015309, ; 224: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 225: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 380
	i32 1376866003, ; 226: Xamarin.AndroidX.SavedState => 0x52114ed3 => 321
	i32 1379779777, ; 227: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 228: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 229: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 285
	i32 1408764838, ; 230: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 231: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1414043276, ; 232: Microsoft.AspNetCore.Connections.Abstractions.dll => 0x5448968c => 186
	i32 1422545099, ; 233: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 234: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 348
	i32 1434145427, ; 235: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 236: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 338
	i32 1439761251, ; 237: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 238: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1452416952, ; 239: AutoMapper => 0x56921fb8 => 173
	i32 1453312822, ; 240: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1454105418, ; 241: Microsoft.Extensions.FileProviders.Composite => 0x56abe34a => 225
	i32 1457743152, ; 242: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 243: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 244: System.IdentityModel.Tokens.Jwt => 0x57137723 => 257
	i32 1461004990, ; 245: es\Microsoft.Maui.Controls.resources => 0x57152abe => 354
	i32 1461234159, ; 246: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 247: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 248: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 249: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 275
	i32 1470490898, ; 250: Microsoft.Extensions.Primitives => 0x57a5e912 => 235
	i32 1479771757, ; 251: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 252: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1486966743, ; 253: Microsoft.AspNetCore.SignalR => 0x58a14fd7 => 199
	i32 1487239319, ; 254: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 255: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 322
	i32 1498168481, ; 256: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 239
	i32 1521091094, ; 257: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 228
	i32 1526286932, ; 258: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 378
	i32 1536373174, ; 259: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 260: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 261: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1546581739, ; 262: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x5c2ef6eb => 185
	i32 1550322496, ; 263: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1550813921, ; 264: AutoMapper.Extensions.Microsoft.DependencyInjection.dll => 0x5c6f8ae1 => 174
	i32 1565310744, ; 265: System.Runtime.Caching => 0x5d4cbf18 => 261
	i32 1565862583, ; 266: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 267: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 268: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 269: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582305585, ; 270: Azure.Identity => 0x5e501131 => 176
	i32 1582372066, ; 271: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 291
	i32 1592978981, ; 272: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 273: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 339
	i32 1601112923, ; 274: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 275: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 276: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 277: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 311
	i32 1622358360, ; 278: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 279: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 333
	i32 1628113371, ; 280: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 242
	i32 1632842087, ; 281: Microsoft.Extensions.Configuration.Json => 0x61533167 => 219
	i32 1635184631, ; 282: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 295
	i32 1636350590, ; 283: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 288
	i32 1639515021, ; 284: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 285: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 286: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1654881142, ; 287: Microsoft.AspNetCore.Components.WebView => 0x62a37b76 => 184
	i32 1657153582, ; 288: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 289: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 327
	i32 1658251792, ; 290: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 336
	i32 1670060433, ; 291: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 283
	i32 1675553242, ; 292: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 293: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 294: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 295: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1689493916, ; 296: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 209
	i32 1691477237, ; 297: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 298: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 299: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 343
	i32 1701541528, ; 300: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 301: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 304
	i32 1726116996, ; 302: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 303: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 304: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 279
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
	i32 1847515442, ; 334: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 266
	i32 1853025655, ; 335: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 374
	i32 1858542181, ; 336: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 337: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1871986876, ; 338: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 242
	i32 1875935024, ; 339: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 356
	i32 1879696579, ; 340: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 341: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 277
	i32 1888955245, ; 342: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 343: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1893218855, ; 344: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 350
	i32 1898237753, ; 345: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 346: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 347: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1919899850, ; 348: Infrastructure.dll => 0x726f58ca => 384
	i32 1928288591, ; 349: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 190
	i32 1939592360, ; 350: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1945717188, ; 351: Microsoft.AspNetCore.SignalR.Client.Core => 0x73f949c4 => 201
	i32 1953182387, ; 352: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 361
	i32 1956758971, ; 353: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 354: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 323
	i32 1967334205, ; 355: Microsoft.AspNetCore.SignalR.Common => 0x7543233d => 202
	i32 1968388702, ; 356: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 215
	i32 1983156543, ; 357: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 343
	i32 1985761444, ; 358: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 268
	i32 1986222447, ; 359: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 243
	i32 2003115576, ; 360: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 353
	i32 2011961780, ; 361: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 362: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 308
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
	i32 2279755925, ; 402: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 319
	i32 2293034957, ; 403: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 404: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 405: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 406: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 366
	i32 2305521784, ; 407: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 408: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 271
	i32 2319144366, ; 409: Microsoft.AspNetCore.SignalR.Client => 0x8a3b55ae => 200
	i32 2320631194, ; 410: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 411: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 412: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 413: System.Net.Primitives => 0x8c40e0db => 70
	i32 2363376857, ; 414: Application.dll => 0x8cde44d9 => 382
	i32 2366048013, ; 415: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 360
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
	i32 2503351294, ; 444: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 364
	i32 2505896520, ; 445: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 306
	i32 2522472828, ; 446: Xamarin.Android.Glide.dll => 0x9659e17c => 265
	i32 2537015816, ; 447: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 179
	i32 2538310050, ; 448: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 449: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 359
	i32 2562349572, ; 450: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 451: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2576534780, ; 452: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 363
	i32 2581783588, ; 453: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 307
	i32 2581819634, ; 454: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 329
	i32 2585220780, ; 455: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 456: System.Net.Ping => 0x9a20430d => 69
	i32 2585813321, ; 457: Microsoft.AspNetCore.Components.Forms => 0x9a206149 => 182
	i32 2589602615, ; 458: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2592341985, ; 459: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 224
	i32 2593268061, ; 460: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 198
	i32 2593496499, ; 461: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 368
	i32 2594125473, ; 462: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 187
	i32 2605712449, ; 463: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 347
	i32 2615233544, ; 464: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 298
	i32 2616218305, ; 465: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 232
	i32 2617129537, ; 466: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 467: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 468: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 288
	i32 2624644809, ; 469: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 293
	i32 2626831493, ; 470: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 363
	i32 2627185994, ; 471: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2628210652, ; 472: System.Memory.Data => 0x9ca74fdc => 259
	i32 2629843544, ; 473: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 474: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 302
	i32 2633959305, ; 475: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 194
	i32 2634653062, ; 476: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 211
	i32 2637500010, ; 477: Microsoft.Extensions.Features => 0x9d350e6a => 223
	i32 2640290731, ; 478: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 240
	i32 2640706905, ; 479: Azure.Core => 0x9d65fd59 => 175
	i32 2642291320, ; 480: System.Net.WebSockets.WebSocketProtocol.dll => 0x9d7e2a78 => 260
	i32 2660759594, ; 481: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 262
	i32 2663391936, ; 482: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 267
	i32 2663698177, ; 483: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 484: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 485: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 486: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 487: Azure.Identity.dll => 0x9f9148fa => 176
	i32 2686887180, ; 488: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2692077919, ; 489: Microsoft.AspNetCore.Components.WebView.dll => 0xa075d95f => 184
	i32 2693849962, ; 490: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 491: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 327
	i32 2715334215, ; 492: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 493: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 494: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 495: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 496: Xamarin.AndroidX.Activity => 0xa2e0939b => 269
	i32 2735172069, ; 497: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 498: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 179
	i32 2737747696, ; 499: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 275
	i32 2740051746, ; 500: Microsoft.Identity.Client => 0xa351df22 => 236
	i32 2740698338, ; 501: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 349
	i32 2740948882, ; 502: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 503: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 504: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 369
	i32 2755098380, ; 505: Microsoft.SqlServer.Server.dll => 0xa437770c => 252
	i32 2755643133, ; 506: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 212
	i32 2758225723, ; 507: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 247
	i32 2764765095, ; 508: Microsoft.Maui.dll => 0xa4caf7a7 => 248
	i32 2765824710, ; 509: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 510: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 341
	i32 2778768386, ; 511: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 332
	i32 2779977773, ; 512: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 320
	i32 2785988530, ; 513: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 375
	i32 2788224221, ; 514: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 298
	i32 2795666278, ; 515: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 253
	i32 2801831435, ; 516: Microsoft.Maui.Graphics => 0xa7008e0b => 250
	i32 2803228030, ; 517: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 518: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 285
	i32 2819470561, ; 519: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 520: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 521: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 320
	i32 2824502124, ; 522: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2833784645, ; 523: Microsoft.AspNetCore.Metadata => 0xa8e81f45 => 196
	i32 2838993487, ; 524: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 309
	i32 2841355853, ; 525: System.Security.Permissions => 0xa95ba64d => 263
	i32 2847789619, ; 526: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 211
	i32 2849599387, ; 527: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2850549256, ; 528: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 195
	i32 2853208004, ; 529: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 332
	i32 2855708567, ; 530: Xamarin.AndroidX.Transition => 0xaa36a797 => 328
	i32 2861098320, ; 531: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 532: Microsoft.Maui.Essentials => 0xaa8a4878 => 249
	i32 2867946736, ; 533: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 262
	i32 2870099610, ; 534: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 270
	i32 2875164099, ; 535: Jsr305Binding.dll => 0xab5f85c3 => 337
	i32 2875220617, ; 536: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2875347124, ; 537: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xab6250b4 => 192
	i32 2884993177, ; 538: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 296
	i32 2887636118, ; 539: System.Net.dll => 0xac1dd496 => 81
	i32 2892341533, ; 540: Microsoft.AspNetCore.Components.Web => 0xac65a11d => 183
	i32 2899753641, ; 541: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 542: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 543: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 544: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 545: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2911054922, ; 546: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 227
	i32 2916838712, ; 547: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 333
	i32 2919462931, ; 548: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 549: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 272
	i32 2930166128, ; 550: Microsoft.AspNetCore.SignalR.dll => 0xaea6c970 => 199
	i32 2936416060, ; 551: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 552: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 553: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2944313911, ; 554: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 255
	i32 2959614098, ; 555: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 556: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 557: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978368250, ; 558: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 187
	i32 2978675010, ; 559: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 292
	i32 2987532451, ; 560: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 323
	i32 2996646946, ; 561: Microsoft.AspNetCore.Http => 0xb29d3422 => 189
	i32 2996846495, ; 562: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 305
	i32 3012788804, ; 563: System.Configuration.ConfigurationManager => 0xb3938244 => 255
	i32 3016983068, ; 564: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 325
	i32 3023353419, ; 565: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 566: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 300
	i32 3033605958, ; 567: System.Memory.Data.dll => 0xb4d12746 => 259
	i32 3036999524, ; 568: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 194
	i32 3038032645, ; 569: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 385
	i32 3053864966, ; 570: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 355
	i32 3056245963, ; 571: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 322
	i32 3057625584, ; 572: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 313
	i32 3059408633, ; 573: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 574: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 575: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 213
	i32 3075834255, ; 576: System.Threading.Tasks => 0xb755818f => 144
	i32 3084678329, ; 577: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 243
	i32 3090735792, ; 578: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 579: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 580: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 581: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3113762169, ; 582: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 198
	i32 3121463068, ; 583: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 584: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 585: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 586: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 587: GoogleGson.dll => 0xbba64c02 => 177
	i32 3159123045, ; 588: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 589: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 590: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 314
	i32 3180757527, ; 591: Microsoft.AspNetCore.WebSockets => 0xbd968217 => 205
	i32 3192346100, ; 592: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 593: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 594: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 213
	i32 3204380047, ; 595: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 596: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 597: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 291
	i32 3213246214, ; 598: System.Security.Permissions.dll => 0xbf863f06 => 263
	i32 3220365878, ; 599: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 600: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 601: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 602: Xamarin.AndroidX.CardView => 0xc235e84d => 279
	i32 3265493905, ; 603: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 604: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 605: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 606: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 607: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3287939112, ; 608: AutoMapper.Extensions.Microsoft.DependencyInjection => 0xc3f9f828 => 174
	i32 3290767353, ; 609: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 610: System.Text.Encoding => 0xc4a8494a => 135
	i32 3300764913, ; 611: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 206
	i32 3303498502, ; 612: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 613: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 355
	i32 3312457198, ; 614: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 239
	i32 3316684772, ; 615: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 616: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 289
	i32 3317144872, ; 617: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 618: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 277
	i32 3345895724, ; 619: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 318
	i32 3346324047, ; 620: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 315
	i32 3357674450, ; 621: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 372
	i32 3358260929, ; 622: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 623: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 270
	i32 3362522851, ; 624: Xamarin.AndroidX.Core => 0xc86c06e3 => 286
	i32 3366347497, ; 625: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 626: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 241
	i32 3374999561, ; 627: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 319
	i32 3381016424, ; 628: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 351
	i32 3395150330, ; 629: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 630: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 631: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 290
	i32 3406629867, ; 632: Microsoft.Extensions.FileProviders.Composite.dll => 0xcb0d0beb => 225
	i32 3421170118, ; 633: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 217
	i32 3428513518, ; 634: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 220
	i32 3429136800, ; 635: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 636: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 637: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 293
	i32 3445260447, ; 638: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 639: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 245
	i32 3458724246, ; 640: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 370
	i32 3464190856, ; 641: Microsoft.AspNetCore.Components.Forms.dll => 0xce7b5b88 => 182
	i32 3465108994, ; 642: MAUIBLZ.dll => 0xce895e02 => 0
	i32 3466904072, ; 643: Microsoft.AspNetCore.SignalR.Client.dll => 0xcea4c208 => 200
	i32 3471940407, ; 644: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 645: Mono.Android => 0xcf3163e6 => 171
	i32 3476505041, ; 646: Microsoft.AspNetCore.SignalR.Core => 0xcf3741d1 => 203
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
	i32 3592228221, ; 662: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 381
	i32 3594787188, ; 663: System.Net.WebSockets.WebSocketProtocol => 0xd6441974 => 260
	i32 3597029428, ; 664: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 268
	i32 3598340787, ; 665: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 666: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 667: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 668: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 317
	i32 3633644679, ; 669: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 272
	i32 3638274909, ; 670: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 671: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 303
	i32 3643446276, ; 672: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 376
	i32 3643854240, ; 673: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 314
	i32 3645089577, ; 674: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 675: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 216
	i32 3660523487, ; 676: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 677: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3679340867, ; 678: Microsoft.AspNetCore.Http.Connections.dll => 0xdb4e4943 => 191
	i32 3682565725, ; 679: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 278
	i32 3684561358, ; 680: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 282
	i32 3689375977, ; 681: System.Drawing.Common => 0xdbe768e9 => 256
	i32 3691870036, ; 682: Microsoft.AspNetCore.SignalR.Protocols.Json => 0xdc0d7754 => 204
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
	i32 3751619990, ; 695: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 351
	i32 3758424670, ; 696: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 218
	i32 3765508441, ; 697: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 233
	i32 3786282454, ; 698: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 280
	i32 3787005001, ; 699: Microsoft.AspNetCore.Connections.Abstractions => 0xe1b91c49 => 186
	i32 3792276235, ; 700: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 701: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 245
	i32 3802395368, ; 702: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 703: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 704: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 705: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 706: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 221
	i32 3844307129, ; 707: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 708: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 709: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 710: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 711: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 712: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 713: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 328
	i32 3888767677, ; 714: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 318
	i32 3896106733, ; 715: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 716: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 286
	i32 3901907137, ; 717: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920221145, ; 718: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 367
	i32 3920810846, ; 719: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 720: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 331
	i32 3928044579, ; 721: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 722: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 723: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 316
	i32 3945713374, ; 724: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 725: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 726: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 274
	i32 3959773229, ; 727: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 305
	i32 4003436829, ; 728: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 729: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 273
	i32 4023392905, ; 730: System.IO.Pipelines => 0xefd01a89 => 258
	i32 4025784931, ; 731: System.Memory => 0xeff49a63 => 62
	i32 4044155772, ; 732: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 251
	i32 4046471985, ; 733: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 247
	i32 4054681211, ; 734: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 735: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 736: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4078967171, ; 737: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 229
	i32 4091086043, ; 738: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 353
	i32 4094352644, ; 739: Microsoft.Maui.Essentials.dll => 0xf40add04 => 249
	i32 4099507663, ; 740: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 741: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 742: Xamarin.AndroidX.Emoji2 => 0xf479582c => 294
	i32 4101842092, ; 743: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 214
	i32 4103439459, ; 744: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 377
	i32 4126470640, ; 745: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 220
	i32 4127667938, ; 746: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 747: System.AppContext => 0xf6318da0 => 6
	i32 4141580284, ; 748: Microsoft.AspNetCore.Authorization.Policy => 0xf6db7ffc => 180
	i32 4147896353, ; 749: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 750: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 377
	i32 4151237749, ; 751: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 752: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 753: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 754: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 755: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 756: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 310
	i32 4185676441, ; 757: System.Security => 0xf97c5a99 => 130
	i32 4194278001, ; 758: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 212
	i32 4196529839, ; 759: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 760: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4249188766, ; 761: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 366
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
	i32 348, ; 6
	i32 254, ; 7
	i32 80, ; 8
	i32 357, ; 9
	i32 145, ; 10
	i32 253, ; 11
	i32 30, ; 12
	i32 381, ; 13
	i32 124, ; 14
	i32 250, ; 15
	i32 102, ; 16
	i32 365, ; 17
	i32 222, ; 18
	i32 324, ; 19
	i32 107, ; 20
	i32 324, ; 21
	i32 139, ; 22
	i32 344, ; 23
	i32 380, ; 24
	i32 373, ; 25
	i32 77, ; 26
	i32 124, ; 27
	i32 13, ; 28
	i32 280, ; 29
	i32 132, ; 30
	i32 206, ; 31
	i32 326, ; 32
	i32 151, ; 33
	i32 18, ; 34
	i32 278, ; 35
	i32 26, ; 36
	i32 192, ; 37
	i32 300, ; 38
	i32 1, ; 39
	i32 59, ; 40
	i32 42, ; 41
	i32 91, ; 42
	i32 181, ; 43
	i32 283, ; 44
	i32 147, ; 45
	i32 302, ; 46
	i32 299, ; 47
	i32 54, ; 48
	i32 69, ; 49
	i32 178, ; 50
	i32 378, ; 51
	i32 269, ; 52
	i32 83, ; 53
	i32 356, ; 54
	i32 252, ; 55
	i32 301, ; 56
	i32 193, ; 57
	i32 131, ; 58
	i32 55, ; 59
	i32 149, ; 60
	i32 74, ; 61
	i32 145, ; 62
	i32 197, ; 63
	i32 62, ; 64
	i32 146, ; 65
	i32 385, ; 66
	i32 165, ; 67
	i32 376, ; 68
	i32 205, ; 69
	i32 284, ; 70
	i32 12, ; 71
	i32 297, ; 72
	i32 125, ; 73
	i32 152, ; 74
	i32 382, ; 75
	i32 202, ; 76
	i32 113, ; 77
	i32 166, ; 78
	i32 164, ; 79
	i32 299, ; 80
	i32 238, ; 81
	i32 312, ; 82
	i32 354, ; 83
	i32 188, ; 84
	i32 84, ; 85
	i32 235, ; 86
	i32 150, ; 87
	i32 344, ; 88
	i32 60, ; 89
	i32 375, ; 90
	i32 230, ; 91
	i32 51, ; 92
	i32 103, ; 93
	i32 114, ; 94
	i32 207, ; 95
	i32 40, ; 96
	i32 337, ; 97
	i32 335, ; 98
	i32 226, ; 99
	i32 120, ; 100
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
	i32 155, ; 113
	i32 346, ; 114
	i32 154, ; 115
	i32 92, ; 116
	i32 341, ; 117
	i32 45, ; 118
	i32 345, ; 119
	i32 109, ; 120
	i32 180, ; 121
	i32 129, ; 122
	i32 25, ; 123
	i32 266, ; 124
	i32 72, ; 125
	i32 55, ; 126
	i32 46, ; 127
	i32 373, ; 128
	i32 234, ; 129
	i32 290, ; 130
	i32 185, ; 131
	i32 22, ; 132
	i32 304, ; 133
	i32 256, ; 134
	i32 86, ; 135
	i32 43, ; 136
	i32 160, ; 137
	i32 204, ; 138
	i32 71, ; 139
	i32 317, ; 140
	i32 358, ; 141
	i32 3, ; 142
	i32 42, ; 143
	i32 63, ; 144
	i32 372, ; 145
	i32 16, ; 146
	i32 53, ; 147
	i32 369, ; 148
	i32 340, ; 149
	i32 105, ; 150
	i32 254, ; 151
	i32 345, ; 152
	i32 362, ; 153
	i32 338, ; 154
	i32 301, ; 155
	i32 34, ; 156
	i32 158, ; 157
	i32 85, ; 158
	i32 32, ; 159
	i32 371, ; 160
	i32 12, ; 161
	i32 51, ; 162
	i32 228, ; 163
	i32 56, ; 164
	i32 321, ; 165
	i32 36, ; 166
	i32 221, ; 167
	i32 339, ; 168
	i32 274, ; 169
	i32 35, ; 170
	i32 352, ; 171
	i32 58, ; 172
	i32 383, ; 173
	i32 222, ; 174
	i32 308, ; 175
	i32 193, ; 176
	i32 237, ; 177
	i32 177, ; 178
	i32 17, ; 179
	i32 342, ; 180
	i32 164, ; 181
	i32 218, ; 182
	i32 374, ; 183
	i32 229, ; 184
	i32 178, ; 185
	i32 368, ; 186
	i32 364, ; 187
	i32 307, ; 188
	i32 232, ; 189
	i32 208, ; 190
	i32 264, ; 191
	i32 334, ; 192
	i32 210, ; 193
	i32 370, ; 194
	i32 153, ; 195
	i32 224, ; 196
	i32 330, ; 197
	i32 315, ; 198
	i32 210, ; 199
	i32 276, ; 200
	i32 214, ; 201
	i32 29, ; 202
	i32 52, ; 203
	i32 251, ; 204
	i32 201, ; 205
	i32 188, ; 206
	i32 335, ; 207
	i32 5, ; 208
	i32 350, ; 209
	i32 325, ; 210
	i32 329, ; 211
	i32 197, ; 212
	i32 281, ; 213
	i32 346, ; 214
	i32 273, ; 215
	i32 292, ; 216
	i32 359, ; 217
	i32 85, ; 218
	i32 334, ; 219
	i32 61, ; 220
	i32 112, ; 221
	i32 379, ; 222
	i32 0, ; 223
	i32 57, ; 224
	i32 380, ; 225
	i32 321, ; 226
	i32 99, ; 227
	i32 19, ; 228
	i32 285, ; 229
	i32 111, ; 230
	i32 101, ; 231
	i32 186, ; 232
	i32 102, ; 233
	i32 348, ; 234
	i32 104, ; 235
	i32 338, ; 236
	i32 71, ; 237
	i32 38, ; 238
	i32 173, ; 239
	i32 32, ; 240
	i32 225, ; 241
	i32 103, ; 242
	i32 73, ; 243
	i32 257, ; 244
	i32 354, ; 245
	i32 9, ; 246
	i32 123, ; 247
	i32 46, ; 248
	i32 275, ; 249
	i32 235, ; 250
	i32 9, ; 251
	i32 43, ; 252
	i32 199, ; 253
	i32 4, ; 254
	i32 322, ; 255
	i32 239, ; 256
	i32 228, ; 257
	i32 378, ; 258
	i32 31, ; 259
	i32 138, ; 260
	i32 92, ; 261
	i32 185, ; 262
	i32 93, ; 263
	i32 174, ; 264
	i32 261, ; 265
	i32 49, ; 266
	i32 141, ; 267
	i32 112, ; 268
	i32 140, ; 269
	i32 176, ; 270
	i32 291, ; 271
	i32 115, ; 272
	i32 339, ; 273
	i32 157, ; 274
	i32 76, ; 275
	i32 79, ; 276
	i32 311, ; 277
	i32 37, ; 278
	i32 333, ; 279
	i32 242, ; 280
	i32 219, ; 281
	i32 295, ; 282
	i32 288, ; 283
	i32 64, ; 284
	i32 138, ; 285
	i32 15, ; 286
	i32 184, ; 287
	i32 116, ; 288
	i32 327, ; 289
	i32 336, ; 290
	i32 283, ; 291
	i32 48, ; 292
	i32 70, ; 293
	i32 80, ; 294
	i32 126, ; 295
	i32 209, ; 296
	i32 94, ; 297
	i32 121, ; 298
	i32 343, ; 299
	i32 26, ; 300
	i32 304, ; 301
	i32 97, ; 302
	i32 28, ; 303
	i32 279, ; 304
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
	i32 266, ; 334
	i32 374, ; 335
	i32 58, ; 336
	i32 95, ; 337
	i32 242, ; 338
	i32 356, ; 339
	i32 39, ; 340
	i32 277, ; 341
	i32 25, ; 342
	i32 94, ; 343
	i32 350, ; 344
	i32 89, ; 345
	i32 99, ; 346
	i32 10, ; 347
	i32 384, ; 348
	i32 190, ; 349
	i32 87, ; 350
	i32 201, ; 351
	i32 361, ; 352
	i32 100, ; 353
	i32 323, ; 354
	i32 202, ; 355
	i32 215, ; 356
	i32 343, ; 357
	i32 268, ; 358
	i32 243, ; 359
	i32 353, ; 360
	i32 7, ; 361
	i32 308, ; 362
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
	i32 319, ; 402
	i32 131, ; 403
	i32 75, ; 404
	i32 66, ; 405
	i32 366, ; 406
	i32 172, ; 407
	i32 271, ; 408
	i32 200, ; 409
	i32 143, ; 410
	i32 106, ; 411
	i32 151, ; 412
	i32 70, ; 413
	i32 382, ; 414
	i32 360, ; 415
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
	i32 364, ; 444
	i32 306, ; 445
	i32 265, ; 446
	i32 179, ; 447
	i32 91, ; 448
	i32 359, ; 449
	i32 1, ; 450
	i32 136, ; 451
	i32 363, ; 452
	i32 307, ; 453
	i32 329, ; 454
	i32 134, ; 455
	i32 69, ; 456
	i32 182, ; 457
	i32 146, ; 458
	i32 224, ; 459
	i32 198, ; 460
	i32 368, ; 461
	i32 187, ; 462
	i32 347, ; 463
	i32 298, ; 464
	i32 232, ; 465
	i32 88, ; 466
	i32 96, ; 467
	i32 288, ; 468
	i32 293, ; 469
	i32 363, ; 470
	i32 31, ; 471
	i32 259, ; 472
	i32 45, ; 473
	i32 302, ; 474
	i32 194, ; 475
	i32 211, ; 476
	i32 223, ; 477
	i32 240, ; 478
	i32 175, ; 479
	i32 260, ; 480
	i32 262, ; 481
	i32 267, ; 482
	i32 109, ; 483
	i32 158, ; 484
	i32 35, ; 485
	i32 22, ; 486
	i32 176, ; 487
	i32 114, ; 488
	i32 184, ; 489
	i32 57, ; 490
	i32 327, ; 491
	i32 144, ; 492
	i32 118, ; 493
	i32 120, ; 494
	i32 110, ; 495
	i32 269, ; 496
	i32 139, ; 497
	i32 179, ; 498
	i32 275, ; 499
	i32 236, ; 500
	i32 349, ; 501
	i32 54, ; 502
	i32 105, ; 503
	i32 369, ; 504
	i32 252, ; 505
	i32 212, ; 506
	i32 247, ; 507
	i32 248, ; 508
	i32 133, ; 509
	i32 341, ; 510
	i32 332, ; 511
	i32 320, ; 512
	i32 375, ; 513
	i32 298, ; 514
	i32 253, ; 515
	i32 250, ; 516
	i32 159, ; 517
	i32 285, ; 518
	i32 163, ; 519
	i32 132, ; 520
	i32 320, ; 521
	i32 161, ; 522
	i32 196, ; 523
	i32 309, ; 524
	i32 263, ; 525
	i32 211, ; 526
	i32 140, ; 527
	i32 195, ; 528
	i32 332, ; 529
	i32 328, ; 530
	i32 169, ; 531
	i32 249, ; 532
	i32 262, ; 533
	i32 270, ; 534
	i32 337, ; 535
	i32 40, ; 536
	i32 192, ; 537
	i32 296, ; 538
	i32 81, ; 539
	i32 183, ; 540
	i32 56, ; 541
	i32 37, ; 542
	i32 97, ; 543
	i32 166, ; 544
	i32 172, ; 545
	i32 227, ; 546
	i32 333, ; 547
	i32 82, ; 548
	i32 272, ; 549
	i32 199, ; 550
	i32 98, ; 551
	i32 30, ; 552
	i32 159, ; 553
	i32 255, ; 554
	i32 18, ; 555
	i32 127, ; 556
	i32 119, ; 557
	i32 187, ; 558
	i32 292, ; 559
	i32 323, ; 560
	i32 189, ; 561
	i32 305, ; 562
	i32 255, ; 563
	i32 325, ; 564
	i32 165, ; 565
	i32 300, ; 566
	i32 259, ; 567
	i32 194, ; 568
	i32 385, ; 569
	i32 355, ; 570
	i32 322, ; 571
	i32 313, ; 572
	i32 170, ; 573
	i32 16, ; 574
	i32 213, ; 575
	i32 144, ; 576
	i32 243, ; 577
	i32 125, ; 578
	i32 118, ; 579
	i32 38, ; 580
	i32 115, ; 581
	i32 198, ; 582
	i32 47, ; 583
	i32 142, ; 584
	i32 117, ; 585
	i32 34, ; 586
	i32 177, ; 587
	i32 95, ; 588
	i32 53, ; 589
	i32 314, ; 590
	i32 205, ; 591
	i32 129, ; 592
	i32 153, ; 593
	i32 213, ; 594
	i32 24, ; 595
	i32 161, ; 596
	i32 291, ; 597
	i32 263, ; 598
	i32 148, ; 599
	i32 104, ; 600
	i32 89, ; 601
	i32 279, ; 602
	i32 60, ; 603
	i32 142, ; 604
	i32 100, ; 605
	i32 5, ; 606
	i32 13, ; 607
	i32 174, ; 608
	i32 122, ; 609
	i32 135, ; 610
	i32 206, ; 611
	i32 28, ; 612
	i32 355, ; 613
	i32 239, ; 614
	i32 72, ; 615
	i32 289, ; 616
	i32 24, ; 617
	i32 277, ; 618
	i32 318, ; 619
	i32 315, ; 620
	i32 372, ; 621
	i32 137, ; 622
	i32 270, ; 623
	i32 286, ; 624
	i32 168, ; 625
	i32 241, ; 626
	i32 319, ; 627
	i32 351, ; 628
	i32 101, ; 629
	i32 123, ; 630
	i32 290, ; 631
	i32 225, ; 632
	i32 217, ; 633
	i32 220, ; 634
	i32 163, ; 635
	i32 167, ; 636
	i32 293, ; 637
	i32 39, ; 638
	i32 245, ; 639
	i32 370, ; 640
	i32 182, ; 641
	i32 0, ; 642
	i32 200, ; 643
	i32 17, ; 644
	i32 171, ; 645
	i32 203, ; 646
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
	i32 381, ; 662
	i32 260, ; 663
	i32 268, ; 664
	i32 79, ; 665
	i32 61, ; 666
	i32 106, ; 667
	i32 317, ; 668
	i32 272, ; 669
	i32 49, ; 670
	i32 303, ; 671
	i32 376, ; 672
	i32 314, ; 673
	i32 14, ; 674
	i32 216, ; 675
	i32 68, ; 676
	i32 171, ; 677
	i32 191, ; 678
	i32 278, ; 679
	i32 282, ; 680
	i32 256, ; 681
	i32 204, ; 682
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
	i32 351, ; 695
	i32 218, ; 696
	i32 233, ; 697
	i32 280, ; 698
	i32 186, ; 699
	i32 10, ; 700
	i32 245, ; 701
	i32 11, ; 702
	i32 78, ; 703
	i32 126, ; 704
	i32 83, ; 705
	i32 221, ; 706
	i32 66, ; 707
	i32 107, ; 708
	i32 65, ; 709
	i32 128, ; 710
	i32 122, ; 711
	i32 77, ; 712
	i32 328, ; 713
	i32 318, ; 714
	i32 8, ; 715
	i32 286, ; 716
	i32 2, ; 717
	i32 367, ; 718
	i32 44, ; 719
	i32 331, ; 720
	i32 156, ; 721
	i32 128, ; 722
	i32 316, ; 723
	i32 23, ; 724
	i32 133, ; 725
	i32 274, ; 726
	i32 305, ; 727
	i32 29, ; 728
	i32 273, ; 729
	i32 258, ; 730
	i32 62, ; 731
	i32 251, ; 732
	i32 247, ; 733
	i32 90, ; 734
	i32 87, ; 735
	i32 148, ; 736
	i32 229, ; 737
	i32 353, ; 738
	i32 249, ; 739
	i32 36, ; 740
	i32 86, ; 741
	i32 294, ; 742
	i32 214, ; 743
	i32 377, ; 744
	i32 220, ; 745
	i32 50, ; 746
	i32 6, ; 747
	i32 180, ; 748
	i32 90, ; 749
	i32 377, ; 750
	i32 21, ; 751
	i32 162, ; 752
	i32 96, ; 753
	i32 50, ; 754
	i32 113, ; 755
	i32 310, ; 756
	i32 130, ; 757
	i32 212, ; 758
	i32 76, ; 759
	i32 27, ; 760
	i32 366, ; 761
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
