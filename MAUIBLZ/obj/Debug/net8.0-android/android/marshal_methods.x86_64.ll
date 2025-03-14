; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [389 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [772 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 293
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 235
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 249
	i64 160518225272466977, ; 4: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 229
	i64 165455458108447059, ; 5: Microsoft.AspNetCore.Http.Connections.dll => 0x24bd0dcceb41953 => 191
	i64 196720943101637631, ; 6: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 7: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 280
	i64 229794953483747371, ; 8: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 9: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 321
	i64 295915112840604065, ; 10: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 324
	i64 316157742385208084, ; 11: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 287
	i64 350667413455104241, ; 12: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 422779754995088667, ; 13: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 14: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 323
	i64 535107122908063503, ; 15: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 233
	i64 560278790331054453, ; 16: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 634308326490598313, ; 17: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 306
	i64 648449422406355874, ; 18: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x8ffc15065568ba2 => 218
	i64 649145001856603771, ; 19: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 668723562677762733, ; 20: Microsoft.Extensions.Configuration.Binder.dll => 0x947c88986577aad => 217
	i64 670564002081277297, ; 21: Microsoft.Identity.Client.dll => 0x94e526837380571 => 236
	i64 683390398661839228, ; 22: Microsoft.Extensions.FileProviders.Embedded => 0x97be3f26326c97c => 226
	i64 702024105029695270, ; 23: System.Drawing.Common => 0x9be17343c0e7726 => 256
	i64 750875890346172408, ; 24: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 798450721097591769, ; 25: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 281
	i64 799765834175365804, ; 26: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 805302231655005164, ; 27: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 360
	i64 872800313462103108, ; 28: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 292
	i64 895210737996778430, ; 29: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 307
	i64 937459790420187032, ; 30: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 252
	i64 940822596282819491, ; 31: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 32: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 33: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1060858978308751610, ; 34: Azure.Core.dll => 0xeb8ed9ebee080fa => 175
	i64 1091602723860597467, ; 35: Application => 0xf2626e4cf8f4adb => 382
	i64 1120440138749646132, ; 36: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 336
	i64 1268860745194512059, ; 37: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1278906455852160409, ; 38: Microsoft.EntityFrameworkCore.SqlServer.dll => 0x11bf96a54a059599 => 212
	i64 1301626418029409250, ; 39: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 40: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 276
	i64 1369545283391376210, ; 41: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 314
	i64 1404195534211153682, ; 42: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 43: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 44: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 45: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 246
	i64 1492954217099365037, ; 46: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 47: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 48: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1576750169145655260, ; 49: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 335
	i64 1624659445732251991, ; 50: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 275
	i64 1628611045998245443, ; 51: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 310
	i64 1636321030536304333, ; 52: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 300
	i64 1637067789214310945, ; 53: AutoMapper.dll => 0x16b8087b115a6221 => 173
	i64 1651782184287836205, ; 54: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1653644849046973826, ; 55: System.Net.WebSockets.WebSocketProtocol => 0x16f2ed3a94196d82 => 260
	i64 1659332977923810219, ; 56: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 57: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1731380447121279447, ; 58: Newtonsoft.Json => 0x18071957e9b889d7 => 254
	i64 1735388228521408345, ; 59: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 60: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 61: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1776954265264967804, ; 62: Microsoft.JSInterop.dll => 0x18a9027d533bd07c => 244
	i64 1795316252682057001, ; 63: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 274
	i64 1825687700144851180, ; 64: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 65: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 354
	i64 1836611346387731153, ; 66: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 321
	i64 1854145951182283680, ; 67: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 68: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 207
	i64 1875417405349196092, ; 69: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 70: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 271
	i64 1881198190668717030, ; 71: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 376
	i64 1897575647115118287, ; 72: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 323
	i64 1920760634179481754, ; 73: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 247
	i64 1972385128188460614, ; 74: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 75: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 308
	i64 2040001226662520565, ; 76: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 77: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 78: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 344
	i64 2080945842184875448, ; 79: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 80: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 81: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2133195048986300728, ; 82: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 254
	i64 2165310824878145998, ; 83: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 268
	i64 2165725771938924357, ; 84: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 278
	i64 2182323945368236980, ; 85: Domain.dll => 0x1e492c10dc80b3b4 => 383
	i64 2192948757939169934, ; 86: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 210
	i64 2200176636225660136, ; 87: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 232
	i64 2262844636196693701, ; 88: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 292
	i64 2287834202362508563, ; 89: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 90: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2295368378960711535, ; 91: Microsoft.AspNetCore.Components.WebView.Maui.dll => 0x1fdac961189e0f6f => 185
	i64 2304837677853103545, ; 92: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 320
	i64 2315304989185124968, ; 93: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2316229908869312383, ; 94: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 242
	i64 2329709569556905518, ; 95: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 303
	i64 2335503487726329082, ; 96: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 97: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2470498323731680442, ; 98: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 285
	i64 2479423007379663237, ; 99: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 330
	i64 2497223385847772520, ; 100: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 101: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 269
	i64 2554797818648757682, ; 102: System.Runtime.Caching.dll => 0x23747714858085b2 => 261
	i64 2592350477072141967, ; 103: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 104: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 375
	i64 2612152650457191105, ; 105: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 243
	i64 2624866290265602282, ; 106: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 107: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 108: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 220
	i64 2662981627730767622, ; 109: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 350
	i64 2706075432581334785, ; 110: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2781169761569919449, ; 111: Microsoft.JSInterop => 0x2698b329b26ed1d9 => 244
	i64 2783046991838674048, ; 112: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 113: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 325
	i64 2789714023057451704, ; 114: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 239
	i64 2815524396660695947, ; 115: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2851879596360956261, ; 116: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 255
	i64 2895129759130297543, ; 117: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 355
	i64 2923871038697555247, ; 118: Jsr305Binding => 0x2893ad37e69ec52f => 337
	i64 3017136373564924869, ; 119: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 120: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 336
	i64 3021884968805928991, ; 121: Microsoft.AspNetCore.Authorization.Policy => 0x29efe45e55c5101f => 180
	i64 3106852385031680087, ; 122: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 123: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 124: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3168817962471953758, ; 125: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 229
	i64 3238539556702659506, ; 126: Microsoft.Win32.SystemEvents.dll => 0x2cf19a917c5023b2 => 253
	i64 3266690593535380875, ; 127: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 179
	i64 3281594302220646930, ; 128: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 129: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 301
	i64 3303437397778967116, ; 130: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 272
	i64 3311221304742556517, ; 131: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 132: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 133: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 134: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 347
	i64 3396143930648122816, ; 135: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 224
	i64 3402534845034375023, ; 136: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 257
	i64 3429672777697402584, ; 137: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 249
	i64 3437845325506641314, ; 138: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 139: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 327
	i64 3494946837667399002, ; 140: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 215
	i64 3508450208084372758, ; 141: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 142: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 326
	i64 3523004241079211829, ; 143: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 214
	i64 3531994851595924923, ; 144: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 145: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 146: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 370
	i64 3571415421602489686, ; 147: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 148: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 216
	i64 3647754201059316852, ; 149: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 150: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 215
	i64 3659371656528649588, ; 151: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 266
	i64 3714286808464443951, ; 152: Application.dll => 0x338bcc2c54714a2f => 382
	i64 3716579019761409177, ; 153: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 154: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 319
	i64 3753897248517198740, ; 155: Microsoft.AspNetCore.Components.WebView.dll => 0x341885a8952f1394 => 184
	i64 3772598417116884899, ; 156: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 293
	i64 3783726507060260521, ; 157: Microsoft.AspNetCore.SignalR.Common.dll => 0x34827f360c8e6ea9 => 202
	i64 3794322307918838949, ; 158: Microsoft.AspNetCore.Metadata.dll => 0x34a824092ed7bca5 => 196
	i64 3869221888984012293, ; 159: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 230
	i64 3869649043256705283, ; 160: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3889433610606858880, ; 161: Microsoft.Extensions.FileProviders.Physical.dll => 0x35fa0b4301afd280 => 227
	i64 3890352374528606784, ; 162: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 247
	i64 3919223565570527920, ; 163: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 164: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 165: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 166: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 167: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4070326265757318011, ; 168: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 351
	i64 4073500526318903918, ; 169: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 170: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 245
	i64 4120493066591692148, ; 171: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 381
	i64 4148881117810174540, ; 172: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 173: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 174: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 175: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 176: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 177: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 287
	i64 4205801962323029395, ; 178: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4225924121207573736, ; 179: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 178
	i64 4235503420553921860, ; 180: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4243591448627561453, ; 181: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 194
	i64 4250192876909962317, ; 182: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 187
	i64 4282138915307457788, ; 183: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4360412976914417659, ; 184: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 376
	i64 4373617458794931033, ; 185: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4384840217421645357, ; 186: Microsoft.AspNetCore.Components.Forms => 0x3cda14f22443862d => 182
	i64 4397634830160618470, ; 187: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4477672992252076438, ; 188: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 189: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4513320955448359355, ; 190: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 211
	i64 4533124835995628778, ; 191: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4612482779465751747, ; 192: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 210
	i64 4636684751163556186, ; 193: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 331
	i64 4672453897036726049, ; 194: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4716677666592453464, ; 195: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4743821336939966868, ; 196: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 197: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 305
	i64 4794310189461587505, ; 198: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 269
	i64 4795410492532947900, ; 199: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 326
	i64 4809057822547766521, ; 200: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 201: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4832426131961301651, ; 202: Microsoft.AspNetCore.WebSockets => 0x431039f6b6de4a93 => 205
	i64 4853321196694829351, ; 203: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4871824391508510238, ; 204: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 366
	i64 4923568882411297437, ; 205: MAUIBLZ.dll => 0x445407cff74ada9d => 0
	i64 4953714692329509532, ; 206: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 374
	i64 5055365687667823624, ; 207: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 270
	i64 5081566143765835342, ; 208: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 209: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 210: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5112836352847824253, ; 211: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 206
	i64 5177565741364132164, ; 212: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 189
	i64 5182934613077526976, ; 213: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5197073077358930460, ; 214: Microsoft.AspNetCore.Components.Web.dll => 0x481fb66db7b9aa1c => 183
	i64 5205316157927637098, ; 215: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 312
	i64 5244375036463807528, ; 216: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 217: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 218: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 219: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 304
	i64 5290786973231294105, ; 220: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5376510917114486089, ; 221: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 330
	i64 5408338804355907810, ; 222: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 328
	i64 5423376490970181369, ; 223: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 224: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 225: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 226: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 283
	i64 5457765010617926378, ; 227: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 228: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 374
	i64 5488847537322884930, ; 229: System.Windows.Extensions => 0x4c2c4dc108687f42 => 264
	i64 5507995362134886206, ; 230: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 231: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 377
	i64 5527431512186326818, ; 232: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 233: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 234: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 235: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 273
	i64 5591791169662171124, ; 236: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5593115988096097561, ; 237: Microsoft.AspNetCore.Routing.dll => 0x4d9ebd5b8a069d19 => 197
	i64 5650097808083101034, ; 238: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5692067934154308417, ; 239: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 333
	i64 5724799082821825042, ; 240: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 296
	i64 5757522595884336624, ; 241: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 282
	i64 5783556987928984683, ; 242: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 243: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 302
	i64 5959344983920014087, ; 244: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 322
	i64 5979151488806146654, ; 245: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 246: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6014447449592687183, ; 247: Microsoft.AspNetCore.Http.Connections.Common.dll => 0x53779c16e939ea4f => 193
	i64 6034224070161570862, ; 248: Microsoft.AspNetCore.SignalR.Client.dll => 0x53bdded235179c2e => 200
	i64 6100239589957982951, ; 249: Microsoft.AspNetCore.SignalR.Core => 0x54a867962c385ae7 => 203
	i64 6102788177522843259, ; 250: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 322
	i64 6200764641006662125, ; 251: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 371
	i64 6222399776351216807, ; 252: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 253: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 254: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 255: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6300676701234028427, ; 256: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 354
	i64 6319713645133255417, ; 257: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 306
	i64 6357457916754632952, ; 258: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 385
	i64 6401687960814735282, ; 259: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 303
	i64 6471714727257221498, ; 260: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 355
	i64 6478287442656530074, ; 261: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 359
	i64 6504860066809920875, ; 262: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 278
	i64 6548213210057960872, ; 263: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 289
	i64 6557084851308642443, ; 264: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 334
	i64 6560151584539558821, ; 265: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 234
	i64 6589202984700901502, ; 266: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 339
	i64 6591971792923354531, ; 267: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 304
	i64 6617685658146568858, ; 268: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6713440830605852118, ; 269: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 270: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 271: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 367
	i64 6772837112740759457, ; 272: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6783125919820072783, ; 273: Microsoft.AspNetCore.Connections.Abstractions => 0x5e228115e59ec74f => 186
	i64 6786606130239981554, ; 274: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 275: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 276: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6876862101832370452, ; 277: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6892424314611037586, ; 278: Microsoft.AspNetCore.Http.Connections => 0x5fa6cf6581a7f592 => 191
	i64 6894844156784520562, ; 279: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6911788284027924527, ; 280: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 188
	i64 6920570528939222495, ; 281: Microsoft.AspNetCore.Components.WebView => 0x600ace3ab475a5df => 184
	i64 7011053663211085209, ; 282: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 298
	i64 7017588408768804231, ; 283: Microsoft.AspNetCore.SignalR.Protocols.Json => 0x61637b7a1c903587 => 204
	i64 7060896174307865760, ; 284: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 285: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 286: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 287: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 299
	i64 7112547816752919026, ; 288: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7192745174564810625, ; 289: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 268
	i64 7270811800166795866, ; 290: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7282807234492617162, ; 291: AutoMapper.Extensions.Microsoft.DependencyInjection.dll => 0x6511ba980393d1ca => 174
	i64 7299370801165188114, ; 292: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 293: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7331765743953618630, ; 294: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 189
	i64 7338192458477945005, ; 295: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7348123982286201829, ; 296: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 259
	i64 7349431895026339542, ; 297: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 267
	i64 7377312882064240630, ; 298: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 299: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 300: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7496222613193209122, ; 301: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 257
	i64 7592577537120840276, ; 302: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 303: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 304: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 305: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7714652370974252055, ; 306: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 307: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 307
	i64 7735176074855944702, ; 308: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 309: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 342
	i64 7742555799473854801, ; 310: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 362
	i64 7791074099216502080, ; 311: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 312: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7824823231109474690, ; 313: Microsoft.AspNetCore.Authorization.Policy.dll => 0x6c975b4560812982 => 180
	i64 7836164640616011524, ; 314: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 275
	i64 7919757340696389605, ; 315: Microsoft.Extensions.Diagnostics.Abstractions => 0x6de8a157378027e5 => 222
	i64 7972383140441761405, ; 316: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 213
	i64 7975724199463739455, ; 317: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 373
	i64 8014722069583580780, ; 318: Microsoft.AspNetCore.Components.Forms.dll => 0x6f3a03422b034e6c => 182
	i64 8025517457475554965, ; 319: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 320: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 321: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 322: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 301
	i64 8085230611270010360, ; 323: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 324: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 325: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8108129031893776750, ; 326: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 364
	i64 8113615946733131500, ; 327: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 328: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 329: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 330: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 346
	i64 8234598844743906698, ; 331: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 237
	i64 8243855692487634729, ; 332: Microsoft.AspNetCore.SignalR.Protocols.Json.dll => 0x72680f13124eaf29 => 204
	i64 8246048515196606205, ; 333: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 250
	i64 8264926008854159966, ; 334: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8277886878735836546, ; 335: AutoMapper => 0x72e0f64211eaa582 => 173
	i64 8290740647658429042, ; 336: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 337: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 338: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8386351099740279196, ; 339: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 379
	i64 8398329775253868912, ; 340: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 284
	i64 8400357532724379117, ; 341: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 316
	i64 8410671156615598628, ; 342: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 343: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 305
	i64 8476857680833348370, ; 344: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 263
	i64 8509355603862539910, ; 345: AutoMapper.Extensions.Microsoft.DependencyInjection => 0x76174dd653b4ce86 => 174
	i64 8513291706828295435, ; 346: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 252
	i64 8518412311883997971, ; 347: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 348: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8598790081731763592, ; 349: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 295
	i64 8601935802264776013, ; 350: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 328
	i64 8611142787134128904, ; 351: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 188
	i64 8623059219396073920, ; 352: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 353: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 354: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 355: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 315
	i64 8645284293310146700, ; 356: Microsoft.AspNetCore.SignalR.Core.dll => 0x77fa38429503e88c => 203
	i64 8648495978913578441, ; 357: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 358: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 369
	i64 8684531736582871431, ; 359: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8725526185868997716, ; 360: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8853378295825400934, ; 361: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 343
	i64 8941376889969657626, ; 362: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 363: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 318
	i64 8954753533646919997, ; 364: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 8955323522379913726, ; 365: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 236
	i64 9045785047181495996, ; 366: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 379
	i64 9052662452269567435, ; 367: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 241
	i64 9078292251399104661, ; 368: Microsoft.AspNetCore.SignalR.dll => 0x7dfc92b42bd32895 => 199
	i64 9111603110219107042, ; 369: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 214
	i64 9138683372487561558, ; 370: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9250544137016314866, ; 371: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 209
	i64 9312692141327339315, ; 372: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 333
	i64 9324707631942237306, ; 373: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 274
	i64 9363564275759486853, ; 374: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 353
	i64 9413000421947348542, ; 375: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 187
	i64 9427266486299436557, ; 376: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 240
	i64 9468215723722196442, ; 377: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9500688326720985260, ; 378: Microsoft.EntityFrameworkCore.SqlServer => 0x83d939b243e798ac => 212
	i64 9551379474083066910, ; 379: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 377
	i64 9554839972845591462, ; 380: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 381: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 338
	i64 9584643793929893533, ; 382: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9650158550865574924, ; 383: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 219
	i64 9659729154652888475, ; 384: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 385: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 386: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 387: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 285
	i64 9702891218465930390, ; 388: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9773637193738963987, ; 389: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 349
	i64 9780093022148426479, ; 390: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 335
	i64 9808709177481450983, ; 391: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9819168441846169364, ; 392: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 241
	i64 9825649861376906464, ; 393: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 282
	i64 9834056768316610435, ; 394: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 395: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9907349773706910547, ; 396: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 295
	i64 9933555792566666578, ; 397: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9938556199016768930, ; 398: Microsoft.AspNetCore.Routing => 0x89ecd834cea6a5a2 => 197
	i64 9956195530459977388, ; 399: Microsoft.Maui => 0x8a2b8315b36616ac => 248
	i64 9974604633896246661, ; 400: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 10017511394021241210, ; 401: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 232
	i64 10038780035334861115, ; 402: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 403: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 404: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 405: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 406: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 246
	i64 10105485790837105934, ; 407: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10106207375072889257, ; 408: Microsoft.AspNetCore.SignalR => 0x8c40761009a709a9 => 199
	i64 10143853363526200146, ; 409: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 351
	i64 10205853378024263619, ; 410: Microsoft.Extensions.Configuration.Binder => 0x8da279930adb4fc3 => 217
	i64 10209869394718195525, ; 411: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 367
	i64 10226222362177979215, ; 412: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 344
	i64 10226498071391929720, ; 413: Microsoft.Extensions.Features => 0x8debd1d049888578 => 223
	i64 10229024438826829339, ; 414: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 289
	i64 10236703004850800690, ; 415: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10243523786148452761, ; 416: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 190
	i64 10245369515835430794, ; 417: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 418: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 341
	i64 10360651442923773544, ; 419: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 420: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 421: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 327
	i64 10390244938473477758, ; 422: System.Net.WebSockets.WebSocketProtocol.dll => 0x903190b8bf03167e => 260
	i64 10406448008575299332, ; 423: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 347
	i64 10430153318873392755, ; 424: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 286
	i64 10447083246144586668, ; 425: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 207
	i64 10458986597687352396, ; 426: Microsoft.AspNetCore.Routing.Abstractions => 0x9125c8e581b9dc4c => 198
	i64 10506226065143327199, ; 427: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 349
	i64 10546663366131771576, ; 428: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 429: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 430: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 431: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 432: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10734191584620811116, ; 433: Microsoft.Extensions.FileProviders.Embedded.dll => 0x94f7825fc04f936c => 226
	i64 10761706286639228993, ; 434: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 381
	i64 10785150219063592792, ; 435: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10811915265162633087, ; 436: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 211
	i64 10822644899632537592, ; 437: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 438: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 439: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 276
	i64 10889380495983713167, ; 440: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 208
	i64 10899834349646441345, ; 441: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 442: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 443: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 11002576679268595294, ; 444: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 231
	i64 11009005086950030778, ; 445: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 248
	i64 11019817191295005410, ; 446: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 273
	i64 11023048688141570732, ; 447: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 448: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11047101296015504039, ; 449: Microsoft.Win32.SystemEvents => 0x994f301942c2f2a7 => 253
	i64 11050168729868392624, ; 450: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 195
	i64 11051904132540108364, ; 451: Microsoft.Extensions.FileProviders.Composite.dll => 0x99604040c7b98e4c => 225
	i64 11071824625609515081, ; 452: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 339
	i64 11103970607964515343, ; 453: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 360
	i64 11136029745144976707, ; 454: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 337
	i64 11156122287428000958, ; 455: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 375
	i64 11157797727133427779, ; 456: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 356
	i64 11162124722117608902, ; 457: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 332
	i64 11188319605227840848, ; 458: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11218356222449480316, ; 459: Microsoft.AspNetCore.Components => 0x9baf9b8c02e4f27c => 181
	i64 11220793807500858938, ; 460: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 363
	i64 11226290749488709958, ; 461: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 234
	i64 11235648312900863002, ; 462: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11329751333533450475, ; 463: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 464: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 288
	i64 11341245327015630248, ; 465: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 255
	i64 11347436699239206956, ; 466: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11387123649535633893, ; 467: Infrastructure => 0x9e0730a0b00569e5 => 384
	i64 11392833485892708388, ; 468: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 317
	i64 11432101114902388181, ; 469: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 470: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 471: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 472: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11508496261504176197, ; 473: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 298
	i64 11513602507638267977, ; 474: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 258
	i64 11517440453979132662, ; 475: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 238
	i64 11518296021396496455, ; 476: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 361
	i64 11529969570048099689, ; 477: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 332
	i64 11530571088791430846, ; 478: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 230
	i64 11580057168383206117, ; 479: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 271
	i64 11591352189662810718, ; 480: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 325
	i64 11597940890313164233, ; 481: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11672361001936329215, ; 482: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 299
	i64 11692977985522001935, ; 483: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11707554492040141440, ; 484: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 485: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11855031688536399763, ; 486: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 378
	i64 11991047634523762324, ; 487: System.Net => 0xa668c24ad493ae94 => 81
	i64 12011556116648931059, ; 488: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 262
	i64 12040886584167504988, ; 489: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12048689113179125827, ; 490: Microsoft.Extensions.FileProviders.Physical => 0xa7358ae968287843 => 227
	i64 12058074296353848905, ; 491: Microsoft.Extensions.FileSystemGlobbing.dll => 0xa756e2afa5707e49 => 228
	i64 12063623837170009990, ; 492: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 493: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 494: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 495: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12137774235383566651, ; 496: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 329
	i64 12145679461940342714, ; 497: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 498: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 265
	i64 12198439281774268251, ; 499: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 242
	i64 12201331334810686224, ; 500: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 501: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12313367145828839434, ; 502: System.IO.Pipelines => 0xaae1de2e1c17f00a => 258
	i64 12332222936682028543, ; 503: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 504: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12439275739440478309, ; 505: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 239
	i64 12441092376399691269, ; 506: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 178
	i64 12451044538927396471, ; 507: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 297
	i64 12466513435562512481, ; 508: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 311
	i64 12475113361194491050, ; 509: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 385
	i64 12487638416075308985, ; 510: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 291
	i64 12493213219680520345, ; 511: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 208
	i64 12517810545449516888, ; 512: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12529936764501890820, ; 513: Infrastructure.dll => 0xade34719d23e1704 => 384
	i64 12538491095302438457, ; 514: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 279
	i64 12550732019250633519, ; 515: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12699999919562409296, ; 516: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 517: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 280
	i64 12708238894395270091, ; 518: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 519: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 520: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12753841065332862057, ; 521: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 334
	i64 12828192437253469131, ; 522: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 345
	i64 12835242264250840079, ; 523: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 524: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 235
	i64 12843770487262409629, ; 525: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 526: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12963446364377008305, ; 527: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 256
	i64 12982280885948128408, ; 528: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 290
	i64 12989346753972519995, ; 529: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 348
	i64 13003699287675270979, ; 530: Microsoft.AspNetCore.Components.WebView.Maui => 0xb4766b9b07e27743 => 185
	i64 13005833372463390146, ; 531: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 369
	i64 13068258254871114833, ; 532: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13129914918964716986, ; 533: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 294
	i64 13162471042547327635, ; 534: System.Security.Permissions => 0xb6aa7dace9662293 => 263
	i64 13173818576982874404, ; 535: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13246160281449864914, ; 536: Domain => 0xb7d3d09845b51ed2 => 383
	i64 13295219713260136977, ; 537: Microsoft.AspNetCore.Http.Connections.Client => 0xb8821be35ba42a11 => 192
	i64 13308002692117796025, ; 538: Microsoft.AspNetCore.Routing.Abstractions.dll => 0xb8af85f08d9f94b9 => 198
	i64 13343850469010654401, ; 539: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 540: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 541: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 357
	i64 13401370062847626945, ; 542: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 329
	i64 13404347523447273790, ; 543: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 284
	i64 13404984788036896679, ; 544: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 190
	i64 13411460628183578347, ; 545: MAUIBLZ => 0xba1f14626604f6eb => 0
	i64 13428779960367410341, ; 546: Microsoft.AspNetCore.SignalR.Client.Core.dll => 0xba5c9c39a8956ca5 => 201
	i64 13431476299110033919, ; 547: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 548: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 340
	i64 13463706743370286408, ; 549: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 550: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 342
	i64 13491513212026656886, ; 551: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 277
	i64 13540124433173649601, ; 552: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 378
	i64 13550417756503177631, ; 553: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 224
	i64 13572454107664307259, ; 554: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 319
	i64 13578472628727169633, ; 555: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 556: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 557: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 290
	i64 13647894001087880694, ; 558: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 559: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 270
	i64 13702626353344114072, ; 560: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 561: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 562: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 563: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13742054908850494594, ; 564: Azure.Identity => 0xbeb596218df25c82 => 176
	i64 13768883594457632599, ; 565: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13828521679616088467, ; 566: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 343
	i64 13881769479078963060, ; 567: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13882652712560114096, ; 568: System.Windows.Extensions.dll => 0xc0a91716b04239b0 => 264
	i64 13911222732217019342, ; 569: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13921917134693230900, ; 570: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 206
	i64 13928444506500929300, ; 571: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13959074834287824816, ; 572: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 297
	i64 14075334701871371868, ; 573: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14082136096249122791, ; 574: Microsoft.AspNetCore.Metadata => 0xc36dcc2b4fa28fe7 => 196
	i64 14124974489674258913, ; 575: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 279
	i64 14125464355221830302, ; 576: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14133832980772275001, ; 577: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 209
	i64 14178052285788134900, ; 578: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 266
	i64 14212104595480609394, ; 579: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 580: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 581: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 582: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 583: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 584: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 317
	i64 14298246716367104064, ; 585: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 586: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 587: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 588: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 267
	i64 14346402571976470310, ; 589: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14349907877893689639, ; 590: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 371
	i64 14461014870687870182, ; 591: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 592: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 372
	i64 14486659737292545672, ; 593: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 302
	i64 14491877563792607819, ; 594: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 380
	i64 14495724990987328804, ; 595: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 320
	i64 14551742072151931844, ; 596: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 597: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 598: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14604329626201521481, ; 599: Microsoft.AspNetCore.SignalR.Client => 0xcaad006b00747d49 => 200
	i64 14610046442689856844, ; 600: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 350
	i64 14622043554576106986, ; 601: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 602: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 312
	i64 14648804764802849406, ; 603: Azure.Identity.dll => 0xcb4b0252261f9a7e => 176
	i64 14669215534098758659, ; 604: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 220
	i64 14690985099581930927, ; 605: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 606: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 364
	i64 14735017007120366644, ; 607: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 363
	i64 14744092281598614090, ; 608: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 380
	i64 14792063746108907174, ; 609: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 340
	i64 14809184851036126845, ; 610: Microsoft.AspNetCore.SignalR.Client.Core => 0xcd84cb28db1abe7d => 201
	i64 14832630590065248058, ; 611: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 612: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 288
	i64 14889905118082851278, ; 613: GoogleGson.dll => 0xcea391d0969961ce => 177
	i64 14904040806490515477, ; 614: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 348
	i64 14912225920358050525, ; 615: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 616: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 617: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 221
	i64 14984936317414011727, ; 618: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 619: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 620: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 291
	i64 15015154896917945444, ; 621: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 622: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15051741671811457419, ; 623: Microsoft.Extensions.Diagnostics.Abstractions.dll => 0xd0e2874d8f44218b => 222
	i64 15071021337266399595, ; 624: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 625: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 626: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 365
	i64 15115185479366240210, ; 627: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 628: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15138356091203993725, ; 629: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 238
	i64 15150743910298169673, ; 630: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 318
	i64 15203009853192377507, ; 631: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 370
	i64 15227001540531775957, ; 632: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 216
	i64 15234786388537674379, ; 633: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 634: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 635: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 281
	i64 15279429628684179188, ; 636: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 346
	i64 15299439993936780255, ; 637: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15338463749992804988, ; 638: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15370334346939861994, ; 639: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 286
	i64 15383240894167415497, ; 640: System.Memory.Data => 0xd57c4016df1c7ac9 => 259
	i64 15391712275433856905, ; 641: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 221
	i64 15427448221306938193, ; 642: Microsoft.AspNetCore.Components.Web => 0xd6194e6b4dbb6351 => 183
	i64 15481710163200268842, ; 643: Microsoft.Extensions.FileProviders.Composite => 0xd6da155e291b5a2a => 225
	i64 15526743539506359484, ; 644: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 645: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 646: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 647: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 352
	i64 15541854775306130054, ; 648: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 649: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15565247197164990907, ; 650: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 194
	i64 15582737692548360875, ; 651: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 310
	i64 15592226634512578529, ; 652: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 179
	i64 15609085926864131306, ; 653: System.dll => 0xd89e9cf3334914ea => 164
	i64 15661133872274321916, ; 654: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15710114879900314733, ; 655: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15755368083429170162, ; 656: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 657: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 324
	i64 15783653065526199428, ; 658: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 353
	i64 15817206913877585035, ; 659: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15827202283623377193, ; 660: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 219
	i64 15847085070278954535, ; 661: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15852824340364052161, ; 662: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 195
	i64 15885744048853936810, ; 663: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 664: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 245
	i64 15934062614519587357, ; 665: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 666: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 667: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 668: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 15982072519490392252, ; 669: Microsoft.AspNetCore.WebSockets.dll => 0xddcbba47a2c1d0bc => 205
	i64 16018552496348375205, ; 670: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16046481083542319511, ; 671: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 233
	i64 16054465462676478687, ; 672: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16056281320585338352, ; 673: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 372
	i64 16154507427712707110, ; 674: System => 0xe03056ea4e39aa26 => 164
	i64 16156430004425724367, ; 675: Microsoft.AspNetCore.Http.Connections.Client.dll => 0xe0372b7d144211cf => 192
	i64 16219561732052121626, ; 676: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16288847719894691167, ; 677: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 366
	i64 16315482530584035869, ; 678: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 679: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 231
	i64 16337011941688632206, ; 680: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16343918515847859304, ; 681: Microsoft.Extensions.Features.dll => 0xe2d1434bdf0a8c68 => 223
	i64 16361933716545543812, ; 682: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 296
	i64 16423015068819898779, ; 683: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 345
	i64 16454459195343277943, ; 684: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 685: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16589693266713801121, ; 686: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 309
	i64 16605226748660468415, ; 687: Microsoft.AspNetCore.SignalR.Common => 0xe6719dbfe8b8cabf => 202
	i64 16621146507174665210, ; 688: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 283
	i64 16649148416072044166, ; 689: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 250
	i64 16677317093839702854, ; 690: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 316
	i64 16702652415771857902, ; 691: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 692: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 693: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 694: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 695: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 696: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16803648858859583026, ; 697: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 365
	i64 16822611501064131242, ; 698: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 699: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 700: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 701: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16933958494752847024, ; 702: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 703: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 373
	i64 16945858842201062480, ; 704: Azure.Core => 0xeb2bc8d57f4e7c50 => 175
	i64 16977952268158210142, ; 705: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 706: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 309
	i64 16998075588627545693, ; 707: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 314
	i64 17008137082415910100, ; 708: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 709: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 272
	i64 17031351772568316411, ; 710: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 313
	i64 17037200463775726619, ; 711: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 300
	i64 17047433665992082296, ; 712: Microsoft.Extensions.Configuration.FileExtensions => 0xec94a699197e4378 => 218
	i64 17062143951396181894, ; 713: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17079998892748052666, ; 714: Microsoft.AspNetCore.Components.dll => 0xed08587fce5018ba => 181
	i64 17118171214553292978, ; 715: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17126545051278881272, ; 716: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 251
	i64 17137864900836977098, ; 717: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 243
	i64 17187273293601214786, ; 718: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17197986060146327831, ; 719: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 237
	i64 17201328579425343169, ; 720: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 721: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17203614576212522419, ; 722: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 368
	i64 17205988430934219272, ; 723: Microsoft.Extensions.FileSystemGlobbing => 0xeec7f35113509a08 => 228
	i64 17230721278011714856, ; 724: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 725: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 726: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17310278548634113468, ; 727: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 358
	i64 17333249706306540043, ; 728: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 729: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 730: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 358
	i64 17360349973592121190, ; 731: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 338
	i64 17371436720558481852, ; 732: System.Runtime.Caching => 0xf113bda8d710a1bc => 261
	i64 17470386307322966175, ; 733: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17509662556995089465, ; 734: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 735: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 356
	i64 17522591619082469157, ; 736: GoogleGson => 0xf32cc03d27a5bf25 => 177
	i64 17523946658117960076, ; 737: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 262
	i64 17571845317586269034, ; 738: Microsoft.AspNetCore.Connections.Abstractions.dll => 0xf3dbbc377ad7336a => 186
	i64 17590473451926037903, ; 739: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 265
	i64 17623389608345532001, ; 740: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 368
	i64 17627500474728259406, ; 741: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17636563193350668017, ; 742: Microsoft.AspNetCore.Http.Connections.Common => 0xf4c1a8c826653ef1 => 193
	i64 17685921127322830888, ; 743: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17704177640604968747, ; 744: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 311
	i64 17710060891934109755, ; 745: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 308
	i64 17712670374920797664, ; 746: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17777860260071588075, ; 747: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17790600151040787804, ; 748: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 240
	i64 17827813215687577648, ; 749: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 359
	i64 17838668724098252521, ; 750: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 751: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 341
	i64 17911643751311784505, ; 752: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 251
	i64 17928294245072900555, ; 753: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17942426894774770628, ; 754: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 352
	i64 17992315986609351877, ; 755: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18017743553296241350, ; 756: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 213
	i64 18025913125965088385, ; 757: System.Threading => 0xfa28e87b91334681 => 148
	i64 18116111925905154859, ; 758: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 277
	i64 18121036031235206392, ; 759: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 313
	i64 18146411883821974900, ; 760: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 761: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18225059387460068507, ; 762: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 763: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 764: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 294
	i64 18305135509493619199, ; 765: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 315
	i64 18318849532986632368, ; 766: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 767: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 362
	i64 18342408478508122430, ; 768: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 361
	i64 18358161419737137786, ; 769: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 357
	i64 18380184030268848184, ; 770: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 331
	i64 18439108438687598470 ; 771: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [772 x i32] [
	i32 293, ; 0
	i32 235, ; 1
	i32 171, ; 2
	i32 249, ; 3
	i32 229, ; 4
	i32 191, ; 5
	i32 58, ; 6
	i32 280, ; 7
	i32 151, ; 8
	i32 321, ; 9
	i32 324, ; 10
	i32 287, ; 11
	i32 132, ; 12
	i32 56, ; 13
	i32 323, ; 14
	i32 233, ; 15
	i32 95, ; 16
	i32 306, ; 17
	i32 218, ; 18
	i32 129, ; 19
	i32 217, ; 20
	i32 236, ; 21
	i32 226, ; 22
	i32 256, ; 23
	i32 145, ; 24
	i32 281, ; 25
	i32 18, ; 26
	i32 360, ; 27
	i32 292, ; 28
	i32 307, ; 29
	i32 252, ; 30
	i32 150, ; 31
	i32 104, ; 32
	i32 95, ; 33
	i32 175, ; 34
	i32 382, ; 35
	i32 336, ; 36
	i32 36, ; 37
	i32 212, ; 38
	i32 28, ; 39
	i32 276, ; 40
	i32 314, ; 41
	i32 50, ; 42
	i32 115, ; 43
	i32 70, ; 44
	i32 246, ; 45
	i32 65, ; 46
	i32 170, ; 47
	i32 145, ; 48
	i32 335, ; 49
	i32 275, ; 50
	i32 310, ; 51
	i32 300, ; 52
	i32 173, ; 53
	i32 40, ; 54
	i32 260, ; 55
	i32 89, ; 56
	i32 81, ; 57
	i32 254, ; 58
	i32 66, ; 59
	i32 62, ; 60
	i32 86, ; 61
	i32 244, ; 62
	i32 274, ; 63
	i32 106, ; 64
	i32 354, ; 65
	i32 321, ; 66
	i32 102, ; 67
	i32 207, ; 68
	i32 35, ; 69
	i32 271, ; 70
	i32 376, ; 71
	i32 323, ; 72
	i32 247, ; 73
	i32 119, ; 74
	i32 308, ; 75
	i32 142, ; 76
	i32 141, ; 77
	i32 344, ; 78
	i32 53, ; 79
	i32 35, ; 80
	i32 141, ; 81
	i32 254, ; 82
	i32 268, ; 83
	i32 278, ; 84
	i32 383, ; 85
	i32 210, ; 86
	i32 232, ; 87
	i32 292, ; 88
	i32 8, ; 89
	i32 14, ; 90
	i32 185, ; 91
	i32 320, ; 92
	i32 51, ; 93
	i32 242, ; 94
	i32 303, ; 95
	i32 136, ; 96
	i32 101, ; 97
	i32 285, ; 98
	i32 330, ; 99
	i32 116, ; 100
	i32 269, ; 101
	i32 261, ; 102
	i32 163, ; 103
	i32 375, ; 104
	i32 243, ; 105
	i32 166, ; 106
	i32 67, ; 107
	i32 220, ; 108
	i32 350, ; 109
	i32 80, ; 110
	i32 244, ; 111
	i32 101, ; 112
	i32 325, ; 113
	i32 239, ; 114
	i32 117, ; 115
	i32 255, ; 116
	i32 355, ; 117
	i32 337, ; 118
	i32 78, ; 119
	i32 336, ; 120
	i32 180, ; 121
	i32 114, ; 122
	i32 121, ; 123
	i32 48, ; 124
	i32 229, ; 125
	i32 253, ; 126
	i32 179, ; 127
	i32 128, ; 128
	i32 301, ; 129
	i32 272, ; 130
	i32 82, ; 131
	i32 110, ; 132
	i32 75, ; 133
	i32 347, ; 134
	i32 224, ; 135
	i32 257, ; 136
	i32 249, ; 137
	i32 53, ; 138
	i32 327, ; 139
	i32 215, ; 140
	i32 69, ; 141
	i32 326, ; 142
	i32 214, ; 143
	i32 83, ; 144
	i32 172, ; 145
	i32 370, ; 146
	i32 116, ; 147
	i32 216, ; 148
	i32 156, ; 149
	i32 215, ; 150
	i32 266, ; 151
	i32 382, ; 152
	i32 167, ; 153
	i32 319, ; 154
	i32 184, ; 155
	i32 293, ; 156
	i32 202, ; 157
	i32 196, ; 158
	i32 230, ; 159
	i32 32, ; 160
	i32 227, ; 161
	i32 247, ; 162
	i32 122, ; 163
	i32 72, ; 164
	i32 62, ; 165
	i32 161, ; 166
	i32 113, ; 167
	i32 351, ; 168
	i32 88, ; 169
	i32 245, ; 170
	i32 381, ; 171
	i32 105, ; 172
	i32 18, ; 173
	i32 146, ; 174
	i32 118, ; 175
	i32 58, ; 176
	i32 287, ; 177
	i32 17, ; 178
	i32 178, ; 179
	i32 52, ; 180
	i32 194, ; 181
	i32 187, ; 182
	i32 92, ; 183
	i32 376, ; 184
	i32 55, ; 185
	i32 182, ; 186
	i32 129, ; 187
	i32 152, ; 188
	i32 41, ; 189
	i32 211, ; 190
	i32 92, ; 191
	i32 210, ; 192
	i32 331, ; 193
	i32 50, ; 194
	i32 162, ; 195
	i32 13, ; 196
	i32 305, ; 197
	i32 269, ; 198
	i32 326, ; 199
	i32 36, ; 200
	i32 67, ; 201
	i32 205, ; 202
	i32 109, ; 203
	i32 366, ; 204
	i32 0, ; 205
	i32 374, ; 206
	i32 270, ; 207
	i32 99, ; 208
	i32 99, ; 209
	i32 11, ; 210
	i32 206, ; 211
	i32 189, ; 212
	i32 11, ; 213
	i32 183, ; 214
	i32 312, ; 215
	i32 25, ; 216
	i32 128, ; 217
	i32 76, ; 218
	i32 304, ; 219
	i32 109, ; 220
	i32 330, ; 221
	i32 328, ; 222
	i32 106, ; 223
	i32 2, ; 224
	i32 26, ; 225
	i32 283, ; 226
	i32 157, ; 227
	i32 374, ; 228
	i32 264, ; 229
	i32 21, ; 230
	i32 377, ; 231
	i32 49, ; 232
	i32 43, ; 233
	i32 126, ; 234
	i32 273, ; 235
	i32 59, ; 236
	i32 197, ; 237
	i32 119, ; 238
	i32 333, ; 239
	i32 296, ; 240
	i32 282, ; 241
	i32 3, ; 242
	i32 302, ; 243
	i32 322, ; 244
	i32 38, ; 245
	i32 124, ; 246
	i32 193, ; 247
	i32 200, ; 248
	i32 203, ; 249
	i32 322, ; 250
	i32 371, ; 251
	i32 137, ; 252
	i32 149, ; 253
	i32 85, ; 254
	i32 90, ; 255
	i32 354, ; 256
	i32 306, ; 257
	i32 385, ; 258
	i32 303, ; 259
	i32 355, ; 260
	i32 359, ; 261
	i32 278, ; 262
	i32 289, ; 263
	i32 334, ; 264
	i32 234, ; 265
	i32 339, ; 266
	i32 304, ; 267
	i32 133, ; 268
	i32 96, ; 269
	i32 3, ; 270
	i32 367, ; 271
	i32 105, ; 272
	i32 186, ; 273
	i32 33, ; 274
	i32 154, ; 275
	i32 158, ; 276
	i32 155, ; 277
	i32 191, ; 278
	i32 82, ; 279
	i32 188, ; 280
	i32 184, ; 281
	i32 298, ; 282
	i32 204, ; 283
	i32 143, ; 284
	i32 87, ; 285
	i32 19, ; 286
	i32 299, ; 287
	i32 51, ; 288
	i32 268, ; 289
	i32 61, ; 290
	i32 174, ; 291
	i32 54, ; 292
	i32 4, ; 293
	i32 189, ; 294
	i32 97, ; 295
	i32 259, ; 296
	i32 267, ; 297
	i32 17, ; 298
	i32 155, ; 299
	i32 84, ; 300
	i32 257, ; 301
	i32 29, ; 302
	i32 45, ; 303
	i32 64, ; 304
	i32 66, ; 305
	i32 172, ; 306
	i32 307, ; 307
	i32 1, ; 308
	i32 342, ; 309
	i32 362, ; 310
	i32 47, ; 311
	i32 24, ; 312
	i32 180, ; 313
	i32 275, ; 314
	i32 222, ; 315
	i32 213, ; 316
	i32 373, ; 317
	i32 182, ; 318
	i32 165, ; 319
	i32 108, ; 320
	i32 12, ; 321
	i32 301, ; 322
	i32 63, ; 323
	i32 27, ; 324
	i32 23, ; 325
	i32 364, ; 326
	i32 93, ; 327
	i32 168, ; 328
	i32 12, ; 329
	i32 346, ; 330
	i32 237, ; 331
	i32 204, ; 332
	i32 250, ; 333
	i32 29, ; 334
	i32 173, ; 335
	i32 103, ; 336
	i32 14, ; 337
	i32 126, ; 338
	i32 379, ; 339
	i32 284, ; 340
	i32 316, ; 341
	i32 91, ; 342
	i32 305, ; 343
	i32 263, ; 344
	i32 174, ; 345
	i32 252, ; 346
	i32 9, ; 347
	i32 86, ; 348
	i32 295, ; 349
	i32 328, ; 350
	i32 188, ; 351
	i32 71, ; 352
	i32 168, ; 353
	i32 1, ; 354
	i32 315, ; 355
	i32 203, ; 356
	i32 5, ; 357
	i32 369, ; 358
	i32 44, ; 359
	i32 27, ; 360
	i32 343, ; 361
	i32 158, ; 362
	i32 318, ; 363
	i32 112, ; 364
	i32 236, ; 365
	i32 379, ; 366
	i32 241, ; 367
	i32 199, ; 368
	i32 214, ; 369
	i32 121, ; 370
	i32 209, ; 371
	i32 333, ; 372
	i32 274, ; 373
	i32 353, ; 374
	i32 187, ; 375
	i32 240, ; 376
	i32 159, ; 377
	i32 212, ; 378
	i32 377, ; 379
	i32 131, ; 380
	i32 338, ; 381
	i32 57, ; 382
	i32 219, ; 383
	i32 138, ; 384
	i32 83, ; 385
	i32 30, ; 386
	i32 285, ; 387
	i32 10, ; 388
	i32 349, ; 389
	i32 335, ; 390
	i32 171, ; 391
	i32 241, ; 392
	i32 282, ; 393
	i32 150, ; 394
	i32 94, ; 395
	i32 295, ; 396
	i32 60, ; 397
	i32 197, ; 398
	i32 248, ; 399
	i32 157, ; 400
	i32 232, ; 401
	i32 64, ; 402
	i32 88, ; 403
	i32 79, ; 404
	i32 47, ; 405
	i32 246, ; 406
	i32 143, ; 407
	i32 199, ; 408
	i32 351, ; 409
	i32 217, ; 410
	i32 367, ; 411
	i32 344, ; 412
	i32 223, ; 413
	i32 289, ; 414
	i32 74, ; 415
	i32 190, ; 416
	i32 91, ; 417
	i32 341, ; 418
	i32 135, ; 419
	i32 90, ; 420
	i32 327, ; 421
	i32 260, ; 422
	i32 347, ; 423
	i32 286, ; 424
	i32 207, ; 425
	i32 198, ; 426
	i32 349, ; 427
	i32 112, ; 428
	i32 42, ; 429
	i32 159, ; 430
	i32 4, ; 431
	i32 103, ; 432
	i32 226, ; 433
	i32 381, ; 434
	i32 70, ; 435
	i32 211, ; 436
	i32 60, ; 437
	i32 39, ; 438
	i32 276, ; 439
	i32 208, ; 440
	i32 153, ; 441
	i32 56, ; 442
	i32 34, ; 443
	i32 231, ; 444
	i32 248, ; 445
	i32 273, ; 446
	i32 21, ; 447
	i32 163, ; 448
	i32 253, ; 449
	i32 195, ; 450
	i32 225, ; 451
	i32 339, ; 452
	i32 360, ; 453
	i32 337, ; 454
	i32 375, ; 455
	i32 356, ; 456
	i32 332, ; 457
	i32 140, ; 458
	i32 181, ; 459
	i32 363, ; 460
	i32 234, ; 461
	i32 89, ; 462
	i32 147, ; 463
	i32 288, ; 464
	i32 255, ; 465
	i32 162, ; 466
	i32 384, ; 467
	i32 317, ; 468
	i32 6, ; 469
	i32 169, ; 470
	i32 31, ; 471
	i32 107, ; 472
	i32 298, ; 473
	i32 258, ; 474
	i32 238, ; 475
	i32 361, ; 476
	i32 332, ; 477
	i32 230, ; 478
	i32 271, ; 479
	i32 325, ; 480
	i32 167, ; 481
	i32 299, ; 482
	i32 140, ; 483
	i32 59, ; 484
	i32 144, ; 485
	i32 378, ; 486
	i32 81, ; 487
	i32 262, ; 488
	i32 74, ; 489
	i32 227, ; 490
	i32 228, ; 491
	i32 130, ; 492
	i32 25, ; 493
	i32 7, ; 494
	i32 93, ; 495
	i32 329, ; 496
	i32 137, ; 497
	i32 265, ; 498
	i32 242, ; 499
	i32 113, ; 500
	i32 9, ; 501
	i32 258, ; 502
	i32 104, ; 503
	i32 19, ; 504
	i32 239, ; 505
	i32 178, ; 506
	i32 297, ; 507
	i32 311, ; 508
	i32 385, ; 509
	i32 291, ; 510
	i32 208, ; 511
	i32 33, ; 512
	i32 384, ; 513
	i32 279, ; 514
	i32 46, ; 515
	i32 30, ; 516
	i32 280, ; 517
	i32 57, ; 518
	i32 134, ; 519
	i32 114, ; 520
	i32 334, ; 521
	i32 345, ; 522
	i32 55, ; 523
	i32 235, ; 524
	i32 6, ; 525
	i32 77, ; 526
	i32 256, ; 527
	i32 290, ; 528
	i32 348, ; 529
	i32 185, ; 530
	i32 369, ; 531
	i32 111, ; 532
	i32 294, ; 533
	i32 263, ; 534
	i32 102, ; 535
	i32 383, ; 536
	i32 192, ; 537
	i32 198, ; 538
	i32 170, ; 539
	i32 115, ; 540
	i32 357, ; 541
	i32 329, ; 542
	i32 284, ; 543
	i32 190, ; 544
	i32 0, ; 545
	i32 201, ; 546
	i32 76, ; 547
	i32 340, ; 548
	i32 85, ; 549
	i32 342, ; 550
	i32 277, ; 551
	i32 378, ; 552
	i32 224, ; 553
	i32 319, ; 554
	i32 160, ; 555
	i32 2, ; 556
	i32 290, ; 557
	i32 24, ; 558
	i32 270, ; 559
	i32 32, ; 560
	i32 117, ; 561
	i32 37, ; 562
	i32 16, ; 563
	i32 176, ; 564
	i32 52, ; 565
	i32 343, ; 566
	i32 20, ; 567
	i32 264, ; 568
	i32 123, ; 569
	i32 206, ; 570
	i32 154, ; 571
	i32 297, ; 572
	i32 131, ; 573
	i32 196, ; 574
	i32 279, ; 575
	i32 148, ; 576
	i32 209, ; 577
	i32 266, ; 578
	i32 120, ; 579
	i32 28, ; 580
	i32 132, ; 581
	i32 100, ; 582
	i32 134, ; 583
	i32 317, ; 584
	i32 153, ; 585
	i32 97, ; 586
	i32 125, ; 587
	i32 267, ; 588
	i32 69, ; 589
	i32 371, ; 590
	i32 72, ; 591
	i32 372, ; 592
	i32 302, ; 593
	i32 380, ; 594
	i32 320, ; 595
	i32 136, ; 596
	i32 124, ; 597
	i32 71, ; 598
	i32 200, ; 599
	i32 350, ; 600
	i32 111, ; 601
	i32 312, ; 602
	i32 176, ; 603
	i32 220, ; 604
	i32 152, ; 605
	i32 364, ; 606
	i32 363, ; 607
	i32 380, ; 608
	i32 340, ; 609
	i32 201, ; 610
	i32 118, ; 611
	i32 288, ; 612
	i32 177, ; 613
	i32 348, ; 614
	i32 127, ; 615
	i32 133, ; 616
	i32 221, ; 617
	i32 77, ; 618
	i32 46, ; 619
	i32 291, ; 620
	i32 73, ; 621
	i32 63, ; 622
	i32 222, ; 623
	i32 98, ; 624
	i32 84, ; 625
	i32 365, ; 626
	i32 43, ; 627
	i32 61, ; 628
	i32 238, ; 629
	i32 318, ; 630
	i32 370, ; 631
	i32 216, ; 632
	i32 37, ; 633
	i32 40, ; 634
	i32 281, ; 635
	i32 346, ; 636
	i32 160, ; 637
	i32 98, ; 638
	i32 286, ; 639
	i32 259, ; 640
	i32 221, ; 641
	i32 183, ; 642
	i32 225, ; 643
	i32 135, ; 644
	i32 20, ; 645
	i32 65, ; 646
	i32 352, ; 647
	i32 125, ; 648
	i32 75, ; 649
	i32 194, ; 650
	i32 310, ; 651
	i32 179, ; 652
	i32 164, ; 653
	i32 156, ; 654
	i32 5, ; 655
	i32 49, ; 656
	i32 324, ; 657
	i32 353, ; 658
	i32 144, ; 659
	i32 219, ; 660
	i32 139, ; 661
	i32 195, ; 662
	i32 100, ; 663
	i32 245, ; 664
	i32 123, ; 665
	i32 120, ; 666
	i32 142, ; 667
	i32 39, ; 668
	i32 205, ; 669
	i32 68, ; 670
	i32 233, ; 671
	i32 41, ; 672
	i32 372, ; 673
	i32 164, ; 674
	i32 192, ; 675
	i32 73, ; 676
	i32 366, ; 677
	i32 165, ; 678
	i32 231, ; 679
	i32 127, ; 680
	i32 223, ; 681
	i32 296, ; 682
	i32 345, ; 683
	i32 68, ; 684
	i32 169, ; 685
	i32 309, ; 686
	i32 202, ; 687
	i32 283, ; 688
	i32 250, ; 689
	i32 316, ; 690
	i32 151, ; 691
	i32 45, ; 692
	i32 108, ; 693
	i32 48, ; 694
	i32 96, ; 695
	i32 31, ; 696
	i32 365, ; 697
	i32 23, ; 698
	i32 166, ; 699
	i32 22, ; 700
	i32 138, ; 701
	i32 78, ; 702
	i32 373, ; 703
	i32 175, ; 704
	i32 54, ; 705
	i32 309, ; 706
	i32 314, ; 707
	i32 10, ; 708
	i32 272, ; 709
	i32 313, ; 710
	i32 300, ; 711
	i32 218, ; 712
	i32 16, ; 713
	i32 181, ; 714
	i32 139, ; 715
	i32 251, ; 716
	i32 243, ; 717
	i32 13, ; 718
	i32 237, ; 719
	i32 15, ; 720
	i32 122, ; 721
	i32 368, ; 722
	i32 228, ; 723
	i32 87, ; 724
	i32 149, ; 725
	i32 22, ; 726
	i32 358, ; 727
	i32 34, ; 728
	i32 79, ; 729
	i32 358, ; 730
	i32 338, ; 731
	i32 261, ; 732
	i32 147, ; 733
	i32 80, ; 734
	i32 356, ; 735
	i32 177, ; 736
	i32 262, ; 737
	i32 186, ; 738
	i32 265, ; 739
	i32 368, ; 740
	i32 42, ; 741
	i32 193, ; 742
	i32 26, ; 743
	i32 311, ; 744
	i32 308, ; 745
	i32 107, ; 746
	i32 110, ; 747
	i32 240, ; 748
	i32 359, ; 749
	i32 7, ; 750
	i32 341, ; 751
	i32 251, ; 752
	i32 44, ; 753
	i32 352, ; 754
	i32 161, ; 755
	i32 213, ; 756
	i32 148, ; 757
	i32 277, ; 758
	i32 313, ; 759
	i32 38, ; 760
	i32 15, ; 761
	i32 146, ; 762
	i32 8, ; 763
	i32 294, ; 764
	i32 315, ; 765
	i32 130, ; 766
	i32 362, ; 767
	i32 361, ; 768
	i32 357, ; 769
	i32 331, ; 770
	i32 94 ; 771
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
