; ModuleID = 'environment.x86_64.ll'
source_filename = "environment.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.ApplicationConfig = type {
	i8, ; bool uses_mono_llvm
	i8, ; bool uses_mono_aot
	i8, ; bool aot_lazy_load
	i8, ; bool uses_assembly_preload
	i8, ; bool broken_exception_transitions
	i8, ; bool instant_run_enabled
	i8, ; bool jni_add_native_method_registration_attribute_present
	i8, ; bool have_runtime_config_blob
	i8, ; bool have_assemblies_blob
	i8, ; bool marshal_methods_enabled
	i8, ; uint8_t bound_stream_io_exception_type
	i32, ; uint32_t package_naming_policy
	i32, ; uint32_t environment_variable_count
	i32, ; uint32_t system_property_count
	i32, ; uint32_t number_of_assemblies_in_apk
	i32, ; uint32_t bundled_assembly_name_width
	i32, ; uint32_t number_of_assembly_store_files
	i32, ; uint32_t number_of_dso_cache_entries
	i32, ; uint32_t android_runtime_jnienv_class_token
	i32, ; uint32_t jnienv_initialize_method_token
	i32, ; uint32_t jnienv_registerjninatives_method_token
	i32, ; uint32_t jni_remapping_replacement_type_count
	i32, ; uint32_t jni_remapping_replacement_method_index_entry_count
	i32, ; uint32_t mono_components_mask
	ptr ; char* android_package_name
}

%struct.AssemblyStoreAssemblyDescriptor = type {
	i32, ; uint32_t data_offset
	i32, ; uint32_t data_size
	i32, ; uint32_t debug_data_offset
	i32, ; uint32_t debug_data_size
	i32, ; uint32_t config_data_offset
	i32 ; uint32_t config_data_size
}

%struct.AssemblyStoreRuntimeData = type {
	ptr, ; uint8_t data_start
	i32, ; uint32_t assembly_count
	ptr ; AssemblyStoreAssemblyDescriptor assemblies
}

%struct.AssemblyStoreSingleAssemblyRuntimeData = type {
	ptr, ; uint8_t image_data
	ptr, ; uint8_t debug_info_data
	ptr, ; uint8_t config_data
	ptr ; AssemblyStoreAssemblyDescriptor descriptor
}

%struct.DSOCacheEntry = type {
	i64, ; uint64_t hash
	i8, ; bool ignore
	ptr, ; char* name
	ptr ; void* handle
}

%struct.XamarinAndroidBundledAssembly = type {
	i32, ; int32_t apk_fd
	i32, ; uint32_t data_offset
	i32, ; uint32_t data_size
	ptr, ; uint8_t data
	i32, ; uint32_t name_length
	ptr ; char* name
}

; 0x15e6972616d58
@format_tag = dso_local local_unnamed_addr constant i64 385281960275288, align 8

@mono_aot_mode_name = dso_local local_unnamed_addr constant ptr @.str.0, align 8

; Application environment variables array, name:value
@app_environment_variables = dso_local local_unnamed_addr constant [8 x ptr] [
	ptr @.env.0, ; 0
	ptr @.env.1, ; 1
	ptr @.env.2, ; 2
	ptr @.env.3, ; 3
	ptr @.env.4, ; 4
	ptr @.env.5, ; 5
	ptr @.env.6, ; 6
	ptr @.env.7 ; 7
], align 16

; System properties defined by the application
@app_system_properties = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@application_config = dso_local local_unnamed_addr constant %struct.ApplicationConfig {
	i8 0, ; bool uses_mono_llvm
	i8 1, ; bool uses_mono_aot
	i8 1, ; bool aot_lazy_load
	i8 0, ; bool uses_assembly_preload
	i8 0, ; bool broken_exception_transitions
	i8 0, ; bool instant_run_enabled
	i8 0, ; bool jni_add_native_method_registration_attribute_present
	i8 1, ; bool have_runtime_config_blob
	i8 1, ; bool have_assemblies_blob
	i8 0, ; bool marshal_methods_enabled
	i8 0, ; uint8_t bound_stream_io_exception_type (0x0)
	i32 3, ; uint32_t package_naming_policy (0x3)
	i32 8, ; uint32_t environment_variable_count (0x8)
	i32 0, ; uint32_t system_property_count (0x0)
	i32 206, ; uint32_t number_of_assemblies_in_apk (0xce)
	i32 0, ; uint32_t bundled_assembly_name_width (0x0)
	i32 2, ; uint32_t number_of_assembly_store_files (0x2)
	i32 978, ; uint32_t number_of_dso_cache_entries (0x3d2)
	i32 33555167, ; uint32_t android_runtime_jnienv_class_token (0x20002df)
	i32 100670956, ; uint32_t jnienv_initialize_method_token (0x6001dec)
	i32 100670955, ; uint32_t jnienv_registerjninatives_method_token (0x6001deb)
	i32 0, ; uint32_t jni_remapping_replacement_type_count (0x0)
	i32 0, ; uint32_t jni_remapping_replacement_method_index_entry_count (0x0)
	i32 0, ; uint32_t mono_components_mask (0x0)
	ptr @.ApplicationConfig.0_android_package_name; char* android_package_name
}, align 16

; DSO cache entries
@dso_cache = dso_local local_unnamed_addr global [978 x %struct.DSOCacheEntry] [
	%struct.DSOCacheEntry {
		i64 10013782901593326, ; hash 0x23937b84b514ee, from name: aot-System.Buffers.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 0
	%struct.DSOCacheEntry {
		i64 16604595802139920, ; hash 0x3afdcaba6ced10, from name: libaot-Xamarin.AndroidX.CardView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1
	%struct.DSOCacheEntry {
		i64 48698164947412647, ; hash 0xad02b916e766a7, from name: libaot-Services.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Services.dll.so
		ptr null; void* handle (0x0)
	}, ; 2
	%struct.DSOCacheEntry {
		i64 84283058636713278, ; hash 0x12b6efeca9fed3e, from name: aot-System.Threading.Channels.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 3
	%struct.DSOCacheEntry {
		i64 85518681245955132, ; hash 0x12fd2c99953343c, from name: Microsoft.Extensions.Caching.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Caching.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 4
	%struct.DSOCacheEntry {
		i64 120698629574877762, ; hash 0x1accec39cafe242, from name: Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 5
	%struct.DSOCacheEntry {
		i64 130550379555063986, ; hash 0x1cfcee0e6ac08b2, from name: Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 6
	%struct.DSOCacheEntry {
		i64 138901656850765970, ; hash 0x1ed7a522b4d9892, from name: System.Memory.Data.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Memory.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 7
	%struct.DSOCacheEntry {
		i64 147907448127148234, ; hash 0x20d790a5940d0ca, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 8
	%struct.DSOCacheEntry {
		i64 156671524278643650, ; hash 0x22c9bebd70c2bc2, from name: libaot-System.Diagnostics.EventLog
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.EventLog.dll.so
		ptr null; void* handle (0x0)
	}, ; 9
	%struct.DSOCacheEntry {
		i64 221057335580609593, ; hash 0x3115a79ba46cc39, from name: libaot-System.Threading.Thread.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 10
	%struct.DSOCacheEntry {
		i64 221913484098395070, ; hash 0x3146523568ddbbe, from name: libaot-Microsoft.Maui.Graphics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 11
	%struct.DSOCacheEntry {
		i64 228930976305280909, ; hash 0x32d538290c2778d, from name: libaot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 12
	%struct.DSOCacheEntry {
		i64 290628453294630638, ; hash 0x4088509d83f66ee, from name: libaot-System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 13
	%struct.DSOCacheEntry {
		i64 294786924891261343, ; hash 0x4174b257692c99f, from name: aot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 14
	%struct.DSOCacheEntry {
		i64 310829165835334582, ; hash 0x450497abf7233b6, from name: libaot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 15
	%struct.DSOCacheEntry {
		i64 318998200374973725, ; hash 0x46d4f2c5156d51d, from name: libaot-Newtonsoft.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 16
	%struct.DSOCacheEntry {
		i64 327393534088447553, ; hash 0x48b22af451a0641, from name: libaot-System.Console.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 17
	%struct.DSOCacheEntry {
		i64 338732866619584657, ; hash 0x4b36bbf5c9c3091, from name: libaot-System.Net.WebClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 18
	%struct.DSOCacheEntry {
		i64 365796920028716804, ; hash 0x513925c563e5f04, from name: aot-System.Runtime.Serialization.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 19
	%struct.DSOCacheEntry {
		i64 386333429249247466, ; hash 0x55c8834ff4288ea, from name: aot-Microsoft.IdentityModel.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-Microsoft.IdentityModel.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 20
	%struct.DSOCacheEntry {
		i64 390170653843578339, ; hash 0x56a2a247820dde3, from name: aot-System.Security.Cryptography.Algorithms
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 21
	%struct.DSOCacheEntry {
		i64 411675884429428512, ; hash 0x5b691092602c720, from name: libaot-Microsoft.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 22
	%struct.DSOCacheEntry {
		i64 453537572241606500, ; hash 0x64b4a04ddc10764, from name: libaot-System.Security.Principal.Windows
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 23
	%struct.DSOCacheEntry {
		i64 472512565983034901, ; hash 0x68eb3acdf53be15, from name: libaot-System.ComponentModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 24
	%struct.DSOCacheEntry {
		i64 483259409837255036, ; hash 0x6b4e1df71b6e97c, from name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 25
	%struct.DSOCacheEntry {
		i64 526193917209771750, ; hash 0x74d6a946e427ee6, from name: System.Runtime.Serialization.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 26
	%struct.DSOCacheEntry {
		i64 542231388356652987, ; hash 0x78664932910afbb, from name: System.Transactions.Local.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 27
	%struct.DSOCacheEntry {
		i64 544465019603341966, ; hash 0x78e540cf615528e, from name: libaot-System.Text.Encoding.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 28
	%struct.DSOCacheEntry {
		i64 560278790331054453, ; hash 0x7c6829760de3975, from name: System.Reflection.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 29
	%struct.DSOCacheEntry {
		i64 584895086741024446, ; hash 0x81df6fb8411eebe, from name: aot-Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 30
	%struct.DSOCacheEntry {
		i64 603416640204715261, ; hash 0x85fc43cbaf634fd, from name: libaot-System.Net.NameResolution
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 31
	%struct.DSOCacheEntry {
		i64 626497116700919570, ; hash 0x8b1c3ceedc3c712, from name: aot-System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 32
	%struct.DSOCacheEntry {
		i64 628522906763308403, ; hash 0x8b8f640eed2ad73, from name: libaot-System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 33
	%struct.DSOCacheEntry {
		i64 680930311029487832, ; hash 0x973268299b578d8, from name: aot-System.IO.Compression.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 34
	%struct.DSOCacheEntry {
		i64 710773886397693118, ; hash 0x9dd2d15765bbcbe, from name: Services
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Services.dll.so
		ptr null; void* handle (0x0)
	}, ; 35
	%struct.DSOCacheEntry {
		i64 739739707383691399, ; hash 0xa44155834db3887, from name: aot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 36
	%struct.DSOCacheEntry {
		i64 741027209231504624, ; hash 0xa48a852172494f0, from name: aot-System.Private.DataContractSerialization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 37
	%struct.DSOCacheEntry {
		i64 743359736279824557, ; hash 0xa50f1bddd4978ad, from name: libaot-Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 38
	%struct.DSOCacheEntry {
		i64 748463697694199386, ; hash 0xa6313c47c568e5a, from name: CapaUI-Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-CapaUI-Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 39
	%struct.DSOCacheEntry {
		i64 750875890346172408, ; hash 0xa6ba5a4da7d1ff8, from name: System.Threading.Thread
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 40
	%struct.DSOCacheEntry {
		i64 756290313852954525, ; hash 0xa7ee2089046279d, from name: System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 41
	%struct.DSOCacheEntry {
		i64 872800313462103108, ; hash 0xc1ccf42c3c21c44, from name: Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 42
	%struct.DSOCacheEntry {
		i64 926729488379472330, ; hash 0xcdc678f45bce9ca, from name: aot-Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 43
	%struct.DSOCacheEntry {
		i64 926762996762141689, ; hash 0xcdc86090cfbe3f9, from name: libaot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 44
	%struct.DSOCacheEntry {
		i64 1009894906713695187, ; hash 0xe03de11272563d3, from name: aot-System.Diagnostics.EventLog
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.EventLog.dll.so
		ptr null; void* handle (0x0)
	}, ; 45
	%struct.DSOCacheEntry {
		i64 1055594944834953507, ; hash 0xea63a027195e123, from name: aot-Microsoft.Win32.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 46
	%struct.DSOCacheEntry {
		i64 1096321628016204463, ; hash 0xf36eab64d7bdaaf, from name: aot-System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 47
	%struct.DSOCacheEntry {
		i64 1097501675994448902, ; hash 0xf3b1bf5a20b8406, from name: libaot-System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 48
	%struct.DSOCacheEntry {
		i64 1136601720422326463, ; hash 0xfc6053e24dee0bf, from name: libaot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 49
	%struct.DSOCacheEntry {
		i64 1146928578970395727, ; hash 0xfeab5774446244f, from name: aot-System.ComponentModel.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 50
	%struct.DSOCacheEntry {
		i64 1148857518588691308, ; hash 0xff18fd38504036c, from name: libaot-CapaENT
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CapaENT.dll.so
		ptr null; void* handle (0x0)
	}, ; 51
	%struct.DSOCacheEntry {
		i64 1151394494093259064, ; hash 0xffa933128c4f138, from name: aot-Xamarin.AndroidX.Collection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 52
	%struct.DSOCacheEntry {
		i64 1181472735908652530, ; hash 0x10656f318fa4e5f2, from name: System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 53
	%struct.DSOCacheEntry {
		i64 1196280833168408863, ; hash 0x109a0b14609c811f, from name: libaot-System.Diagnostics.TraceSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 54
	%struct.DSOCacheEntry {
		i64 1200280967012175695, ; hash 0x10a8412e1d6c4f4f, from name: libaot-netstandard.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 55
	%struct.DSOCacheEntry {
		i64 1234884336330527393, ; hash 0x112330c2ddacd2a1, from name: aot-System.Security.Claims.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 56
	%struct.DSOCacheEntry {
		i64 1288830572241085177, ; hash 0x11e2d893b217e2f9, from name: aot-_Microsoft.Android.Resource.Designer.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 57
	%struct.DSOCacheEntry {
		i64 1301762909818503617, ; hash 0x1210ca782d82c1c1, from name: CapaBL
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-CapaBL.dll.so
		ptr null; void* handle (0x0)
	}, ; 58
	%struct.DSOCacheEntry {
		i64 1310390983169450822, ; hash 0x122f71a80cb0a346, from name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 59
	%struct.DSOCacheEntry {
		i64 1347602760944503386, ; hash 0x12b3a592386eca5a, from name: libaot-Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 60
	%struct.DSOCacheEntry {
		i64 1379514111066213802, ; hash 0x132504c668bd8daa, from name: aot-System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 61
	%struct.DSOCacheEntry {
		i64 1406898269780780829, ; hash 0x13864e85b565271d, from name: aot-Microsoft.Extensions.Caching.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.Caching.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 62
	%struct.DSOCacheEntry {
		i64 1408308371658705060, ; hash 0x138b5100a2ed08a4, from name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 63
	%struct.DSOCacheEntry {
		i64 1491677435315304531, ; hash 0x14b380b9636f3853, from name: libaot-System.Runtime.Serialization.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 64
	%struct.DSOCacheEntry {
		i64 1499327756876432029, ; hash 0x14ceaea6ae80c29d, from name: libSystem.Security.Cryptography.Native.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 65
	%struct.DSOCacheEntry {
		i64 1513467482682125403, ; hash 0x1500eaa8245f6c5b, from name: Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 66
	%struct.DSOCacheEntry {
		i64 1560574748131067758, ; hash 0x15a8467713cc076e, from name: System.Collections.NonGeneric.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 67
	%struct.DSOCacheEntry {
		i64 1653388578624043904, ; hash 0x16f20426f892fb80, from name: libaot-Microsoft.SqlServer.Server
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-Microsoft.SqlServer.Server.dll.so
		ptr null; void* handle (0x0)
	}, ; 68
	%struct.DSOCacheEntry {
		i64 1690700643259123969, ; hash 0x17769346fefc0901, from name: libaot-Xamarin.AndroidX.ViewPager2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 69
	%struct.DSOCacheEntry {
		i64 1709477469831854591, ; hash 0x17b948b39cdc79ff, from name: aot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 70
	%struct.DSOCacheEntry {
		i64 1730900776029750156, ; hash 0x18056515c8b3838c, from name: aot-System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 71
	%struct.DSOCacheEntry {
		i64 1731380447121279447, ; hash 0x18071957e9b889d7, from name: Newtonsoft.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 72
	%struct.DSOCacheEntry {
		i64 1836611346387731153, ; hash 0x197cf449ebe482d1, from name: Xamarin.AndroidX.SavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 73
	%struct.DSOCacheEntry {
		i64 1865037103900624886, ; hash 0x19e1f15d56eb87f6, from name: Microsoft.Bcl.AsyncInterfaces
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Bcl.AsyncInterfaces.dll.so
		ptr null; void* handle (0x0)
	}, ; 74
	%struct.DSOCacheEntry {
		i64 1875417405349196092, ; hash 0x1a06d2319b6c713c, from name: System.Drawing.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 75
	%struct.DSOCacheEntry {
		i64 1885895971829469470, ; hash 0x1a2c0c64fc3c511e, from name: System.Diagnostics.EventLog.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.EventLog.dll.so
		ptr null; void* handle (0x0)
	}, ; 76
	%struct.DSOCacheEntry {
		i64 1893652335120276468, ; hash 0x1a479ac40aeedbf4, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 77
	%struct.DSOCacheEntry {
		i64 1920760634179481754, ; hash 0x1aa7e99ec2d2709a, from name: Microsoft.Maui.Controls.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 78
	%struct.DSOCacheEntry {
		i64 1944135226823170461, ; hash 0x1afaf4b0361e599d, from name: aot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 79
	%struct.DSOCacheEntry {
		i64 1972385128188460614, ; hash 0x1b5f51d2edefbe46, from name: System.Security.Cryptography.Algorithms
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 80
	%struct.DSOCacheEntry {
		i64 2010011812825262371, ; hash 0x1be4ff1821c9e923, from name: System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 81
	%struct.DSOCacheEntry {
		i64 2019051625445060944, ; hash 0x1c051cc185d3f150, from name: libaot-System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 82
	%struct.DSOCacheEntry {
		i64 2024202821639637893, ; hash 0x1c1769bdd92c8b85, from name: aot-System.IO.Compression
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 83
	%struct.DSOCacheEntry {
		i64 2034246700143554471, ; hash 0x1c3b18988b912fa7, from name: libaot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 84
	%struct.DSOCacheEntry {
		i64 2054529855940994150, ; hash 0x1c832804c3cc2466, from name: aot-Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 85
	%struct.DSOCacheEntry {
		i64 2081794811402477991, ; hash 0x1ce40559e4e561a7, from name: Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 86
	%struct.DSOCacheEntry {
		i64 2165725771938924357, ; hash 0x1e0e341d75540745, from name: Xamarin.AndroidX.Browser
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 87
	%struct.DSOCacheEntry {
		i64 2169143264332568652, ; hash 0x1e1a584e6979584c, from name: aot-System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 88
	%struct.DSOCacheEntry {
		i64 2178726392135891111, ; hash 0x1e3c641c3a0738a7, from name: System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 89
	%struct.DSOCacheEntry {
		i64 2187301907599393827, ; hash 0x1e5adb7f02ff0423, from name: libaot-CapaBL.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-CapaBL.dll.so
		ptr null; void* handle (0x0)
	}, ; 90
	%struct.DSOCacheEntry {
		i64 2188053935818705699, ; hash 0x1e5d877639de8b23, from name: aot-Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 91
	%struct.DSOCacheEntry {
		i64 2204262165896919438, ; hash 0x1e971cc2de1e798e, from name: Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 92
	%struct.DSOCacheEntry {
		i64 2205845752800215288, ; hash 0x1e9cbd066cf600f8, from name: aot-System.IO.FileSystem.Watcher.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 93
	%struct.DSOCacheEntry {
		i64 2213385277651629120, ; hash 0x1eb7862ed9813440, from name: aot-System.Transactions.Local.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 94
	%struct.DSOCacheEntry {
		i64 2224048179339183696, ; hash 0x1edd68091cddc650, from name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 95
	%struct.DSOCacheEntry {
		i64 2278942814095671648, ; hash 0x1fa06e6a419a0160, from name: System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 96
	%struct.DSOCacheEntry {
		i64 2287834202362508563, ; hash 0x1fc00515e8ce7513, from name: System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 97
	%struct.DSOCacheEntry {
		i64 2294691230781673165, ; hash 0x1fd861843ff20ecd, from name: libaot-Azure.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Azure.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 98
	%struct.DSOCacheEntry {
		i64 2308032427487440447, ; hash 0x2007c743aa78ae3f, from name: libaot-System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 99
	%struct.DSOCacheEntry {
		i64 2310891519069420837, ; hash 0x2011ef97cc987d25, from name: Microsoft.IdentityModel.Protocols.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-Microsoft.IdentityModel.Protocols.dll.so
		ptr null; void* handle (0x0)
	}, ; 100
	%struct.DSOCacheEntry {
		i64 2316119226167002719, ; hash 0x2024822a3523065f, from name: libaot-System.Net.WebClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 101
	%struct.DSOCacheEntry {
		i64 2316229908869312383, ; hash 0x2024e6d4884a6f7f, from name: Microsoft.IdentityModel.Protocols.OpenIdConnect
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-Microsoft.IdentityModel.Protocols.OpenIdConnect.dll.so
		ptr null; void* handle (0x0)
	}, ; 102
	%struct.DSOCacheEntry {
		i64 2331926070505433189, ; hash 0x205caa67f2f2e865, from name: aot-Xamarin.Kotlin.StdLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 103
	%struct.DSOCacheEntry {
		i64 2335503487726329082, ; hash 0x2069600c4d9d1cfa, from name: System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 104
	%struct.DSOCacheEntry {
		i64 2365982838815399218, ; hash 0x20d5a8db3c431d32, from name: aot-System.IdentityModel.Tokens.Jwt
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.IdentityModel.Tokens.Jwt.dll.so
		ptr null; void* handle (0x0)
	}, ; 105
	%struct.DSOCacheEntry {
		i64 2383056933276923752, ; hash 0x211251a7a380b768, from name: System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 106
	%struct.DSOCacheEntry {
		i64 2403894093814325575, ; hash 0x215c58f123766147, from name: System.Security.Principal.Windows.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 107
	%struct.DSOCacheEntry {
		i64 2470498323731680442, ; hash 0x2248f922dc398cba, from name: Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 108
	%struct.DSOCacheEntry {
		i64 2476879673203463353, ; hash 0x225fa4f090ad94b9, from name: libaot-System.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 109
	%struct.DSOCacheEntry {
		i64 2497223385847772520, ; hash 0x22a7eb7046413568, from name: System.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 110
	%struct.DSOCacheEntry {
		i64 2516268783161295760, ; hash 0x22eb952063bbc390, from name: _Microsoft.Android.Resource.Designer.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 111
	%struct.DSOCacheEntry {
		i64 2522582145975789087, ; hash 0x23020318b7a1261f, from name: Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 112
	%struct.DSOCacheEntry {
		i64 2543609594401387459, ; hash 0x234cb7731191f3c3, from name: aot-System.Threading.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 113
	%struct.DSOCacheEntry {
		i64 2552433275064631459, ; hash 0x236c108a511d40a3, from name: System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 114
	%struct.DSOCacheEntry {
		i64 2556787638847292301, ; hash 0x237b88cfa39a438d, from name: libaot-Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 115
	%struct.DSOCacheEntry {
		i64 2564867392456424521, ; hash 0x23983d4ddf58fc49, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 116
	%struct.DSOCacheEntry {
		i64 2607857763146079109, ; hash 0x2430f8d18d111b85, from name: libaot-System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 117
	%struct.DSOCacheEntry {
		i64 2621972009330107316, ; hash 0x24631da6932363b4, from name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 118
	%struct.DSOCacheEntry {
		i64 2632269733008246987, ; hash 0x2487b36034f808cb, from name: System.Net.NameResolution
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 119
	%struct.DSOCacheEntry {
		i64 2656907746661064104, ; hash 0x24df3b84c8b75da8, from name: Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 120
	%struct.DSOCacheEntry {
		i64 2668219604630665034, ; hash 0x25076b97f4be774a, from name: aot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 121
	%struct.DSOCacheEntry {
		i64 2680228656536905837, ; hash 0x253215c33db4686d, from name: libaot-System.Numerics.Vectors
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 122
	%struct.DSOCacheEntry {
		i64 2696149129426007350, ; hash 0x256aa55930ea7536, from name: libaot-System.Net.NetworkInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 123
	%struct.DSOCacheEntry {
		i64 2720835231062098223, ; hash 0x25c2593a1fd3012f, from name: libaot-System.Security.Cryptography.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 124
	%struct.DSOCacheEntry {
		i64 2794448935210026949, ; hash 0x26c7e0803e2987c5, from name: aot-System.Net.ServicePoint
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 125
	%struct.DSOCacheEntry {
		i64 2804963893949280945, ; hash 0x26ed3bccdaa4b2b1, from name: aot-CapaDAL.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-CapaDAL.dll.so
		ptr null; void* handle (0x0)
	}, ; 126
	%struct.DSOCacheEntry {
		i64 2815524396660695947, ; hash 0x2712c0857f68238b, from name: System.Security.AccessControl
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 127
	%struct.DSOCacheEntry {
		i64 2834374838958460508, ; hash 0x2755b8e61c6c8e5c, from name: Microsoft.Maui.Graphics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 128
	%struct.DSOCacheEntry {
		i64 2837562181765940674, ; hash 0x27610bc5303dc5c2, from name: libaot-_Microsoft.Android.Resource.Designer
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 129
	%struct.DSOCacheEntry {
		i64 2851879596360956261, ; hash 0x2793e9620b477965, from name: System.Configuration.ConfigurationManager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Configuration.ConfigurationManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 130
	%struct.DSOCacheEntry {
		i64 2864889642192985433, ; hash 0x27c221f3639bdd59, from name: aot-Microsoft.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 131
	%struct.DSOCacheEntry {
		i64 2865936624365190494, ; hash 0x27c5da2cec11bd5e, from name: aot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 132
	%struct.DSOCacheEntry {
		i64 2868232290443132479, ; hash 0x27ce0212552afe3f, from name: CapaDAL
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-CapaDAL.dll.so
		ptr null; void* handle (0x0)
	}, ; 133
	%struct.DSOCacheEntry {
		i64 2895224535127013735, ; hash 0x282de760093db967, from name: libaot-System.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 134
	%struct.DSOCacheEntry {
		i64 2978076563348721961, ; hash 0x295440db18511129, from name: libaot-System.Collections.Specialized
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 135
	%struct.DSOCacheEntry {
		i64 3006762186807998890, ; hash 0x29ba2a4744c479aa, from name: aot-Microsoft.Identity.Client.Extensions.Msal
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-Microsoft.Identity.Client.Extensions.Msal.dll.so
		ptr null; void* handle (0x0)
	}, ; 136
	%struct.DSOCacheEntry {
		i64 3010498109405627785, ; hash 0x29c77014881b8589, from name: Microsoft.Data.SqlClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Data.SqlClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 137
	%struct.DSOCacheEntry {
		i64 3017704767998173186, ; hash 0x29e10a7f7d88a002, from name: Xamarin.Google.Android.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 138
	%struct.DSOCacheEntry {
		i64 3023023456770706911, ; hash 0x29f3efd1387dcddf, from name: System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 139
	%struct.DSOCacheEntry {
		i64 3038175307180388234, ; hash 0x2a29c4584dd9af8a, from name: aot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 140
	%struct.DSOCacheEntry {
		i64 3052778689196045701, ; hash 0x2a5da60b2369b585, from name: aot-System.Diagnostics.EventLog.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.EventLog.dll.so
		ptr null; void* handle (0x0)
	}, ; 141
	%struct.DSOCacheEntry {
		i64 3064219428148914307, ; hash 0x2a864b55c0aaa883, from name: aot-System.Net.WebClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 142
	%struct.DSOCacheEntry {
		i64 3068786168402526502, ; hash 0x2a9684c2d343c126, from name: libaot-System.IdentityModel.Tokens.Jwt.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.IdentityModel.Tokens.Jwt.dll.so
		ptr null; void* handle (0x0)
	}, ; 143
	%struct.DSOCacheEntry {
		i64 3073412500499229570, ; hash 0x2aa6f462b4806b82, from name: System.Threading.Channels.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 144
	%struct.DSOCacheEntry {
		i64 3077311767976570318, ; hash 0x2ab4cebfa95f6dce, from name: aot-System.Security.Cryptography.Encoding.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 145
	%struct.DSOCacheEntry {
		i64 3106852385031680087, ; hash 0x2b1dc1c88b637057, from name: System.Runtime.Serialization.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 146
	%struct.DSOCacheEntry {
		i64 3108167353802057239, ; hash 0x2b226dbd91d66617, from name: libaot-Xamarin.AndroidX.SavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 147
	%struct.DSOCacheEntry {
		i64 3116659788444322944, ; hash 0x2b40999097f7cc80, from name: aot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 148
	%struct.DSOCacheEntry {
		i64 3142558996668056863, ; hash 0x2b9c9cc1ea1b851f, from name: libaot-Microsoft.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 149
	%struct.DSOCacheEntry {
		i64 3159715243761782120, ; hash 0x2bd99045f7cecd68, from name: aot-System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 150
	%struct.DSOCacheEntry {
		i64 3178882061956697679, ; hash 0x2c1da86495ca4e4f, from name: aot-Azure.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Azure.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 151
	%struct.DSOCacheEntry {
		i64 3188209531010000695, ; hash 0x2c3ecbad355da737, from name: System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 152
	%struct.DSOCacheEntry {
		i64 3215847190090144585, ; hash 0x2ca0fbfb2942db49, from name: libaot-System.Security.Cryptography.Algorithms.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 153
	%struct.DSOCacheEntry {
		i64 3228004203549710724, ; hash 0x2ccc2cb86e0c5984, from name: aot-System.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 154
	%struct.DSOCacheEntry {
		i64 3243810660761008057, ; hash 0x2d04549c0948f7b9, from name: aot-System.Xml.XmlSerializer
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 155
	%struct.DSOCacheEntry {
		i64 3250939353211503980, ; hash 0x2d1da81e1682856c, from name: libaot-Xamarin.AndroidX.Browser.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 156
	%struct.DSOCacheEntry {
		i64 3260817401620729492, ; hash 0x2d40c02675040e94, from name: libaot-System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 157
	%struct.DSOCacheEntry {
		i64 3282577833136852042, ; hash 0x2d8e0f25bbb18c4a, from name: aot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 158
	%struct.DSOCacheEntry {
		i64 3289520064315143713, ; hash 0x2da6b911e3063621, from name: Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 159
	%struct.DSOCacheEntry {
		i64 3325875462027654285, ; hash 0x2e27e21c8958b48d, from name: System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 160
	%struct.DSOCacheEntry {
		i64 3344514922410554693, ; hash 0x2e6a1a9a18463545, from name: Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 161
	%struct.DSOCacheEntry {
		i64 3379278180018875679, ; hash 0x2ee59b99bd40ed1f, from name: libaot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 162
	%struct.DSOCacheEntry {
		i64 3387343871458221356, ; hash 0x2f02434dde5d1d2c, from name: Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 163
	%struct.DSOCacheEntry {
		i64 3413847582085635339, ; hash 0x2f606c49df8a5d0b, from name: aot-System.Text.Encoding.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 164
	%struct.DSOCacheEntry {
		i64 3415134081241495173, ; hash 0x2f64fe5a4cbab685, from name: libaot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 165
	%struct.DSOCacheEntry {
		i64 3429672777697402584, ; hash 0x2f98a5385a7b1ed8, from name: Microsoft.Maui.Essentials
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 166
	%struct.DSOCacheEntry {
		i64 3491308886800479652, ; hash 0x30739eef4ee835a4, from name: System.Net.Sockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 167
	%struct.DSOCacheEntry {
		i64 3494946837667399002, ; hash 0x30808ba1c00a455a, from name: Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 168
	%struct.DSOCacheEntry {
		i64 3504968395820649747, ; hash 0x30a4262f95dc4d13, from name: Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 169
	%struct.DSOCacheEntry {
		i64 3519863767463074839, ; hash 0x30d911728d679c17, from name: libaot-System.IO.Compression.Brotli
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 170
	%struct.DSOCacheEntry {
		i64 3522470458906976663, ; hash 0x30e2543832f52197, from name: Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 171
	%struct.DSOCacheEntry {
		i64 3534503520749001150, ; hash 0x310d1439bb9c99be, from name: aot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 172
	%struct.DSOCacheEntry {
		i64 3565908020027737498, ; hash 0x317ca6738378459a, from name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 173
	%struct.DSOCacheEntry {
		i64 3577153083746314324, ; hash 0x31a499c6efe46854, from name: libaot-System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 174
	%struct.DSOCacheEntry {
		i64 3584501248261514691, ; hash 0x31beb4e4cf9265c3, from name: libaot-System.Xml.ReaderWriter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 175
	%struct.DSOCacheEntry {
		i64 3604923293906189876, ; hash 0x320742a2d7cf3e34, from name: libaot-System.Reflection.Emit.Lightweight
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 176
	%struct.DSOCacheEntry {
		i64 3617300193753112415, ; hash 0x32333b5c669b1f5f, from name: Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 177
	%struct.DSOCacheEntry {
		i64 3638003163729360188, ; hash 0x327cc89a39d5f53c, from name: Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 178
	%struct.DSOCacheEntry {
		i64 3647754201059316852, ; hash 0x329f6d1e86145474, from name: System.Xml.ReaderWriter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 179
	%struct.DSOCacheEntry {
		i64 3657389980202273675, ; hash 0x32c1a8cf2f078b8b, from name: libaot-System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 180
	%struct.DSOCacheEntry {
		i64 3682807869886927031, ; hash 0x331bf63ecc9f90b7, from name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 181
	%struct.DSOCacheEntry {
		i64 3683086715764323178, ; hash 0x331cf3daaa17b36a, from name: aot-System.Net.NameResolution
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 182
	%struct.DSOCacheEntry {
		i64 3703096612151080118, ; hash 0x33640abfb837b4b6, from name: libaot-System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 183
	%struct.DSOCacheEntry {
		i64 3707216742628388692, ; hash 0x3372adfc59beef54, from name: aot-Xamarin.AndroidX.CardView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 184
	%struct.DSOCacheEntry {
		i64 3727469159507183293, ; hash 0x33baa1739ba646bd, from name: Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 185
	%struct.DSOCacheEntry {
		i64 3766788760912740873, ; hash 0x3446526bb6234209, from name: aot-System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 186
	%struct.DSOCacheEntry {
		i64 3778015232232666774, ; hash 0x346e34d6413e3696, from name: libaot-System.Security.Claims.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 187
	%struct.DSOCacheEntry {
		i64 3812074535555465200, ; hash 0x34e73597c5187ff0, from name: aot-Microsoft.Data.SqlClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Data.SqlClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 188
	%struct.DSOCacheEntry {
		i64 3919223565570527920, ; hash 0x3663e111652bd2b0, from name: System.Security.Cryptography.Encoding
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 189
	%struct.DSOCacheEntry {
		i64 3926486732424186854, ; hash 0x367daee1356d8be6, from name: aot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 190
	%struct.DSOCacheEntry {
		i64 3933965368022646939, ; hash 0x369840a8bfadc09b, from name: System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 191
	%struct.DSOCacheEntry {
		i64 3943677120668259164, ; hash 0x36bac1725e44535c, from name: aot-System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 192
	%struct.DSOCacheEntry {
		i64 3966267475168208030, ; hash 0x370b03412596249e, from name: System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 193
	%struct.DSOCacheEntry {
		i64 3980531548088931713, ; hash 0x373db05a6d139581, from name: CapaENT.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CapaENT.dll.so
		ptr null; void* handle (0x0)
	}, ; 194
	%struct.DSOCacheEntry {
		i64 4009997192427317104, ; hash 0x37a65f335cf1a770, from name: System.Runtime.Serialization.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 195
	%struct.DSOCacheEntry {
		i64 4017192615964119979, ; hash 0x37bfef6674dd13ab, from name: aot-System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 196
	%struct.DSOCacheEntry {
		i64 4051663015955853467, ; hash 0x383a660bdfa2f09b, from name: System.Security.Cryptography.Pkcs.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Security.Cryptography.Pkcs.dll.so
		ptr null; void* handle (0x0)
	}, ; 197
	%struct.DSOCacheEntry {
		i64 4082358154728349959, ; hash 0x38a7731cca80a107, from name: libaot-System.Reflection.Emit.ILGeneration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 198
	%struct.DSOCacheEntry {
		i64 4093745415275440803, ; hash 0x38cfe7c3fe606aa3, from name: System.Diagnostics.Tracing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 199
	%struct.DSOCacheEntry {
		i64 4095418721340757718, ; hash 0x38d5d9a0ec0016d6, from name: aot-Microsoft.Maui.Essentials
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 200
	%struct.DSOCacheEntry {
		i64 4105760315252337620, ; hash 0x38fa9740e382ebd4, from name: libaot-System.Net.WebHeaderCollection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 201
	%struct.DSOCacheEntry {
		i64 4115927144641244248, ; hash 0x391eb5ee51baac58, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 202
	%struct.DSOCacheEntry {
		i64 4137384516858186512, ; hash 0x396af14c1a888b10, from name: System.Security.Cryptography.Encoding.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 203
	%struct.DSOCacheEntry {
		i64 4145305300617615876, ; hash 0x3987153548db5a04, from name: libaot-System.Configuration.ConfigurationManager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Configuration.ConfigurationManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 204
	%struct.DSOCacheEntry {
		i64 4154383907710350974, ; hash 0x39a7562737acb67e, from name: System.ComponentModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 205
	%struct.DSOCacheEntry {
		i64 4167269041631776580, ; hash 0x39d51d1d3df1cf44, from name: System.Threading.ThreadPool
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 206
	%struct.DSOCacheEntry {
		i64 4183601209988956829, ; hash 0x3a0f23228349429d, from name: libaot-Microsoft.Data.SqlClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Data.SqlClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 207
	%struct.DSOCacheEntry {
		i64 4187479170553454871, ; hash 0x3a1cea1e912fa117, from name: System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 208
	%struct.DSOCacheEntry {
		i64 4199824557729976903, ; hash 0x3a48c62f02751247, from name: libaot-Microsoft.IdentityModel.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-Microsoft.IdentityModel.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 209
	%struct.DSOCacheEntry {
		i64 4205801962323029395, ; hash 0x3a5e0299f7e7ad93, from name: System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 210
	%struct.DSOCacheEntry {
		i64 4220783285704279373, ; hash 0x3a933c09224f454d, from name: aot-System.Threading.Tasks.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 211
	%struct.DSOCacheEntry {
		i64 4221931987470636147, ; hash 0x3a9750c61b0bd473, from name: libaot-System.Threading.ThreadPool
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 212
	%struct.DSOCacheEntry {
		i64 4222578164457965892, ; hash 0x3a999c77e8d68944, from name: libaot-CapaDAL
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-CapaDAL.dll.so
		ptr null; void* handle (0x0)
	}, ; 213
	%struct.DSOCacheEntry {
		i64 4243001330476888824, ; hash 0x3ae22b3acc95b2f8, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 214
	%struct.DSOCacheEntry {
		i64 4244996295783171795, ; hash 0x3ae941a3db0146d3, from name: aot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 215
	%struct.DSOCacheEntry {
		i64 4340731027035686323, ; hash 0x3c3d5fdef3fa85b3, from name: aot-Microsoft.Identity.Client.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Identity.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 216
	%struct.DSOCacheEntry {
		i64 4348972226440319252, ; hash 0x3c5aa732b703d114, from name: aot-System.Xml.XmlSerializer.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 217
	%struct.DSOCacheEntry {
		i64 4364864446463818253, ; hash 0x3c931d1688353a0d, from name: aot-System.Security.Cryptography.Encoding
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 218
	%struct.DSOCacheEntry {
		i64 4411920538413871651, ; hash 0x3d3a4a5ab568b223, from name: aot-netstandard
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 219
	%struct.DSOCacheEntry {
		i64 4425588670699136170, ; hash 0x3d6ad972bf03e4aa, from name: Xamarin.AndroidX.Collection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 220
	%struct.DSOCacheEntry {
		i64 4433889062591767415, ; hash 0x3d88569c5545a377, from name: aot-System.IO.Pipes.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 221
	%struct.DSOCacheEntry {
		i64 4468445964959563603, ; hash 0x3e031bee27713f53, from name: Microsoft.Win32.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 222
	%struct.DSOCacheEntry {
		i64 4480088684592380434, ; hash 0x3e2c78ec0f603a12, from name: aot-Newtonsoft.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 223
	%struct.DSOCacheEntry {
		i64 4485509010103122468, ; hash 0x3e3fbaadf002ba24, from name: aot-System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 224
	%struct.DSOCacheEntry {
		i64 4519937209358600751, ; hash 0x3eba0af1bae3ca2f, from name: aot-Xamarin.AndroidX.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 225
	%struct.DSOCacheEntry {
		i64 4533637005954432954, ; hash 0x3eeab6d6307abfba, from name: System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 226
	%struct.DSOCacheEntry {
		i64 4562889186705488620, ; hash 0x3f52a38a430d3aec, from name: libaot-System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 227
	%struct.DSOCacheEntry {
		i64 4600564633383719664, ; hash 0x3fd87d28c30fd2f0, from name: aot-System.Net.NetworkInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 228
	%struct.DSOCacheEntry {
		i64 4619841365973187374, ; hash 0x401cf93ed17cbb2e, from name: libaot-System.Private.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 229
	%struct.DSOCacheEntry {
		i64 4624036676708874426, ; hash 0x402be0dbb79c38ba, from name: aot-Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 230
	%struct.DSOCacheEntry {
		i64 4648377438325814801, ; hash 0x40825aa6e959b611, from name: libaot-Microsoft.Extensions.Caching.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.Caching.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 231
	%struct.DSOCacheEntry {
		i64 4651216096443836840, ; hash 0x408c7065821d29a8, from name: aot-System.Diagnostics.Process.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 232
	%struct.DSOCacheEntry {
		i64 4672453897036726049, ; hash 0x40d7e4104a437f21, from name: System.IO.FileSystem.Watcher
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 233
	%struct.DSOCacheEntry {
		i64 4676011426420077172, ; hash 0x40e4879e256fb274, from name: System.Drawing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 234
	%struct.DSOCacheEntry {
		i64 4704458384224729820, ; hash 0x414997f9a452badc, from name: libaot-System.Net.WebHeaderCollection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 235
	%struct.DSOCacheEntry {
		i64 4716677666592453464, ; hash 0x417501590542f358, from name: System.Xml.XmlSerializer
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 236
	%struct.DSOCacheEntry {
		i64 4748725187834767676, ; hash 0x41e6dc6604d7693c, from name: libaot-System.Private.DataContractSerialization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 237
	%struct.DSOCacheEntry {
		i64 4765831871471954487, ; hash 0x4223a2d62e522a37, from name: libaot-System.Security.AccessControl.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 238
	%struct.DSOCacheEntry {
		i64 4778132833905139113, ; hash 0x424f567f2e8bdda9, from name: libaot-System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 239
	%struct.DSOCacheEntry {
		i64 4794310189461587505, ; hash 0x4288cfb749e4c631, from name: Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 240
	%struct.DSOCacheEntry {
		i64 4802323735336412051, ; hash 0x42a547fe55276393, from name: DTO.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-DTO.dll.so
		ptr null; void* handle (0x0)
	}, ; 241
	%struct.DSOCacheEntry {
		i64 4809057822547766521, ; hash 0x42bd349c3145ecf9, from name: System.Drawing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 242
	%struct.DSOCacheEntry {
		i64 4821796847100292949, ; hash 0x42ea76af7a82ef55, from name: System.Private.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 243
	%struct.DSOCacheEntry {
		i64 4832790362546924928, ; hash 0x4311853ac18a6d80, from name: aot-Microsoft.IdentityModel.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-Microsoft.IdentityModel.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 244
	%struct.DSOCacheEntry {
		i64 4904118099769380138, ; hash 0x440eed6db9514d2a, from name: Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 245
	%struct.DSOCacheEntry {
		i64 4905845688753735370, ; hash 0x441510a9610c46ca, from name: libaot-Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 246
	%struct.DSOCacheEntry {
		i64 4931815757766637469, ; hash 0x4471544d435ab79d, from name: System.IO.FileSystem.Watcher.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 247
	%struct.DSOCacheEntry {
		i64 4936802805617500442, ; hash 0x44830bfed2fba11a, from name: System.Security.Cryptography.Algorithms.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 248
	%struct.DSOCacheEntry {
		i64 4942169814716192606, ; hash 0x44961d4301d1175e, from name: aot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 249
	%struct.DSOCacheEntry {
		i64 4949216247540332023, ; hash 0x44af25f47f3bb5f7, from name: libaot-System.Diagnostics.StackTrace.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 250
	%struct.DSOCacheEntry {
		i64 4952410279526942859, ; hash 0x44ba7ee90532488b, from name: aot-System.Diagnostics.StackTrace.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 251
	%struct.DSOCacheEntry {
		i64 5022402094091598340, ; hash 0x45b328184181fa04, from name: aot-Microsoft.IdentityModel.Protocols
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-Microsoft.IdentityModel.Protocols.dll.so
		ptr null; void* handle (0x0)
	}, ; 252
	%struct.DSOCacheEntry {
		i64 5028442704735181325, ; hash 0x45c89dff85251a0d, from name: libaot-Azure.Identity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Azure.Identity.dll.so
		ptr null; void* handle (0x0)
	}, ; 253
	%struct.DSOCacheEntry {
		i64 5029111617119435182, ; hash 0x45cafe5ed231b9ae, from name: System.Net.WebClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 254
	%struct.DSOCacheEntry {
		i64 5059135204092160708, ; hash 0x4635a8a9e6962ac4, from name: aot-System.Security.Cryptography.ProtectedData.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Security.Cryptography.ProtectedData.dll.so
		ptr null; void* handle (0x0)
	}, ; 255
	%struct.DSOCacheEntry {
		i64 5074164375705998164, ; hash 0x466b0d9d99e5d354, from name: aot-Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 256
	%struct.DSOCacheEntry {
		i64 5090162160040187936, ; hash 0x46a3e38406549820, from name: libaot-Services
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Services.dll.so
		ptr null; void* handle (0x0)
	}, ; 257
	%struct.DSOCacheEntry {
		i64 5103417709280584325, ; hash 0x46d2fb5e161b6285, from name: System.Collections.Specialized
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 258
	%struct.DSOCacheEntry {
		i64 5109692736403029004, ; hash 0x46e94678b0b23c0c, from name: libaot-System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 259
	%struct.DSOCacheEntry {
		i64 5179211469364745335, ; hash 0x47e04164081d5477, from name: libaot-System.Security.Cryptography.Pkcs
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Security.Cryptography.Pkcs.dll.so
		ptr null; void* handle (0x0)
	}, ; 260
	%struct.DSOCacheEntry {
		i64 5221249054805926084, ; hash 0x48759a5a1b8d20c4, from name: libaot-Microsoft.Data.SqlClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Data.SqlClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 261
	%struct.DSOCacheEntry {
		i64 5232730255288553603, ; hash 0x489e647167e9d083, from name: aot-System.ComponentModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 262
	%struct.DSOCacheEntry {
		i64 5241291192275590464, ; hash 0x48bcce91dff85d40, from name: libaot-System.Memory.Data
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Memory.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 263
	%struct.DSOCacheEntry {
		i64 5245831624004909525, ; hash 0x48ccf0118452b9d5, from name: libaot-System.Runtime.Serialization.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 264
	%struct.DSOCacheEntry {
		i64 5255546469364035812, ; hash 0x48ef73ab370070e4, from name: aot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 265
	%struct.DSOCacheEntry {
		i64 5266401548478623734, ; hash 0x4916044e45a2aff6, from name: aot-Xamarin.Google.Android.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 266
	%struct.DSOCacheEntry {
		i64 5266659643402539735, ; hash 0x4916ef0aade4d2d7, from name: Microsoft.Maui.Essentials.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 267
	%struct.DSOCacheEntry {
		i64 5267519814036117019, ; hash 0x4919fd5cc2f4561b, from name: System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 268
	%struct.DSOCacheEntry {
		i64 5290786973231294105, ; hash 0x496ca6b869b72699, from name: System.Runtime.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 269
	%struct.DSOCacheEntry {
		i64 5308663384316065149, ; hash 0x49ac2938b648357d, from name: aot-System.Net.ServicePoint.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 270
	%struct.DSOCacheEntry {
		i64 5334205502128732672, ; hash 0x4a06e7a471513a00, from name: aot-System.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 271
	%struct.DSOCacheEntry {
		i64 5366974786996218887, ; hash 0x4a7b532221632c07, from name: libaot-Microsoft.Maui.Essentials
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 272
	%struct.DSOCacheEntry {
		i64 5418751440481470487, ; hash 0x4b3345b9b008c817, from name: libaot-Microsoft.IdentityModel.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-Microsoft.IdentityModel.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 273
	%struct.DSOCacheEntry {
		i64 5423376490970181369, ; hash 0x4b43b42f2b7b6ef9, from name: System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 274
	%struct.DSOCacheEntry {
		i64 5428475970428150530, ; hash 0x4b55d222411d2302, from name: System.Buffers.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 275
	%struct.DSOCacheEntry {
		i64 5440481460344582099, ; hash 0x4b80791032efefd3, from name: libaot-System.Numerics.Vectors.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 276
	%struct.DSOCacheEntry {
		i64 5479418050698653789, ; hash 0x4c0acdaf97c1b05d, from name: libaot-System.ComponentModel.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 277
	%struct.DSOCacheEntry {
		i64 5491070175078033306, ; hash 0x4c34333b3644a79a, from name: Microsoft.IdentityModel.Tokens.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Microsoft.IdentityModel.Tokens.dll.so
		ptr null; void* handle (0x0)
	}, ; 278
	%struct.DSOCacheEntry {
		i64 5554419957827635904, ; hash 0x4d154385e7a80ac0, from name: libaot-System.Net.Sockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 279
	%struct.DSOCacheEntry {
		i64 5570799893513421663, ; hash 0x4d4f74fcdfa6c35f, from name: System.IO.Compression.Brotli
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 280
	%struct.DSOCacheEntry {
		i64 5678506072386041620, ; hash 0x4ece1b2fd377f714, from name: aot-System.Buffers
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 281
	%struct.DSOCacheEntry {
		i64 5718066319469868703, ; hash 0x4f5aa7059e20769f, from name: System.Private.DataContractSerialization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 282
	%struct.DSOCacheEntry {
		i64 5753633696766002394, ; hash 0x4fd9035cf77484da, from name: libaot-System.Drawing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 283
	%struct.DSOCacheEntry {
		i64 5758839772475388903, ; hash 0x4feb8242ecc973e7, from name: aot-Microsoft.Extensions.Caching.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Caching.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 284
	%struct.DSOCacheEntry {
		i64 5759268217942071081, ; hash 0x4fed07ee28a25729, from name: aot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 285
	%struct.DSOCacheEntry {
		i64 5806416082395050786, ; hash 0x509488a9c945b322, from name: aot-System.Text.Encoding.CodePages
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 286
	%struct.DSOCacheEntry {
		i64 5810967376274139386, ; hash 0x50a4b40a783428fa, from name: aot-Microsoft.SqlServer.Server
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-Microsoft.SqlServer.Server.dll.so
		ptr null; void* handle (0x0)
	}, ; 287
	%struct.DSOCacheEntry {
		i64 5841174596225512211, ; hash 0x51100558ef0eb313, from name: aot-Microsoft.Identity.Client.Extensions.Msal.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-Microsoft.Identity.Client.Extensions.Msal.dll.so
		ptr null; void* handle (0x0)
	}, ; 288
	%struct.DSOCacheEntry {
		i64 5900900230463535802, ; hash 0x51e4357ecbccbaba, from name: System.Security.Cryptography.Native.Android.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 289
	%struct.DSOCacheEntry {
		i64 5948985717485083712, ; hash 0x528f0afdb0921c40, from name: libSystem.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 290
	%struct.DSOCacheEntry {
		i64 5958220530006169673, ; hash 0x52afda0108751849, from name: System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 291
	%struct.DSOCacheEntry {
		i64 5979151488806146654, ; hash 0x52fa3699a489d25e, from name: System.Formats.Asn1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 292
	%struct.DSOCacheEntry {
		i64 5983473201068900625, ; hash 0x5309912cb0c80111, from name: aot-System.Text.Encoding.CodePages.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 293
	%struct.DSOCacheEntry {
		i64 5984759512290286505, ; hash 0x530e23115c33dba9, from name: System.Security.Cryptography.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 294
	%struct.DSOCacheEntry {
		i64 6027563593999215487, ; hash 0x53a6352741666b7f, from name: libaot-System.Reflection.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 295
	%struct.DSOCacheEntry {
		i64 6037906442115797419, ; hash 0x53caf3eb3d5ad1ab, from name: aot-System.IO.FileSystem.AccessControl
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 296
	%struct.DSOCacheEntry {
		i64 6069444521208265984, ; hash 0x543affa27e8f3d00, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 297
	%struct.DSOCacheEntry {
		i64 6076224371281935956, ; hash 0x545315df59d4be54, from name: System.Xml.XDocument.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 298
	%struct.DSOCacheEntry {
		i64 6153263910407647837, ; hash 0x5564c8ecd514325d, from name: aot-System.Security.Cryptography.Algorithms.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 299
	%struct.DSOCacheEntry {
		i64 6198196371300036003, ; hash 0x56046ac29f742da3, from name: libaot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 300
	%struct.DSOCacheEntry {
		i64 6211153486623845028, ; hash 0x563273301fa4aaa4, from name: libaot-System.Diagnostics.EventLog.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.EventLog.dll.so
		ptr null; void* handle (0x0)
	}, ; 301
	%struct.DSOCacheEntry {
		i64 6251069312384999852, ; hash 0x56c0426b870da1ac, from name: System.Transactions.Local
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 302
	%struct.DSOCacheEntry {
		i64 6278736998281604212, ; hash 0x57228e08a4ad6c74, from name: System.Private.DataContractSerialization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 303
	%struct.DSOCacheEntry {
		i64 6284145129771520194, ; hash 0x5735c4b3610850c2, from name: System.Reflection.Emit.ILGeneration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 304
	%struct.DSOCacheEntry {
		i64 6308061292769401015, ; hash 0x578abc5300e958b7, from name: libSystem.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 305
	%struct.DSOCacheEntry {
		i64 6309031637591895059, ; hash 0x578e2ed9035dac13, from name: aot-System.ComponentModel.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 306
	%struct.DSOCacheEntry {
		i64 6342692645518226948, ; hash 0x5805c55b2798b604, from name: Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 307
	%struct.DSOCacheEntry {
		i64 6352489697598145066, ; hash 0x582893b918aa822a, from name: Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 308
	%struct.DSOCacheEntry {
		i64 6357457916754632952, ; hash 0x583a3a4ac2a7a0f8, from name: _Microsoft.Android.Resource.Designer
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 309
	%struct.DSOCacheEntry {
		i64 6366869544022664129, ; hash 0x585baa1dfeb963c1, from name: aot-System.Memory.Data
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Memory.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 310
	%struct.DSOCacheEntry {
		i64 6368933420042019790, ; hash 0x5862ff3393b7e3ce, from name: aot-System.Security.Cryptography.ProtectedData
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Security.Cryptography.ProtectedData.dll.so
		ptr null; void* handle (0x0)
	}, ; 311
	%struct.DSOCacheEntry {
		i64 6385611344971160469, ; hash 0x589e3faf92b5db95, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 312
	%struct.DSOCacheEntry {
		i64 6401687960814735282, ; hash 0x58d75d486341cfb2, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 313
	%struct.DSOCacheEntry {
		i64 6447909829231584316, ; hash 0x597b93d3c319243c, from name: System.Configuration.ConfigurationManager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Configuration.ConfigurationManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 314
	%struct.DSOCacheEntry {
		i64 6455134436899888036, ; hash 0x59953e91d0cf1ba4, from name: aot-System.ClientModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.ClientModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 315
	%struct.DSOCacheEntry {
		i64 6486749723127141077, ; hash 0x5a05908141db52d5, from name: aot-Microsoft.Extensions.Caching.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Caching.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 316
	%struct.DSOCacheEntry {
		i64 6488258789742214262, ; hash 0x5a0aecfe3563fc76, from name: aot-System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 317
	%struct.DSOCacheEntry {
		i64 6496174396349718907, ; hash 0x5a270c31fd69a17b, from name: libaot-System.Runtime.Serialization.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 318
	%struct.DSOCacheEntry {
		i64 6497688098531050961, ; hash 0x5a2c6ce63e3a05d1, from name: aot-System.Threading.ThreadPool
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 319
	%struct.DSOCacheEntry {
		i64 6521880595188375514, ; hash 0x5a825fd8cfb75fda, from name: aot-Newtonsoft.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 320
	%struct.DSOCacheEntry {
		i64 6554634592592039790, ; hash 0x5af6bd6f1bef8f6e, from name: CapaDAL.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-CapaDAL.dll.so
		ptr null; void* handle (0x0)
	}, ; 321
	%struct.DSOCacheEntry {
		i64 6558713382764477133, ; hash 0x5b053b127346facd, from name: mono-component-marshal-ilgen.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 322
	%struct.DSOCacheEntry {
		i64 6560151584539558821, ; hash 0x5b0a571be53243a5, from name: Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 323
	%struct.DSOCacheEntry {
		i64 6560588458386133218, ; hash 0x5b0be47183a210e2, from name: libaot-Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 324
	%struct.DSOCacheEntry {
		i64 6568042426089023914, ; hash 0x5b265fc99cbb29aa, from name: Microsoft.Identity.Client.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Identity.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 325
	%struct.DSOCacheEntry {
		i64 6617685658146568858, ; hash 0x5bd6be0b4905fa9a, from name: System.Text.Encoding.CodePages
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 326
	%struct.DSOCacheEntry {
		i64 6635175040656775421, ; hash 0x5c14e08b78e298fd, from name: libaot-CapaUI-Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-CapaUI-Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 327
	%struct.DSOCacheEntry {
		i64 6635659305191820255, ; hash 0x5c1698fb18794bdf, from name: libaot-Microsoft.IdentityModel.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-Microsoft.IdentityModel.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 328
	%struct.DSOCacheEntry {
		i64 6672263946731405092, ; hash 0x5c98a4b558923f24, from name: aot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 329
	%struct.DSOCacheEntry {
		i64 6679219254897596376, ; hash 0x5cb15a86391ed7d8, from name: Microsoft.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 330
	%struct.DSOCacheEntry {
		i64 6742994682278638176, ; hash 0x5d93edf00790f260, from name: aot-DTO
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-DTO.dll.so
		ptr null; void* handle (0x0)
	}, ; 331
	%struct.DSOCacheEntry {
		i64 6786606130239981554, ; hash 0x5e2ede51877147f2, from name: System.Diagnostics.TraceSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 332
	%struct.DSOCacheEntry {
		i64 6811092106988893788, ; hash 0x5e85dc2f418a365c, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 333
	%struct.DSOCacheEntry {
		i64 6836385375498469829, ; hash 0x5edfb8473e4301c5, from name: Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 334
	%struct.DSOCacheEntry {
		i64 6869235022386136156, ; hash 0x5f546cdbabff845c, from name: aot-CapaUI-Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-CapaUI-Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 335
	%struct.DSOCacheEntry {
		i64 6876862101832370452, ; hash 0x5f6f85a57d108914, from name: System.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 336
	%struct.DSOCacheEntry {
		i64 6878938814479285146, ; hash 0x5f76e667d4af3b9a, from name: libaot-Microsoft.IdentityModel.Protocols.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-Microsoft.IdentityModel.Protocols.dll.so
		ptr null; void* handle (0x0)
	}, ; 337
	%struct.DSOCacheEntry {
		i64 6879679050593672945, ; hash 0x5f7987a57b551ef1, from name: libaot-Xamarin.AndroidX.CardView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 338
	%struct.DSOCacheEntry {
		i64 6894844156784520562, ; hash 0x5faf683aead1ad72, from name: System.Numerics.Vectors
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 339
	%struct.DSOCacheEntry {
		i64 6913716284728566067, ; hash 0x5ff274549d146133, from name: System.IO.Compression.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 340
	%struct.DSOCacheEntry {
		i64 6993628010754849192, ; hash 0x610e5b9f3843b9a8, from name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 341
	%struct.DSOCacheEntry {
		i64 7005231924406374519, ; hash 0x61379551e777d077, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 342
	%struct.DSOCacheEntry {
		i64 7005623937201008400, ; hash 0x6138f9da7ed6ef10, from name: libaot-System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 343
	%struct.DSOCacheEntry {
		i64 7019789918392632159, ; hash 0x616b4dbd03a9435f, from name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 344
	%struct.DSOCacheEntry {
		i64 7026076528261849631, ; hash 0x6181a3606fc1e21f, from name: libaot-Xamarin.Kotlin.StdLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 345
	%struct.DSOCacheEntry {
		i64 7032820184502538532, ; hash 0x619998b242789124, from name: libaot-System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 346
	%struct.DSOCacheEntry {
		i64 7042653436132019405, ; hash 0x61bc87fc90d54ccd, from name: aot-System.Configuration.ConfigurationManager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Configuration.ConfigurationManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 347
	%struct.DSOCacheEntry {
		i64 7078790046120101683, ; hash 0x623cea0aba8f4733, from name: libaot-System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 348
	%struct.DSOCacheEntry {
		i64 7086827931071621775, ; hash 0x62597874a7d72a8f, from name: aot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 349
	%struct.DSOCacheEntry {
		i64 7105430439328552570, ; hash 0x629b8f56a06d167a, from name: System.Security.Cryptography.Pkcs
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Security.Cryptography.Pkcs.dll.so
		ptr null; void* handle (0x0)
	}, ; 350
	%struct.DSOCacheEntry {
		i64 7136925810822744514, ; hash 0x630b74363e6809c2, from name: Microsoft.IdentityModel.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-Microsoft.IdentityModel.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 351
	%struct.DSOCacheEntry {
		i64 7146110801539337461, ; hash 0x632c15e98b558cf5, from name: aot-System.Threading.ThreadPool.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 352
	%struct.DSOCacheEntry {
		i64 7198932752074671326, ; hash 0x63e7bf32495604de, from name: libaot-Xamarin.AndroidX.Collection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 353
	%struct.DSOCacheEntry {
		i64 7204703686233576068, ; hash 0x63fc3fd499e65284, from name: libaot-Microsoft.Extensions.Caching.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Caching.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 354
	%struct.DSOCacheEntry {
		i64 7252784626773793767, ; hash 0x64a71130ef441be7, from name: System.Drawing.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 355
	%struct.DSOCacheEntry {
		i64 7260863994773921465, ; hash 0x64c3c55562ec5eb9, from name: libaot-System.Security.Claims
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 356
	%struct.DSOCacheEntry {
		i64 7270811800166795866, ; hash 0x64e71ccf51a90a5a, from name: System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 357
	%struct.DSOCacheEntry {
		i64 7286834274487352090, ; hash 0x6520092a53f5bb1a, from name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 358
	%struct.DSOCacheEntry {
		i64 7289396155428031695, ; hash 0x6529232eb762cccf, from name: Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 359
	%struct.DSOCacheEntry {
		i64 7293199643205339005, ; hash 0x6536a66f3942877d, from name: aot-Xamarin.AndroidX.CustomView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 360
	%struct.DSOCacheEntry {
		i64 7316205155833392065, ; hash 0x658861d38954abc1, from name: Microsoft.Win32.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 361
	%struct.DSOCacheEntry {
		i64 7333261945001751217, ; hash 0x65c4fae2bcb832b1, from name: aot-System.Security.Cryptography.Pkcs
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Security.Cryptography.Pkcs.dll.so
		ptr null; void* handle (0x0)
	}, ; 362
	%struct.DSOCacheEntry {
		i64 7338982286544642983, ; hash 0x65d94d818a60a3a7, from name: monodroid.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 363
	%struct.DSOCacheEntry {
		i64 7357705307462257638, ; hash 0x661bd1fe8d4b4be6, from name: aot-Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 364
	%struct.DSOCacheEntry {
		i64 7360049220918255826, ; hash 0x662425c56e3920d2, from name: System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 365
	%struct.DSOCacheEntry {
		i64 7381472336305914060, ; hash 0x667041fb2ce300cc, from name: aot-System.Security.Cryptography.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 366
	%struct.DSOCacheEntry {
		i64 7415347135721941512, ; hash 0x66e89aee86eaaa08, from name: libmono-component-marshal-ilgen
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 367
	%struct.DSOCacheEntry {
		i64 7447924280570395180, ; hash 0x675c57ac2167ba2c, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 368
	%struct.DSOCacheEntry {
		i64 7465578309990517956, ; hash 0x679b0feb29d88cc4, from name: aot-System.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 369
	%struct.DSOCacheEntry {
		i64 7477302391979602800, ; hash 0x67c4b6e8b81f7370, from name: Xamarin.AndroidX.CardView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 370
	%struct.DSOCacheEntry {
		i64 7484096333359613774, ; hash 0x67dcd9f676b4074e, from name: libaot-System.Net.Security
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 371
	%struct.DSOCacheEntry {
		i64 7489048572193775167, ; hash 0x67ee71ff6b419e3f, from name: System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 372
	%struct.DSOCacheEntry {
		i64 7496222613193209122, ; hash 0x6807eec000a1b522, from name: System.IdentityModel.Tokens.Jwt
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.IdentityModel.Tokens.Jwt.dll.so
		ptr null; void* handle (0x0)
	}, ; 373
	%struct.DSOCacheEntry {
		i64 7514939451885975947, ; hash 0x684a6d9d9a3b798b, from name: System.Runtime.Serialization.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 374
	%struct.DSOCacheEntry {
		i64 7515511324144895830, ; hash 0x684c75bafd150756, from name: System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 375
	%struct.DSOCacheEntry {
		i64 7532437531913037246, ; hash 0x68889806d67f25be, from name: libaot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 376
	%struct.DSOCacheEntry {
		i64 7535601351437907993, ; hash 0x6893d580f968f819, from name: System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 377
	%struct.DSOCacheEntry {
		i64 7540556024932143097, ; hash 0x68a56fc0cb030ff9, from name: aot-System.Drawing.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 378
	%struct.DSOCacheEntry {
		i64 7564660874610836040, ; hash 0x68fb12fc75798248, from name: Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 379
	%struct.DSOCacheEntry {
		i64 7574871849319874938, ; hash 0x691f59d045d1417a, from name: System.Diagnostics.TextWriterTraceListener.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 380
	%struct.DSOCacheEntry {
		i64 7592577537120840276, ; hash 0x695e410af5b2aa54, from name: System.Diagnostics.Process
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 381
	%struct.DSOCacheEntry {
		i64 7603299711682212348, ; hash 0x698458cdc3a5f1fc, from name: aot-System.Collections.NonGeneric.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 382
	%struct.DSOCacheEntry {
		i64 7639941140308737920, ; hash 0x6a0685fd2cfebf80, from name: libSystem.IO.Compression.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 383
	%struct.DSOCacheEntry {
		i64 7640815069151536100, ; hash 0x6a09a0d2973aa3e4, from name: libaot-System.Threading.Channels
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 384
	%struct.DSOCacheEntry {
		i64 7648061494641607363, ; hash 0x6a235f688074c2c3, from name: libaot-System.Text.Encoding.CodePages.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 385
	%struct.DSOCacheEntry {
		i64 7654504624184590948, ; hash 0x6a3a4366801b8264, from name: System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 386
	%struct.DSOCacheEntry {
		i64 7658328537957887241, ; hash 0x6a47d93ace376d09, from name: libaot-Xamarin.Google.Android.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 387
	%struct.DSOCacheEntry {
		i64 7663901784317435967, ; hash 0x6a5ba61157b9203f, from name: libaot-System.IO.FileSystem.AccessControl
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 388
	%struct.DSOCacheEntry {
		i64 7673446916582303699, ; hash 0x6a7d8f50a1b467d3, from name: aot-System.Xml.XDocument.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 389
	%struct.DSOCacheEntry {
		i64 7675303261932883976, ; hash 0x6a8427a6b6e81008, from name: aot-System.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 390
	%struct.DSOCacheEntry {
		i64 7695876457946633523, ; hash 0x6acd3edd2f335533, from name: aot-System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 391
	%struct.DSOCacheEntry {
		i64 7714652370974252055, ; hash 0x6b0ff375198b9c17, from name: System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 392
	%struct.DSOCacheEntry {
		i64 7735176074855944702, ; hash 0x6b58dda848e391fe, from name: Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 393
	%struct.DSOCacheEntry {
		i64 7740286304433625072, ; hash 0x6b6b0562539657f0, from name: libmonosgen-2.0
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 394
	%struct.DSOCacheEntry {
		i64 7759661773326470811, ; hash 0x6bafdb45384d4e9b, from name: aot-Microsoft.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 395
	%struct.DSOCacheEntry {
		i64 7775464348757467397, ; hash 0x6be7ffa107672105, from name: libaot-Xamarin.AndroidX.CustomView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 396
	%struct.DSOCacheEntry {
		i64 7778606931357632082, ; hash 0x6bf329ca8ef68652, from name: Microsoft.IdentityModel.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-Microsoft.IdentityModel.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 397
	%struct.DSOCacheEntry {
		i64 7811575945879567399, ; hash 0x6c684aef6e233c27, from name: aot-CapaENT
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CapaENT.dll.so
		ptr null; void* handle (0x0)
	}, ; 398
	%struct.DSOCacheEntry {
		i64 7836164640616011524, ; hash 0x6cbfa6390d64d704, from name: Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 399
	%struct.DSOCacheEntry {
		i64 7855888427540559711, ; hash 0x6d05b8e70ea8375f, from name: System.Console.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 400
	%struct.DSOCacheEntry {
		i64 7897713672933564717, ; hash 0x6d9a50bddcf3612d, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 401
	%struct.DSOCacheEntry {
		i64 7925723596783063949, ; hash 0x6dfdd39e762f938d, from name: libaot-System.Security.Cryptography.ProtectedData
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Security.Cryptography.ProtectedData.dll.so
		ptr null; void* handle (0x0)
	}, ; 402
	%struct.DSOCacheEntry {
		i64 7948127817007369596, ; hash 0x6e4d6c237a200d7c, from name: aot-System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 403
	%struct.DSOCacheEntry {
		i64 7968925550521657015, ; hash 0x6e974f912860a6b7, from name: aot-System.Net.Sockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 404
	%struct.DSOCacheEntry {
		i64 7969273780906385394, ; hash 0x6e988c47dcc25ff2, from name: aot-System.IO.FileSystem.AccessControl.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 405
	%struct.DSOCacheEntry {
		i64 7974095695751206426, ; hash 0x6ea9adc96638d61a, from name: libaot-System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 406
	%struct.DSOCacheEntry {
		i64 8046460106795142811, ; hash 0x6faac4d5cce04e9b, from name: aot-Microsoft.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 407
	%struct.DSOCacheEntry {
		i64 8049906462473363836, ; hash 0x6fb7034702d8a17c, from name: aot-Services
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Services.dll.so
		ptr null; void* handle (0x0)
	}, ; 408
	%struct.DSOCacheEntry {
		i64 8051240247547515680, ; hash 0x6fbbc0590c65d320, from name: libaot-System.Diagnostics.TextWriterTraceListener
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 409
	%struct.DSOCacheEntry {
		i64 8069027220385562465, ; hash 0x6ffaf1816209ff61, from name: aot-System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 410
	%struct.DSOCacheEntry {
		i64 8087206902342787202, ; hash 0x703b87d46f3aa082, from name: System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 411
	%struct.DSOCacheEntry {
		i64 8092331298404567383, ; hash 0x704dbc70de2e0957, from name: aot-_Microsoft.Android.Resource.Designer
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 412
	%struct.DSOCacheEntry {
		i64 8129154283138605531, ; hash 0x70d08ec01ad261db, from name: mono-component-marshal-ilgen
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 413
	%struct.DSOCacheEntry {
		i64 8150551902651424003, ; hash 0x711c93c5a0ec1d03, from name: aot-System.Xml.ReaderWriter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 414
	%struct.DSOCacheEntry {
		i64 8185542183669246576, ; hash 0x7198e33f4794aa70, from name: System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 415
	%struct.DSOCacheEntry {
		i64 8189823481260868218, ; hash 0x71a819108db5027a, from name: libaot-System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 416
	%struct.DSOCacheEntry {
		i64 8194834465862853806, ; hash 0x71b9e68752e224ae, from name: aot-Microsoft.IdentityModel.Tokens.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Microsoft.IdentityModel.Tokens.dll.so
		ptr null; void* handle (0x0)
	}, ; 417
	%struct.DSOCacheEntry {
		i64 8228747456654734221, ; hash 0x72326236cc4df38d, from name: libaot-System.Security.Cryptography.Encoding.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 418
	%struct.DSOCacheEntry {
		i64 8298665547085841745, ; hash 0x732ac858cbd30551, from name: aot-System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 419
	%struct.DSOCacheEntry {
		i64 8313797594473349417, ; hash 0x73608add2114c129, from name: aot-System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 420
	%struct.DSOCacheEntry {
		i64 8335746768722831773, ; hash 0x73ae85857f55a99d, from name: aot-System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 421
	%struct.DSOCacheEntry {
		i64 8336567361463961013, ; hash 0x73b16fd8a22cc5b5, from name: libaot-Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 422
	%struct.DSOCacheEntry {
		i64 8340594550852286012, ; hash 0x73bfbe8dbb1bf63c, from name: aot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 423
	%struct.DSOCacheEntry {
		i64 8362087432769215690, ; hash 0x740c1a3742f79cca, from name: System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 424
	%struct.DSOCacheEntry {
		i64 8368701292315763008, ; hash 0x7423997c6fd56140, from name: System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 425
	%struct.DSOCacheEntry {
		i64 8375722837974120975, ; hash 0x743c8b8b6e92fa0f, from name: aot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 426
	%struct.DSOCacheEntry {
		i64 8382924305585776176, ; hash 0x7456213dc56da630, from name: Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 427
	%struct.DSOCacheEntry {
		i64 8392333777418328833, ; hash 0x74778f1b27881b01, from name: libmonodroid.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 428
	%struct.DSOCacheEntry {
		i64 8466993038139643024, ; hash 0x7580cd4ee204d490, from name: System.Xml.ReaderWriter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 429
	%struct.DSOCacheEntry {
		i64 8478719509125675648, ; hash 0x75aa7678ab9c3a80, from name: aot-Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 430
	%struct.DSOCacheEntry {
		i64 8513291706828295435, ; hash 0x762549b3b6c78d0b, from name: Microsoft.SqlServer.Server
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-Microsoft.SqlServer.Server.dll.so
		ptr null; void* handle (0x0)
	}, ; 431
	%struct.DSOCacheEntry {
		i64 8518412311883997971, ; hash 0x76377add7c28e313, from name: System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 432
	%struct.DSOCacheEntry {
		i64 8522025752637549819, ; hash 0x7644514538b12cfb, from name: aot-Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 433
	%struct.DSOCacheEntry {
		i64 8539930972764622299, ; hash 0x7683edf925fdcddb, from name: aot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 434
	%struct.DSOCacheEntry {
		i64 8563666267364444763, ; hash 0x76d841191140ca5b, from name: System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 435
	%struct.DSOCacheEntry {
		i64 8575914934703628820, ; hash 0x7703c5322afa2214, from name: aot-CapaUI-Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-CapaUI-Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 436
	%struct.DSOCacheEntry {
		i64 8579148903550987409, ; hash 0x770f42793756ac91, from name: aot-System.Net.Security.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 437
	%struct.DSOCacheEntry {
		i64 8586443500336030524, ; hash 0x77292cdee17da33c, from name: libaot-System.IdentityModel.Tokens.Jwt
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.IdentityModel.Tokens.Jwt.dll.so
		ptr null; void* handle (0x0)
	}, ; 438
	%struct.DSOCacheEntry {
		i64 8589613349498884099, ; hash 0x77346fd4e6d59003, from name: aot-Microsoft.IdentityModel.Protocols.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-Microsoft.IdentityModel.Protocols.dll.so
		ptr null; void* handle (0x0)
	}, ; 439
	%struct.DSOCacheEntry {
		i64 8612207396229290788, ; hash 0x7784b4ff583d1b24, from name: aot-System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 440
	%struct.DSOCacheEntry {
		i64 8615710395041339760, ; hash 0x779126f4d0145970, from name: aot-CapaBL
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-CapaBL.dll.so
		ptr null; void* handle (0x0)
	}, ; 441
	%struct.DSOCacheEntry {
		i64 8623099412595258045, ; hash 0x77ab673a869eb2bd, from name: libaot-System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 442
	%struct.DSOCacheEntry {
		i64 8626175481042262068, ; hash 0x77b654e585b55834, from name: Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 443
	%struct.DSOCacheEntry {
		i64 8626645781824515032, ; hash 0x77b800a1f4c5abd8, from name: System.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 444
	%struct.DSOCacheEntry {
		i64 8628664141348535547, ; hash 0x77bf2c51e73afcfb, from name: Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 445
	%struct.DSOCacheEntry {
		i64 8639588376636138208, ; hash 0x77e5fbdaa2fda2e0, from name: Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 446
	%struct.DSOCacheEntry {
		i64 8658236679209272073, ; hash 0x78283c62ed86c309, from name: libaot-Xamarin.AndroidX.ViewPager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 447
	%struct.DSOCacheEntry {
		i64 8659486139845940425, ; hash 0x782cacc3a6ef94c9, from name: System.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 448
	%struct.DSOCacheEntry {
		i64 8659658257135061456, ; hash 0x782d494dd4d049d0, from name: aot-Microsoft.Bcl.AsyncInterfaces.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Bcl.AsyncInterfaces.dll.so
		ptr null; void* handle (0x0)
	}, ; 449
	%struct.DSOCacheEntry {
		i64 8671971269159186248, ; hash 0x785907ec58a06f48, from name: aot-Azure.Identity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Azure.Identity.dll.so
		ptr null; void* handle (0x0)
	}, ; 450
	%struct.DSOCacheEntry {
		i64 8690544511858214025, ; hash 0x789b043066078489, from name: aot-Microsoft.IdentityModel.Protocols.OpenIdConnect.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-Microsoft.IdentityModel.Protocols.OpenIdConnect.dll.so
		ptr null; void* handle (0x0)
	}, ; 451
	%struct.DSOCacheEntry {
		i64 8706152889918323109, ; hash 0x78d277ed1bd279a5, from name: aot-System.Runtime.Serialization.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 452
	%struct.DSOCacheEntry {
		i64 8730145678495508517, ; hash 0x7927b53d8422e825, from name: Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 453
	%struct.DSOCacheEntry {
		i64 8747763348793017252, ; hash 0x79664c6b07fd43a4, from name: libaot-System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 454
	%struct.DSOCacheEntry {
		i64 8760858219412156768, ; hash 0x7994d2222f9f7160, from name: System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 455
	%struct.DSOCacheEntry {
		i64 8761982123773840073, ; hash 0x7998d0518fdccac9, from name: aot-System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 456
	%struct.DSOCacheEntry {
		i64 8772604801161716260, ; hash 0x79be8d9660216224, from name: aot-Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 457
	%struct.DSOCacheEntry {
		i64 8812786412666749070, ; hash 0x7a4d4e8cd864008e, from name: aot-System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 458
	%struct.DSOCacheEntry {
		i64 8824907823227734965, ; hash 0x7a785ee8ab0e0bb5, from name: aot-System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 459
	%struct.DSOCacheEntry {
		i64 8879040545617680294, ; hash 0x7b38b05543d517a6, from name: libaot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 460
	%struct.DSOCacheEntry {
		i64 8879340544350621822, ; hash 0x7b39c12e29be107e, from name: aot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 461
	%struct.DSOCacheEntry {
		i64 8881258142670691192, ; hash 0x7b409139d06e9b78, from name: aot-CapaDAL
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-CapaDAL.dll.so
		ptr null; void* handle (0x0)
	}, ; 462
	%struct.DSOCacheEntry {
		i64 8885752880049328355, ; hash 0x7b50892a693e90e3, from name: libaot-System.Diagnostics.Process.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 463
	%struct.DSOCacheEntry {
		i64 8906503468682351602, ; hash 0x7b9a41b7519893f2, from name: aot-System.Threading.Channels
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 464
	%struct.DSOCacheEntry {
		i64 8934906610293113664, ; hash 0x7bff2a390fcf8340, from name: aot-Xamarin.AndroidX.ViewPager2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 465
	%struct.DSOCacheEntry {
		i64 8941376889969657626, ; hash 0x7c1626e87187471a, from name: System.Xml.XDocument
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 466
	%struct.DSOCacheEntry {
		i64 8954753533646919997, ; hash 0x7c45ace50032d93d, from name: System.Runtime.Serialization.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 467
	%struct.DSOCacheEntry {
		i64 8955323522379913726, ; hash 0x7c47b34bd82799fe, from name: Microsoft.Identity.Client
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Identity.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 468
	%struct.DSOCacheEntry {
		i64 8959200230209785136, ; hash 0x7c55792439408d30, from name: aot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 469
	%struct.DSOCacheEntry {
		i64 8967164847000689438, ; hash 0x7c71c4eb13d89b1e, from name: libaot-System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 470
	%struct.DSOCacheEntry {
		i64 9032777207089403703, ; hash 0x7d5adf031bcf1737, from name: libaot-System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 471
	%struct.DSOCacheEntry {
		i64 9049979032622352945, ; hash 0x7d97fbfb38304a31, from name: libaot-System.IO.Compression
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 472
	%struct.DSOCacheEntry {
		i64 9052662452269567435, ; hash 0x7da184898b0b4dcb, from name: Microsoft.IdentityModel.Protocols
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-Microsoft.IdentityModel.Protocols.dll.so
		ptr null; void* handle (0x0)
	}, ; 473
	%struct.DSOCacheEntry {
		i64 9055317871244365271, ; hash 0x7daaf3a073c44dd7, from name: monodroid
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 474
	%struct.DSOCacheEntry {
		i64 9061383771165184746, ; hash 0x7dc08087d5ca52ea, from name: Microsoft.Bcl.AsyncInterfaces.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Bcl.AsyncInterfaces.dll.so
		ptr null; void* handle (0x0)
	}, ; 475
	%struct.DSOCacheEntry {
		i64 9071850823194088089, ; hash 0x7de5b0424bd19299, from name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 476
	%struct.DSOCacheEntry {
		i64 9089904904477581872, ; hash 0x7e25d459a977a230, from name: aot-Xamarin.AndroidX.Collection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 477
	%struct.DSOCacheEntry {
		i64 9098834300896121870, ; hash 0x7e458d96c70d940e, from name: libaot-System.Threading.Tasks.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 478
	%struct.DSOCacheEntry {
		i64 9111603110219107042, ; hash 0x7e72eac0def44ae2, from name: Microsoft.Extensions.Caching.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.Caching.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 479
	%struct.DSOCacheEntry {
		i64 9137369390292547645, ; hash 0x7ece750c71ea383d, from name: aot-System.Reflection.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 480
	%struct.DSOCacheEntry {
		i64 9176950239087484767, ; hash 0x7f5b139ef23edf5f, from name: System.Diagnostics.Process.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 481
	%struct.DSOCacheEntry {
		i64 9184990959724848206, ; hash 0x7f77a49d1b92e44e, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 482
	%struct.DSOCacheEntry {
		i64 9202553973257348394, ; hash 0x7fb60a14da5d252a, from name: libaot-System.Net.Security.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 483
	%struct.DSOCacheEntry {
		i64 9219236770475081177, ; hash 0x7ff14eff4462fdd9, from name: aot-Xamarin.AndroidX.ViewPager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 484
	%struct.DSOCacheEntry {
		i64 9225652551807385394, ; hash 0x80081a1dc3a7bf32, from name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 485
	%struct.DSOCacheEntry {
		i64 9236407965853005161, ; hash 0x802e501bbd41b569, from name: libaot-System.Security.Principal.Windows.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 486
	%struct.DSOCacheEntry {
		i64 9293571162334492259, ; hash 0x80f965bb91c2f663, from name: libaot-System.Formats.Asn1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 487
	%struct.DSOCacheEntry {
		i64 9312692141327339315, ; hash 0x813d54296a634f33, from name: Xamarin.AndroidX.ViewPager2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 488
	%struct.DSOCacheEntry {
		i64 9324707631942237306, ; hash 0x8168042fd44a7c7a, from name: Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 489
	%struct.DSOCacheEntry {
		i64 9354788225964247547, ; hash 0x81d2e253e59b09fb, from name: aot-Microsoft.Maui.Graphics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 490
	%struct.DSOCacheEntry {
		i64 9367092681395718278, ; hash 0x81fe992a2cc0c886, from name: libaot-System.Xml.XDocument.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 491
	%struct.DSOCacheEntry {
		i64 9370897661222023495, ; hash 0x820c1dc613ad7147, from name: libaot-System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 492
	%struct.DSOCacheEntry {
		i64 9440284980923840874, ; hash 0x8302a12c626bb96a, from name: Azure.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Azure.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 493
	%struct.DSOCacheEntry {
		i64 9486299778194654718, ; hash 0x83a61b634028c5fe, from name: aot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 494
	%struct.DSOCacheEntry {
		i64 9519127451472829141, ; hash 0x841abbfb8cb51ad5, from name: Microsoft.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 495
	%struct.DSOCacheEntry {
		i64 9564066322021869238, ; hash 0x84ba63a5b463e6b6, from name: aot-System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 496
	%struct.DSOCacheEntry {
		i64 9572878646085775350, ; hash 0x84d9b268c9dd6ff6, from name: aot-Xamarin.AndroidX.Browser.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 497
	%struct.DSOCacheEntry {
		i64 9584802165301184279, ; hash 0x85040ec9712c0717, from name: System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 498
	%struct.DSOCacheEntry {
		i64 9641796949223436837, ; hash 0x85ce8b3daae87225, from name: libaot-Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 499
	%struct.DSOCacheEntry {
		i64 9659729154652888475, ; hash 0x860e407c9991dd9b, from name: System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 500
	%struct.DSOCacheEntry {
		i64 9667360217193089419, ; hash 0x86295ce5cd89898b, from name: System.Diagnostics.StackTrace
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 501
	%struct.DSOCacheEntry {
		i64 9700644217508604131, ; hash 0x869f9c85050c28e3, from name: System.Numerics.Vectors.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 502
	%struct.DSOCacheEntry {
		i64 9720994278474188111, ; hash 0x86e7e8cad00f054f, from name: aot-System.Security.Principal.Windows.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 503
	%struct.DSOCacheEntry {
		i64 9730585375023143521, ; hash 0x8709fbd7fedd9a61, from name: aot-System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 504
	%struct.DSOCacheEntry {
		i64 9759402295642527326, ; hash 0x87705cae2be7965e, from name: aot-System.Security.AccessControl.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 505
	%struct.DSOCacheEntry {
		i64 9772007753182040060, ; hash 0x879d2546f6c74ffc, from name: libaot-System.ClientModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.ClientModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 506
	%struct.DSOCacheEntry {
		i64 9783785228567974479, ; hash 0x87c6fcd42382124f, from name: libaot-System.Threading.Thread
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 507
	%struct.DSOCacheEntry {
		i64 9803047054801588640, ; hash 0x880b6b5b89e351a0, from name: Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 508
	%struct.DSOCacheEntry {
		i64 9808040346124881443, ; hash 0x881d28bac5790e23, from name: aot-System.Runtime.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 509
	%struct.DSOCacheEntry {
		i64 9819766499659454791, ; hash 0x8846d19aa57b9947, from name: libaot-System.Text.Encoding.CodePages
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 510
	%struct.DSOCacheEntry {
		i64 9872301298376226842, ; hash 0x890175b9a557b81a, from name: libaot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 511
	%struct.DSOCacheEntry {
		i64 9878540403917854255, ; hash 0x8917a0289ade162f, from name: Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 512
	%struct.DSOCacheEntry {
		i64 9913979743105821016, ; hash 0x8995880cc23da958, from name: libaot-System.Diagnostics.Process
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 513
	%struct.DSOCacheEntry {
		i64 9921778862272270480, ; hash 0x89b13d4eb1b7d090, from name: aot-System.Reflection.Emit.ILGeneration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 514
	%struct.DSOCacheEntry {
		i64 9934618270076260035, ; hash 0x89dedaae47004ec3, from name: aot-CapaENT.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CapaENT.dll.so
		ptr null; void* handle (0x0)
	}, ; 515
	%struct.DSOCacheEntry {
		i64 9956195530459977388, ; hash 0x8a2b8315b36616ac, from name: Microsoft.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 516
	%struct.DSOCacheEntry {
		i64 9986049736366568628, ; hash 0x8a959353ad8334b4, from name: libaot-Microsoft.IdentityModel.JsonWebTokens.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-Microsoft.IdentityModel.JsonWebTokens.dll.so
		ptr null; void* handle (0x0)
	}, ; 517
	%struct.DSOCacheEntry {
		i64 10015320022696718808, ; hash 0x8afd907f48b1f1d8, from name: aot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 518
	%struct.DSOCacheEntry {
		i64 10036215306110403221, ; hash 0x8b47cca5920c8295, from name: System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 519
	%struct.DSOCacheEntry {
		i64 10038591806013433352, ; hash 0x8b503e0f9293e608, from name: libaot-Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 520
	%struct.DSOCacheEntry {
		i64 10038658769320066207, ; hash 0x8b507af6aeaebc9f, from name: libaot-System.Security.Cryptography.Pkcs.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Security.Cryptography.Pkcs.dll.so
		ptr null; void* handle (0x0)
	}, ; 521
	%struct.DSOCacheEntry {
		i64 10051358222726253779, ; hash 0x8b7d990c97ccccd3, from name: System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 522
	%struct.DSOCacheEntry {
		i64 10078384221613451993, ; hash 0x8bdd9d0d4f2bead9, from name: libaot-Microsoft.Identity.Client
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Identity.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 523
	%struct.DSOCacheEntry {
		i64 10089571585547156312, ; hash 0x8c055be67469bb58, from name: System.IO.FileSystem.AccessControl
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 524
	%struct.DSOCacheEntry {
		i64 10092835686693276772, ; hash 0x8c10f49539bd0c64, from name: Microsoft.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 525
	%struct.DSOCacheEntry {
		i64 10100633424984079765, ; hash 0x8c2ca895a69cfd95, from name: libaot-System.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 526
	%struct.DSOCacheEntry {
		i64 10117538216423255955, ; hash 0x8c68b7671f58ef93, from name: System.Collections.Specialized.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 527
	%struct.DSOCacheEntry {
		i64 10125640814986396946, ; hash 0x8c8580ac5c760512, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 528
	%struct.DSOCacheEntry {
		i64 10141602870714536163, ; hash 0x8cbe3614120590e3, from name: aot-System.Configuration.ConfigurationManager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Configuration.ConfigurationManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 529
	%struct.DSOCacheEntry {
		i64 10195674054964728829, ; hash 0x8d7e4f88b3d6d3fd, from name: aot-System.Runtime.Serialization.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 530
	%struct.DSOCacheEntry {
		i64 10202443004866537339, ; hash 0x8d965bdbaa3d277b, from name: aot-System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 531
	%struct.DSOCacheEntry {
		i64 10214437830394522368, ; hash 0x8dc0f9169cfa2b00, from name: aot-System.Reflection.Emit.Lightweight
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 532
	%struct.DSOCacheEntry {
		i64 10224492561641212282, ; hash 0x8de4b1d0293f897a, from name: aot-System.Private.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 533
	%struct.DSOCacheEntry {
		i64 10228817684246477515, ; hash 0x8df40f7d3dbebacb, from name: System.IO.Pipes.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 534
	%struct.DSOCacheEntry {
		i64 10229024438826829339, ; hash 0x8df4cb880b10061b, from name: Xamarin.AndroidX.CustomView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 535
	%struct.DSOCacheEntry {
		i64 10245369515835430794, ; hash 0x8e2edd4ad7fc978a, from name: System.Reflection.Emit.Lightweight
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 536
	%struct.DSOCacheEntry {
		i64 10273345953350871244, ; hash 0x8e9241b6cc2ce8cc, from name: netstandard.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 537
	%struct.DSOCacheEntry {
		i64 10284344054184125450, ; hash 0x8eb9546db18ba40a, from name: libaot-Microsoft.Win32.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 538
	%struct.DSOCacheEntry {
		i64 10286722599871910363, ; hash 0x8ec1c7b4045911db, from name: aot-Microsoft.IdentityModel.Protocols.OpenIdConnect
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-Microsoft.IdentityModel.Protocols.OpenIdConnect.dll.so
		ptr null; void* handle (0x0)
	}, ; 539
	%struct.DSOCacheEntry {
		i64 10291981562957691400, ; hash 0x8ed476b3c6f67a08, from name: aot-System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 540
	%struct.DSOCacheEntry {
		i64 10318218263549127400, ; hash 0x8f31acd7a9cb2ae8, from name: aot-System.Formats.Asn1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 541
	%struct.DSOCacheEntry {
		i64 10356807666685550219, ; hash 0x8fbac5b33bd59e8b, from name: libaot-System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 542
	%struct.DSOCacheEntry {
		i64 10360315726388337145, ; hash 0x8fc73c43084519f9, from name: libaot-System.Drawing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 543
	%struct.DSOCacheEntry {
		i64 10370216286113214496, ; hash 0x8fea68c4b9bfb020, from name: aot-Services.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Services.dll.so
		ptr null; void* handle (0x0)
	}, ; 544
	%struct.DSOCacheEntry {
		i64 10385124814576326370, ; hash 0x901f5fff00ea96e2, from name: libaot-System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 545
	%struct.DSOCacheEntry {
		i64 10386754220365410361, ; hash 0x902529ee9a2b7039, from name: aot-Microsoft.IdentityModel.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-Microsoft.IdentityModel.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 546
	%struct.DSOCacheEntry {
		i64 10387475612650146223, ; hash 0x9027ba08d50b89af, from name: libaot-System.Runtime.Serialization.Formatters
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 547
	%struct.DSOCacheEntry {
		i64 10392419804969934685, ; hash 0x90394ac04ff79f5d, from name: libaot-System.Runtime.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 548
	%struct.DSOCacheEntry {
		i64 10430153318873392755, ; hash 0x90bf592ea44f6673, from name: Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 549
	%struct.DSOCacheEntry {
		i64 10431089073467423858, ; hash 0x90c2ac3efc7bfc72, from name: libaot-System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 550
	%struct.DSOCacheEntry {
		i64 10445573484590211502, ; hash 0x90f621bdc03d21ae, from name: aot-Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 551
	%struct.DSOCacheEntry {
		i64 10450970453325464374, ; hash 0x91094e4174914336, from name: aot-System.Runtime.Serialization.Formatters
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 552
	%struct.DSOCacheEntry {
		i64 10462325736163448418, ; hash 0x9131a5d344731662, from name: libaot-System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 553
	%struct.DSOCacheEntry {
		i64 10495374905493010076, ; hash 0x91a70fdea275b69c, from name: libaot-Microsoft.Identity.Client.Extensions.Msal
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-Microsoft.Identity.Client.Extensions.Msal.dll.so
		ptr null; void* handle (0x0)
	}, ; 554
	%struct.DSOCacheEntry {
		i64 10512098364414578010, ; hash 0x91e279c456e54d5a, from name: libaot-Xamarin.AndroidX.CursorAdapter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 555
	%struct.DSOCacheEntry {
		i64 10559004749648902718, ; hash 0x92891ee0347c3a3e, from name: CapaENT
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CapaENT.dll.so
		ptr null; void* handle (0x0)
	}, ; 556
	%struct.DSOCacheEntry {
		i64 10561557058910284153, ; hash 0x92923030035de979, from name: libaot-Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 557
	%struct.DSOCacheEntry {
		i64 10570179044842741419, ; hash 0x92b0d1d68c211eab, from name: aot-System.IdentityModel.Tokens.Jwt.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.IdentityModel.Tokens.Jwt.dll.so
		ptr null; void* handle (0x0)
	}, ; 558
	%struct.DSOCacheEntry {
		i64 10579805475776652438, ; hash 0x92d30506a8666496, from name: System.ClientModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.ClientModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 559
	%struct.DSOCacheEntry {
		i64 10638196514328206315, ; hash 0x93a2775dbf54dbeb, from name: aot-System.IO.FileSystem.Watcher
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 560
	%struct.DSOCacheEntry {
		i64 10657322552275964462, ; hash 0x93e66a65792b122e, from name: aot-System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 561
	%struct.DSOCacheEntry {
		i64 10686502423950929984, ; hash 0x944e1555c6f23040, from name: libaot-netstandard
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 562
	%struct.DSOCacheEntry {
		i64 10738576877450676954, ; hash 0x950716c64dabcada, from name: aot-System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 563
	%struct.DSOCacheEntry {
		i64 10769655153368559797, ; hash 0x9575804d49fcf0b5, from name: libaot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 564
	%struct.DSOCacheEntry {
		i64 10785150219063592792, ; hash 0x95ac8cfb68830758, from name: System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 565
	%struct.DSOCacheEntry {
		i64 10827433220396269482, ; hash 0x9642c525d2fbbfaa, from name: aot-Xamarin.AndroidX.SavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 566
	%struct.DSOCacheEntry {
		i64 10828441735335428004, ; hash 0x96465a6301aebfa4, from name: aot-System.Private.DataContractSerialization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 567
	%struct.DSOCacheEntry {
		i64 10891427439346915915, ; hash 0x97261f8d03371a4b, from name: Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 568
	%struct.DSOCacheEntry {
		i64 10909187495076860591, ; hash 0x9765383a383092af, from name: libaot-System.Security.AccessControl
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 569
	%struct.DSOCacheEntry {
		i64 10959662263064203642, ; hash 0x98188ac2f032117a, from name: aot-Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 570
	%struct.DSOCacheEntry {
		i64 10964653383833615866, ; hash 0x982a4628ccaffdfa, from name: System.Diagnostics.Tracing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 571
	%struct.DSOCacheEntry {
		i64 10980007583825662638, ; hash 0x9860d2b9110612ae, from name: Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 572
	%struct.DSOCacheEntry {
		i64 11002576679268595294, ; hash 0x98b1013215cd365e, from name: Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 573
	%struct.DSOCacheEntry {
		i64 11043797956829943227, ; hash 0x994373baac0895bb, from name: aot-System.Diagnostics.TraceSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 574
	%struct.DSOCacheEntry {
		i64 11058657390679514429, ; hash 0x99783e4e38335d3d, from name: aot-System.Net.NetworkInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 575
	%struct.DSOCacheEntry {
		i64 11064494395972030134, ; hash 0x998cfb07eb368eb6, from name: libaot-Microsoft.Bcl.AsyncInterfaces
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Bcl.AsyncInterfaces.dll.so
		ptr null; void* handle (0x0)
	}, ; 576
	%struct.DSOCacheEntry {
		i64 11112238375867107341, ; hash 0x9a3699ed7d05c80d, from name: libaot-System.Diagnostics.Tracing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 577
	%struct.DSOCacheEntry {
		i64 11116516824914593865, ; hash 0x9a45cd2788b00849, from name: libaot-System.IO.FileSystem.Watcher
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 578
	%struct.DSOCacheEntry {
		i64 11155155660125070409, ; hash 0x9acf12f867f16449, from name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 579
	%struct.DSOCacheEntry {
		i64 11158564309551918097, ; hash 0x9adb2f1e7231ac11, from name: libaot-System.Threading.Channels.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 580
	%struct.DSOCacheEntry {
		i64 11162124722117608902, ; hash 0x9ae7d54b986d05c6, from name: Xamarin.AndroidX.ViewPager
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 581
	%struct.DSOCacheEntry {
		i64 11164818937994912957, ; hash 0x9af167ab9cbda4bd, from name: System.Security.Cryptography.Native.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 582
	%struct.DSOCacheEntry {
		i64 11171214345979581187, ; hash 0x9b08204291dc5303, from name: libaot-System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 583
	%struct.DSOCacheEntry {
		i64 11175324742386364903, ; hash 0x9b16baa4cf92b1e7, from name: System.Threading.Tasks.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 584
	%struct.DSOCacheEntry {
		i64 11183301482360293958, ; hash 0x9b331172502f4a46, from name: aot-System.ClientModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.ClientModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 585
	%struct.DSOCacheEntry {
		i64 11212038206026375799, ; hash 0x9b9929582e4f6277, from name: aot-System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 586
	%struct.DSOCacheEntry {
		i64 11245267750673177240, ; hash 0x9c0f37707307da98, from name: aot-System.Numerics.Vectors.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 587
	%struct.DSOCacheEntry {
		i64 11263951250740447317, ; hash 0x9c5197fbcbb38855, from name: aot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 588
	%struct.DSOCacheEntry {
		i64 11270596618290860596, ; hash 0x9c6933e8fff21234, from name: libaot-System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 589
	%struct.DSOCacheEntry {
		i64 11289550101096566448, ; hash 0x9cac8a0099d60eb0, from name: aot-Microsoft.Identity.Client
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Identity.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 590
	%struct.DSOCacheEntry {
		i64 11297620656358036086, ; hash 0x9cc936212d561276, from name: libaot-System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 591
	%struct.DSOCacheEntry {
		i64 11327873123841536301, ; hash 0x9d34b096a744f12d, from name: aot-netstandard.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 592
	%struct.DSOCacheEntry {
		i64 11329407233932627207, ; hash 0x9d3a23da7e4b8d07, from name: aot-System.IO.Compression.Brotli
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 593
	%struct.DSOCacheEntry {
		i64 11339684046580168751, ; hash 0x9d5ea68f6593382f, from name: aot-Microsoft.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 594
	%struct.DSOCacheEntry {
		i64 11340910727871153756, ; hash 0x9d630238642d465c, from name: Xamarin.AndroidX.CursorAdapter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 595
	%struct.DSOCacheEntry {
		i64 11369008813813839762, ; hash 0x9dc6d547d3a8b792, from name: aot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 596
	%struct.DSOCacheEntry {
		i64 11413153824783247973, ; hash 0x9e63aaef2518aa65, from name: aot-System.Net.NameResolution.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 597
	%struct.DSOCacheEntry {
		i64 11427651043692466812, ; hash 0x9e972c13f469527c, from name: System.Reflection.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 598
	%struct.DSOCacheEntry {
		i64 11437608939786898104, ; hash 0x9eba8cbb4fd48ab8, from name: aot-Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 599
	%struct.DSOCacheEntry {
		i64 11448276831755070604, ; hash 0x9ee0731f77186c8c, from name: System.Diagnostics.TextWriterTraceListener
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 600
	%struct.DSOCacheEntry {
		i64 11459687736992758643, ; hash 0x9f08fd47e05a7b73, from name: libaot-System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 601
	%struct.DSOCacheEntry {
		i64 11465353776621081442, ; hash 0x9f1d1e8387aed362, from name: aot-System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 602
	%struct.DSOCacheEntry {
		i64 11468049509916024921, ; hash 0x9f26b244d9232059, from name: System.Diagnostics.StackTrace.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 603
	%struct.DSOCacheEntry {
		i64 11471343853629412162, ; hash 0x9f32667503f11342, from name: libaot-Microsoft.Identity.Client.Extensions.Msal.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-Microsoft.Identity.Client.Extensions.Msal.dll.so
		ptr null; void* handle (0x0)
	}, ; 604
	%struct.DSOCacheEntry {
		i64 11485890710487134646, ; hash 0x9f6614bf0f8b71b6, from name: System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 605
	%struct.DSOCacheEntry {
		i64 11495032816624096970, ; hash 0x9f868f71845656ca, from name: aot-System.Collections.Specialized
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 606
	%struct.DSOCacheEntry {
		i64 11501523568478995397, ; hash 0x9f9d9ebf72f943c5, from name: libaot-System.Xml.ReaderWriter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 607
	%struct.DSOCacheEntry {
		i64 11521729796983092563, ; hash 0x9fe56834a335f553, from name: libmonodroid
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 608
	%struct.DSOCacheEntry {
		i64 11530571088791430846, ; hash 0xa004d1504ccd66be, from name: Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 609
	%struct.DSOCacheEntry {
		i64 11530669335547299986, ; hash 0xa0052aab27c94892, from name: System.Diagnostics.TraceSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 610
	%struct.DSOCacheEntry {
		i64 11543093801659331803, ; hash 0xa0314ea798eaf4db, from name: aot-System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 611
	%struct.DSOCacheEntry {
		i64 11581332126085780304, ; hash 0xa0b9283549299350, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 612
	%struct.DSOCacheEntry {
		i64 11597940890313164233, ; hash 0xa0f429ca8d1805c9, from name: netstandard
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 613
	%struct.DSOCacheEntry {
		i64 11619818588848883079, ; hash 0xa141e3712ed18587, from name: aot-Azure.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Azure.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 614
	%struct.DSOCacheEntry {
		i64 11622665325505776179, ; hash 0xa14c0088b6058a33, from name: libaot-System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 615
	%struct.DSOCacheEntry {
		i64 11637972874768420528, ; hash 0xa18262ab42340eb0, from name: aot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 616
	%struct.DSOCacheEntry {
		i64 11643066767127089901, ; hash 0xa1947b897ec412ed, from name: libaot-DTO.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-DTO.dll.so
		ptr null; void* handle (0x0)
	}, ; 617
	%struct.DSOCacheEntry {
		i64 11646019909430071000, ; hash 0xa19ef96784b4ced8, from name: aot-DTO.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-DTO.dll.so
		ptr null; void* handle (0x0)
	}, ; 618
	%struct.DSOCacheEntry {
		i64 11682642324865170884, ; hash 0xa221154c13883dc4, from name: libaot-Microsoft.IdentityModel.Protocols.OpenIdConnect
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-Microsoft.IdentityModel.Protocols.OpenIdConnect.dll.so
		ptr null; void* handle (0x0)
	}, ; 619
	%struct.DSOCacheEntry {
		i64 11683831507672655290, ; hash 0xa2254eda465865ba, from name: aot-System.Security.Cryptography.Pkcs.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Security.Cryptography.Pkcs.dll.so
		ptr null; void* handle (0x0)
	}, ; 620
	%struct.DSOCacheEntry {
		i64 11764213056097819061, ; hash 0xa342e171eeb919b5, from name: libaot-System.Collections.Specialized.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 621
	%struct.DSOCacheEntry {
		i64 11775896168281936811, ; hash 0xa36c632c765413ab, from name: aot-System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 622
	%struct.DSOCacheEntry {
		i64 11782443198922974530, ; hash 0xa383a5a9d2056542, from name: aot-System.Collections.NonGeneric
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 623
	%struct.DSOCacheEntry {
		i64 11799183892646765925, ; hash 0xa3bf1f3c50b8a565, from name: aot-System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 624
	%struct.DSOCacheEntry {
		i64 11822727113666714038, ; hash 0xa412c3ab9e7bd9b6, from name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 625
	%struct.DSOCacheEntry {
		i64 11848514669829470329, ; hash 0xa46e6150eb30b879, from name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 626
	%struct.DSOCacheEntry {
		i64 11878431249347270648, ; hash 0xa4d8aa49623e57f8, from name: libaot-System.Text.Encoding.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 627
	%struct.DSOCacheEntry {
		i64 11896613629761995876, ; hash 0xa5194310b808c464, from name: System.Runtime.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 628
	%struct.DSOCacheEntry {
		i64 11905546682503808667, ; hash 0xa538ffa12378469b, from name: aot-System.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 629
	%struct.DSOCacheEntry {
		i64 11925868684967371445, ; hash 0xa58132620d6f62b5, from name: aot-System.Net.Sockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 630
	%struct.DSOCacheEntry {
		i64 11946511331825732781, ; hash 0xa5ca88c2cea6ccad, from name: libaot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 631
	%struct.DSOCacheEntry {
		i64 11949219802464515130, ; hash 0xa5d42819c4f5f43a, from name: aot-System
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 632
	%struct.DSOCacheEntry {
		i64 12011556116648931059, ; hash 0xa6b19ea5ec87aef3, from name: System.Security.Cryptography.ProtectedData
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Security.Cryptography.ProtectedData.dll.so
		ptr null; void* handle (0x0)
	}, ; 633
	%struct.DSOCacheEntry {
		i64 12016490382152452913, ; hash 0xa6c3265623184b31, from name: aot-System.Diagnostics.Tracing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 634
	%struct.DSOCacheEntry {
		i64 12025475895945156578, ; hash 0xa6e3129d18d557e2, from name: Xamarin.AndroidX.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 635
	%struct.DSOCacheEntry {
		i64 12040886584167504988, ; hash 0xa719d28d8e121c5c, from name: System.Net.ServicePoint
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 636
	%struct.DSOCacheEntry {
		i64 12050631976567110376, ; hash 0xa73c71ef8a3efae8, from name: aot-System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 637
	%struct.DSOCacheEntry {
		i64 12051765732457062039, ; hash 0xa7407914a7541e97, from name: aot-System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 638
	%struct.DSOCacheEntry {
		i64 12052751833701477691, ; hash 0xa743f9ef3db6ed3b, from name: System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 639
	%struct.DSOCacheEntry {
		i64 12102847907131387746, ; hash 0xa7f5f40c43256f62, from name: System.Buffers
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 640
	%struct.DSOCacheEntry {
		i64 12118598155788291684, ; hash 0xa82de8d0cb770e64, from name: aot-System.IO.Pipes
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 641
	%struct.DSOCacheEntry {
		i64 12145679461940342714, ; hash 0xa88e1f1ebcb62fba, from name: System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 642
	%struct.DSOCacheEntry {
		i64 12187578714954394028, ; hash 0xa922fa44c8f7e9ac, from name: System.Xml.XmlSerializer.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 643
	%struct.DSOCacheEntry {
		i64 12192045520349597797, ; hash 0xa932d8cdf5d49065, from name: libaot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 644
	%struct.DSOCacheEntry {
		i64 12196119803066310016, ; hash 0xa9415257d3dfdd80, from name: Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 645
	%struct.DSOCacheEntry {
		i64 12278824155482493573, ; hash 0xaa6725836f051285, from name: libaot-System.Threading.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 646
	%struct.DSOCacheEntry {
		i64 12278928371408744993, ; hash 0xaa67844c1848b221, from name: System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 647
	%struct.DSOCacheEntry {
		i64 12290938384773503399, ; hash 0xaa922f573ca359a7, from name: aot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 648
	%struct.DSOCacheEntry {
		i64 12299321273609848463, ; hash 0xaaaff788a3eb868f, from name: libaot-System.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 649
	%struct.DSOCacheEntry {
		i64 12315876021774320129, ; hash 0xaaeac7fd4f9c0201, from name: Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 650
	%struct.DSOCacheEntry {
		i64 12319133490348723861, ; hash 0xaaf65aa3d0da8e95, from name: libaot-System.Drawing.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 651
	%struct.DSOCacheEntry {
		i64 12338163837237862793, ; hash 0xab39f6a3bb222189, from name: libaot-Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 652
	%struct.DSOCacheEntry {
		i64 12348895462441871030, ; hash 0xab6016feef47e6b6, from name: libaot-CapaBL
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-CapaBL.dll.so
		ptr null; void* handle (0x0)
	}, ; 653
	%struct.DSOCacheEntry {
		i64 12362395135250488461, ; hash 0xab900ce0719f5c8d, from name: aot-System.Drawing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 654
	%struct.DSOCacheEntry {
		i64 12363533800711166636, ; hash 0xab94187ca7ec9aac, from name: libaot-System.Transactions.Local.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 655
	%struct.DSOCacheEntry {
		i64 12366467630652953370, ; hash 0xab9e84ca2b6f931a, from name: libaot-Microsoft.Identity.Client.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-Microsoft.Identity.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 656
	%struct.DSOCacheEntry {
		i64 12381973892777356497, ; hash 0xabd59ba72927acd1, from name: libaot-System.Memory.Data.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Memory.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 657
	%struct.DSOCacheEntry {
		i64 12390532849474323736, ; hash 0xabf403fa8eb9c518, from name: aot-Microsoft.Bcl.AsyncInterfaces
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Bcl.AsyncInterfaces.dll.so
		ptr null; void* handle (0x0)
	}, ; 658
	%struct.DSOCacheEntry {
		i64 12393388512262732313, ; hash 0xabfe29305cd3ba19, from name: aot-Microsoft.Extensions.Caching.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.Caching.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 659
	%struct.DSOCacheEntry {
		i64 12405317157449198374, ; hash 0xac288a3a7fd16b26, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 660
	%struct.DSOCacheEntry {
		i64 12439275739440478309, ; hash 0xaca12f61007bf865, from name: Microsoft.IdentityModel.JsonWebTokens
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-Microsoft.IdentityModel.JsonWebTokens.dll.so
		ptr null; void* handle (0x0)
	}, ; 661
	%struct.DSOCacheEntry {
		i64 12439793764729580087, ; hash 0xaca3068529d36a37, from name: libaot-System.ComponentModel.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 662
	%struct.DSOCacheEntry {
		i64 12445986941120587433, ; hash 0xacb9072e68a4a6a9, from name: aot-Microsoft.IdentityModel.Tokens
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Microsoft.IdentityModel.Tokens.dll.so
		ptr null; void* handle (0x0)
	}, ; 663
	%struct.DSOCacheEntry {
		i64 12450626906808540265, ; hash 0xacc983349b3e5c69, from name: libaot-System.Net.ServicePoint.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 664
	%struct.DSOCacheEntry {
		i64 12453234617382276517, ; hash 0xacd2c6e789ab0da5, from name: libaot-System.Reflection.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 665
	%struct.DSOCacheEntry {
		i64 12466529513160295733, ; hash 0xad02028aadd7c535, from name: libaot-System.IO.Pipes.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 666
	%struct.DSOCacheEntry {
		i64 12479103209920401597, ; hash 0xad2eae4096be10bd, from name: libaot-System.Net.NameResolution.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 667
	%struct.DSOCacheEntry {
		i64 12493213219680520345, ; hash 0xad60cf3b3e458899, from name: Microsoft.Data.SqlClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Data.SqlClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 668
	%struct.DSOCacheEntry {
		i64 12531980697337323275, ; hash 0xadea8a0c04d7df0b, from name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 669
	%struct.DSOCacheEntry {
		i64 12550732019250633519, ; hash 0xae2d28465e8e1b2f, from name: System.IO.Compression
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 670
	%struct.DSOCacheEntry {
		i64 12590519508742077906, ; hash 0xaeba82c928327dd2, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 671
	%struct.DSOCacheEntry {
		i64 12648537676456605650, ; hash 0xaf88a2007d5737d2, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 672
	%struct.DSOCacheEntry {
		i64 12651948892973422358, ; hash 0xaf94c07c3a13d716, from name: libaot-DTO
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-DTO.dll.so
		ptr null; void* handle (0x0)
	}, ; 673
	%struct.DSOCacheEntry {
		i64 12664561597175764147, ; hash 0xafc18fac43b714b3, from name: System.Security.AccessControl.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 674
	%struct.DSOCacheEntry {
		i64 12674035147592014371, ; hash 0xafe337d11b099a23, from name: aot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 675
	%struct.DSOCacheEntry {
		i64 12674984561979589840, ; hash 0xafe6974dde5a84d0, from name: Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 676
	%struct.DSOCacheEntry {
		i64 12677703458693023823, ; hash 0xaff040205723884f, from name: System.Security.Cryptography.ProtectedData.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Security.Cryptography.ProtectedData.dll.so
		ptr null; void* handle (0x0)
	}, ; 677
	%struct.DSOCacheEntry {
		i64 12685934069698623289, ; hash 0xb00d7dd2cc697739, from name: aot-Microsoft.Win32.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 678
	%struct.DSOCacheEntry {
		i64 12700543734426720211, ; hash 0xb041653c70d157d3, from name: Xamarin.AndroidX.Collection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 679
	%struct.DSOCacheEntry {
		i64 12708922737231849740, ; hash 0xb05f29e50e96e90c, from name: System.Text.Encoding.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 680
	%struct.DSOCacheEntry {
		i64 12727750515385895548, ; hash 0xb0a20da8c35f0a7c, from name: libaot-Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 681
	%struct.DSOCacheEntry {
		i64 12835242264250840079, ; hash 0xb21ff0d5d6c0740f, from name: System.IO.Pipes
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 682
	%struct.DSOCacheEntry {
		i64 12842431879475601171, ; hash 0xb2397bc0944b9f13, from name: System.Security.Claims.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 683
	%struct.DSOCacheEntry {
		i64 12843321153144804894, ; hash 0xb23ca48abd74d61e, from name: Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 684
	%struct.DSOCacheEntry {
		i64 12857960540543662497, ; hash 0xb270a6fcbb1839a1, from name: aot-System.Transactions.Local
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 685
	%struct.DSOCacheEntry {
		i64 12872620911514443596, ; hash 0xb2a4bc8457155f4c, from name: aot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 686
	%struct.DSOCacheEntry {
		i64 12875951528938057945, ; hash 0xb2b091b2238030d9, from name: Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 687
	%struct.DSOCacheEntry {
		i64 12895691319166646681, ; hash 0xb2f6b2ee34043999, from name: aot-System.Runtime.Serialization.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 688
	%struct.DSOCacheEntry {
		i64 12907716933520315391, ; hash 0xb3216c29bbc5d3ff, from name: libaot-System.Security.Cryptography.ProtectedData.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Security.Cryptography.ProtectedData.dll.so
		ptr null; void* handle (0x0)
	}, ; 689
	%struct.DSOCacheEntry {
		i64 12937319369933575792, ; hash 0xb38a976c0eabd670, from name: aot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 690
	%struct.DSOCacheEntry {
		i64 12941098956319990056, ; hash 0xb39804ef96a1a128, from name: Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 691
	%struct.DSOCacheEntry {
		i64 12996638905122625135, ; hash 0xb45d56399ddb166f, from name: System.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 692
	%struct.DSOCacheEntry {
		i64 13006425725023322809, ; hash 0xb4801b49318482b9, from name: libaot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 693
	%struct.DSOCacheEntry {
		i64 13038585680601407536, ; hash 0xb4f25c9859bde030, from name: aot-Microsoft.IdentityModel.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-Microsoft.IdentityModel.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 694
	%struct.DSOCacheEntry {
		i64 13039722614324072723, ; hash 0xb4f666a15c6a1113, from name: aot-System.Diagnostics.Tracing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 695
	%struct.DSOCacheEntry {
		i64 13067966148190955579, ; hash 0xb55abdf987c0683b, from name: Xamarin.AndroidX.Browser.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 696
	%struct.DSOCacheEntry {
		i64 13068061340980117689, ; hash 0xb55b148d542280b9, from name: libaot-System.Security.Cryptography.Encoding
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 697
	%struct.DSOCacheEntry {
		i64 13073566528136159500, ; hash 0xb56ea37d98fe210c, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 698
	%struct.DSOCacheEntry {
		i64 13084062668856379150, ; hash 0xb593edaccc22470e, from name: libaot-System.ClientModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.ClientModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 699
	%struct.DSOCacheEntry {
		i64 13087390844131920673, ; hash 0xb59fc0a1fd2ecb21, from name: aot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 700
	%struct.DSOCacheEntry {
		i64 13089111779641309059, ; hash 0xb5a5ddd082e6b783, from name: aot-Microsoft.Data.SqlClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-Microsoft.Data.SqlClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 701
	%struct.DSOCacheEntry {
		i64 13101809809254258831, ; hash 0xb5d2fa9aeb54188f, from name: aot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 702
	%struct.DSOCacheEntry {
		i64 13114936752209646297, ; hash 0xb6019d7d7f2bd2d9, from name: Xamarin.Google.Android.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 703
	%struct.DSOCacheEntry {
		i64 13116315589229894972, ; hash 0xb606838901f75d3c, from name: aot-System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 704
	%struct.DSOCacheEntry {
		i64 13140504038649756157, ; hash 0xb65c72cd414df9fd, from name: Microsoft.Identity.Client.Extensions.Msal.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-Microsoft.Identity.Client.Extensions.Msal.dll.so
		ptr null; void* handle (0x0)
	}, ; 705
	%struct.DSOCacheEntry {
		i64 13161955518152598171, ; hash 0xb6a8a8cf08fa629b, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 706
	%struct.DSOCacheEntry {
		i64 13195302980748307708, ; hash 0xb71f22263727ecfc, from name: Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 707
	%struct.DSOCacheEntry {
		i64 13205680769184534978, ; hash 0xb74400b1607391c2, from name: libaot-System.Runtime.Serialization.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 708
	%struct.DSOCacheEntry {
		i64 13222957746497227746, ; hash 0xb78162031ff78be2, from name: libaot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 709
	%struct.DSOCacheEntry {
		i64 13285640494417243250, ; hash 0xb86013a3ab48ec72, from name: libaot-Microsoft.Maui.Controls.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 710
	%struct.DSOCacheEntry {
		i64 13314286428381311703, ; hash 0xb8c5d8f6e978f2d7, from name: libaot-System.Console
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 711
	%struct.DSOCacheEntry {
		i64 13323148484643576660, ; hash 0xb8e554f52cf6db54, from name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 712
	%struct.DSOCacheEntry {
		i64 13352871532007464144, ; hash 0xb94eede96cbb1cd0, from name: libaot-Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 713
	%struct.DSOCacheEntry {
		i64 13384594276806126840, ; hash 0xb9bfa19483c16cf8, from name: aot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 714
	%struct.DSOCacheEntry {
		i64 13431476299110033919, ; hash 0xba663087f18829ff, from name: System.Net.WebClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 715
	%struct.DSOCacheEntry {
		i64 13465488254036897740, ; hash 0xbadf06394d106fcc, from name: Xamarin.Kotlin.StdLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 716
	%struct.DSOCacheEntry {
		i64 13483581387200759472, ; hash 0xbb1f4dd5242b86b0, from name: aot-Microsoft.Maui.Controls.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 717
	%struct.DSOCacheEntry {
		i64 13488491921086969402, ; hash 0xbb30bfefe81d763a, from name: aot-System.ComponentModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 718
	%struct.DSOCacheEntry {
		i64 13535847777386511676, ; hash 0xbbd8fdd668e23d3c, from name: aot-System.Memory.Data.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Memory.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 719
	%struct.DSOCacheEntry {
		i64 13546874730744599821, ; hash 0xbc002acb0ebf550d, from name: System.Threading.Thread.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 720
	%struct.DSOCacheEntry {
		i64 13589927487757454067, ; hash 0xbc991f0c2f198af3, from name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 721
	%struct.DSOCacheEntry {
		i64 13603500654432575449, ; hash 0xbcc957c5513f5fd9, from name: System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 722
	%struct.DSOCacheEntry {
		i64 13632781750176942277, ; hash 0xbd315ec5afb988c5, from name: aot-System.Diagnostics.TextWriterTraceListener.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 723
	%struct.DSOCacheEntry {
		i64 13699603031714047885, ; hash 0xbe1ec45fad2e278d, from name: libaot-Xamarin.AndroidX.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 724
	%struct.DSOCacheEntry {
		i64 13717233136797750441, ; hash 0xbe5d66dc640c14a9, from name: aot-System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 725
	%struct.DSOCacheEntry {
		i64 13736616802526035693, ; hash 0xbea24433c239feed, from name: System.IdentityModel.Tokens.Jwt.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.IdentityModel.Tokens.Jwt.dll.so
		ptr null; void* handle (0x0)
	}, ; 726
	%struct.DSOCacheEntry {
		i64 13739044888507636575, ; hash 0xbeaae48894a4db5f, from name: libaot-Newtonsoft.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 727
	%struct.DSOCacheEntry {
		i64 13742054908850494594, ; hash 0xbeb596218df25c82, from name: Azure.Identity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Azure.Identity.dll.so
		ptr null; void* handle (0x0)
	}, ; 728
	%struct.DSOCacheEntry {
		i64 13757055220050775219, ; hash 0xbeeae0d5aa8f4cb3, from name: libaot-Microsoft.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 729
	%struct.DSOCacheEntry {
		i64 13759258966725384212, ; hash 0xbef2b5216c465814, from name: Services.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Services.dll.so
		ptr null; void* handle (0x0)
	}, ; 730
	%struct.DSOCacheEntry {
		i64 13761955127882175294, ; hash 0xbefc49465c48533e, from name: System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 731
	%struct.DSOCacheEntry {
		i64 13768113933372556022, ; hash 0xbf122aad01c702f6, from name: libaot-System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 732
	%struct.DSOCacheEntry {
		i64 13771377631253161580, ; hash 0xbf1dc2fde29ae66c, from name: aot-System.Security.Principal.Windows
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 733
	%struct.DSOCacheEntry {
		i64 13771746581794969262, ; hash 0xbf1f128ce096d6ae, from name: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-Microsoft.IdentityModel.Protocols.OpenIdConnect.dll.so
		ptr null; void* handle (0x0)
	}, ; 734
	%struct.DSOCacheEntry {
		i64 13780240838949801592, ; hash 0xbf3d40083cef0e78, from name: System.Text.Encoding.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 735
	%struct.DSOCacheEntry {
		i64 13786269793005612187, ; hash 0xbf52ab557dcc2c9b, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 736
	%struct.DSOCacheEntry {
		i64 13807487031629930123, ; hash 0xbf9e0c4cd11d5e8b, from name: libaot-Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 737
	%struct.DSOCacheEntry {
		i64 13842731643823728203, ; hash 0xc01b43168f2c264b, from name: libaot-System.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 738
	%struct.DSOCacheEntry {
		i64 13885975078585796489, ; hash 0xc0b4e4c34f088789, from name: libaot-System.Threading.ThreadPool.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 739
	%struct.DSOCacheEntry {
		i64 13888993854737701709, ; hash 0xc0bf9e52e7395b4d, from name: System.Formats.Asn1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 740
	%struct.DSOCacheEntry {
		i64 13900452450741477987, ; hash 0xc0e853db2fa76263, from name: Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 741
	%struct.DSOCacheEntry {
		i64 13904753614831582715, ; hash 0xc0f79bbdfd5d7dfb, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 742
	%struct.DSOCacheEntry {
		i64 13917396180688427187, ; hash 0xc1248616bc4fd8b3, from name: Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 743
	%struct.DSOCacheEntry {
		i64 13918643515869505000, ; hash 0xc128f48896b225e8, from name: aot-Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 744
	%struct.DSOCacheEntry {
		i64 13927427627500361954, ; hash 0xc14829a2f41ed8e2, from name: aot-System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 745
	%struct.DSOCacheEntry {
		i64 13934622921725558032, ; hash 0xc161b9b7f077bd10, from name: aot-Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 746
	%struct.DSOCacheEntry {
		i64 13959074834287824816, ; hash 0xc1b8989a7ad20fb0, from name: Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 747
	%struct.DSOCacheEntry {
		i64 13963744846780922848, ; hash 0xc1c92ff47e917be0, from name: libaot-System.Buffers.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 748
	%struct.DSOCacheEntry {
		i64 13972136905349029688, ; hash 0xc1e7007ce4745f38, from name: libaot-System.Net.Sockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 749
	%struct.DSOCacheEntry {
		i64 14024723203617446143, ; hash 0xc2a1d37290cbd8ff, from name: libaot-System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 750
	%struct.DSOCacheEntry {
		i64 14037761671920318323, ; hash 0xc2d025dd88677773, from name: aot-System.Threading
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 751
	%struct.DSOCacheEntry {
		i64 14044858527140495619, ; hash 0xc2e95c6ae6d34103, from name: aot-System.Runtime.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 752
	%struct.DSOCacheEntry {
		i64 14058709349301150578, ; hash 0xc31a91aabd8ee372, from name: System.IO.Compression.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 753
	%struct.DSOCacheEntry {
		i64 14059049780117520506, ; hash 0xc31bc7497770407a, from name: aot-System.Security.Cryptography.X509Certificates.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 754
	%struct.DSOCacheEntry {
		i64 14064151877224080280, ; hash 0xc32de79e0515a398, from name: aot-System.Formats.Asn1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 755
	%struct.DSOCacheEntry {
		i64 14068442452466027434, ; hash 0xc33d25df6a434baa, from name: CapaUI-Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-CapaUI-Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 756
	%struct.DSOCacheEntry {
		i64 14070677912659721959, ; hash 0xc34517030d047ee7, from name: libaot-System.Diagnostics.Tracing
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 757
	%struct.DSOCacheEntry {
		i64 14114306154155634338, ; hash 0xc3e016aa998e6ea2, from name: aot-Azure.Identity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Azure.Identity.dll.so
		ptr null; void* handle (0x0)
	}, ; 758
	%struct.DSOCacheEntry {
		i64 14124974489674258913, ; hash 0xc405fd76067d19e1, from name: Xamarin.AndroidX.CardView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 759
	%struct.DSOCacheEntry {
		i64 14126261443848111969, ; hash 0xc40a8ff064dd0761, from name: System.Text.Encoding.CodePages.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 760
	%struct.DSOCacheEntry {
		i64 14143988164198918098, ; hash 0xc4498a4c1a67e7d2, from name: System.Threading.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 761
	%struct.DSOCacheEntry {
		i64 14152660198772281192, ; hash 0xc46859777ea18f68, from name: libaot-System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 762
	%struct.DSOCacheEntry {
		i64 14159110086036678642, ; hash 0xc47f439ae5dde7f2, from name: aot-System.Text.Encoding.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 763
	%struct.DSOCacheEntry {
		i64 14174671189317472550, ; hash 0xc4b68c58973b5126, from name: libaot-System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 764
	%struct.DSOCacheEntry {
		i64 14182888721008485466, ; hash 0xc4d3be25c89ae45a, from name: aot-System.Console
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 765
	%struct.DSOCacheEntry {
		i64 14192320605318602423, ; hash 0xc4f540657a78deb7, from name: libaot-Microsoft.IdentityModel.Tokens.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Microsoft.IdentityModel.Tokens.dll.so
		ptr null; void* handle (0x0)
	}, ; 766
	%struct.DSOCacheEntry {
		i64 14208955863919878019, ; hash 0xc5305a137225df83, from name: aot-System.Runtime.Serialization.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 767
	%struct.DSOCacheEntry {
		i64 14230396410514008665, ; hash 0xc57c8623b5ae6a59, from name: aot-System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 768
	%struct.DSOCacheEntry {
		i64 14244268896140588737, ; hash 0xc5adcf17779af6c1, from name: aot-System.Net.WebClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 769
	%struct.DSOCacheEntry {
		i64 14317997431913345095, ; hash 0xc6b3becde8267047, from name: aot-System.Collections.Specialized.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 770
	%struct.DSOCacheEntry {
		i64 14319327830875434373, ; hash 0xc6b878cb8db1ed85, from name: System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 771
	%struct.DSOCacheEntry {
		i64 14327709162229390963, ; hash 0xc6d63f9253cade73, from name: System.Security.Cryptography.X509Certificates
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 772
	%struct.DSOCacheEntry {
		i64 14343351667264400691, ; hash 0xc70dd258d7cd2d33, from name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 773
	%struct.DSOCacheEntry {
		i64 14343849879592858025, ; hash 0xc70f9777f0a971a9, from name: System.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 774
	%struct.DSOCacheEntry {
		i64 14351510784141839845, ; hash 0xc72acf0546f64de5, from name: aot-Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 775
	%struct.DSOCacheEntry {
		i64 14360875924539294536, ; hash 0xc74c1490f19fc348, from name: Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 776
	%struct.DSOCacheEntry {
		i64 14424844866220670826, ; hash 0xc82f57facf333f6a, from name: monosgen-2.0.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 777
	%struct.DSOCacheEntry {
		i64 14479173745522503767, ; hash 0xc8f05bcebf07f057, from name: libaot-System.Configuration.ConfigurationManager.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Configuration.ConfigurationManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 778
	%struct.DSOCacheEntry {
		i64 14493845334980046552, ; hash 0xc9247b8a5cf02ed8, from name: libaot-Microsoft.IdentityModel.JsonWebTokens
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-Microsoft.IdentityModel.JsonWebTokens.dll.so
		ptr null; void* handle (0x0)
	}, ; 779
	%struct.DSOCacheEntry {
		i64 14501288617436667693, ; hash 0xc93eed2a9bba5f2d, from name: libaot-Microsoft.IdentityModel.Protocols
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-Microsoft.IdentityModel.Protocols.dll.so
		ptr null; void* handle (0x0)
	}, ; 780
	%struct.DSOCacheEntry {
		i64 14562678984415238708, ; hash 0xca190761441dda34, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 781
	%struct.DSOCacheEntry {
		i64 14587487794768888622, ; hash 0xca712adc8c8bc32e, from name: Microsoft.Extensions.Caching.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.Caching.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 782
	%struct.DSOCacheEntry {
		i64 14604015534980822382, ; hash 0xcaabe2c0f0d1756e, from name: aot-System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 783
	%struct.DSOCacheEntry {
		i64 14611435504614518872, ; hash 0xcac63f2d3f143058, from name: System.Net.NetworkInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 784
	%struct.DSOCacheEntry {
		i64 14622043554576106986, ; hash 0xcaebef2458cc85ea, from name: System.Runtime.Serialization.Formatters
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 785
	%struct.DSOCacheEntry {
		i64 14636765086127004323, ; hash 0xcb203c4c03709aa3, from name: aot-CapaBL.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-CapaBL.dll.so
		ptr null; void* handle (0x0)
	}, ; 786
	%struct.DSOCacheEntry {
		i64 14676814804625592115, ; hash 0xcbae854dbfe70f33, from name: libaot-Microsoft.IdentityModel.Protocols.OpenIdConnect.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-Microsoft.IdentityModel.Protocols.OpenIdConnect.dll.so
		ptr null; void* handle (0x0)
	}, ; 787
	%struct.DSOCacheEntry {
		i64 14694648535529247188, ; hash 0xcbede0fccb6f51d4, from name: libaot-Microsoft.SqlServer.Server.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-Microsoft.SqlServer.Server.dll.so
		ptr null; void* handle (0x0)
	}, ; 788
	%struct.DSOCacheEntry {
		i64 14713405421650509891, ; hash 0xcc308446a9c90043, from name: libaot-System.Collections.NonGeneric.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 789
	%struct.DSOCacheEntry {
		i64 14726144688497773647, ; hash 0xcc5dc6925cea4c4f, from name: libaot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 790
	%struct.DSOCacheEntry {
		i64 14749613074536373161, ; hash 0xccb126f1ca329ba9, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 791
	%struct.DSOCacheEntry {
		i64 14761658010069183920, ; hash 0xccdbf1bfe1f92db0, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 792
	%struct.DSOCacheEntry {
		i64 14783105725698854274, ; hash 0xcd2824555152cd82, from name: libaot-Microsoft.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 793
	%struct.DSOCacheEntry {
		i64 14793308678264731746, ; hash 0xcd4c63dd54ac3862, from name: libaot-System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 794
	%struct.DSOCacheEntry {
		i64 14797884060996115029, ; hash 0xcd5ca526a3169a55, from name: aot-System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 795
	%struct.DSOCacheEntry {
		i64 14832630590065248058, ; hash 0xcdd816ef5d6e873a, from name: System.Security.Claims
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 796
	%struct.DSOCacheEntry {
		i64 14848298015145851925, ; hash 0xce0fc06007e7fc15, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 797
	%struct.DSOCacheEntry {
		i64 14852025521463078876, ; hash 0xce1cfe85b9d7afdc, from name: aot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 798
	%struct.DSOCacheEntry {
		i64 14861939854077530687, ; hash 0xce40378e2b83123f, from name: libaot-System.Xml.XmlSerializer
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 799
	%struct.DSOCacheEntry {
		i64 14912225920358050525, ; hash 0xcef2de7759506add, from name: System.Security.Principal.Windows
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 800
	%struct.DSOCacheEntry {
		i64 14929951904236909252, ; hash 0xcf31d82795b532c4, from name: aot-System.Numerics.Vectors
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 801
	%struct.DSOCacheEntry {
		i64 14937857240486681905, ; hash 0xcf4dee041cb49d31, from name: aot-Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 802
	%struct.DSOCacheEntry {
		i64 14956178634283043352, ; hash 0xcf8f053a05ba4a18, from name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 803
	%struct.DSOCacheEntry {
		i64 14984936317414011727, ; hash 0xcff5302fe54ff34f, from name: System.Net.WebHeaderCollection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 804
	%struct.DSOCacheEntry {
		i64 14991793843564863672, ; hash 0xd00d8d121f9260b8, from name: libaot-System.Security.Cryptography.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 805
	%struct.DSOCacheEntry {
		i64 15036676938210766038, ; hash 0xd0ad0201f05c6cd6, from name: Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 806
	%struct.DSOCacheEntry {
		i64 15053928356398764554, ; hash 0xd0ea4c14bd54120a, from name: aot-Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 807
	%struct.DSOCacheEntry {
		i64 15112147962820809439, ; hash 0xd1b922812d13d2df, from name: aot-System.Security.AccessControl
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 808
	%struct.DSOCacheEntry {
		i64 15138356091203993725, ; hash 0xd2163ea89395c07d, from name: Microsoft.IdentityModel.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-Microsoft.IdentityModel.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 809
	%struct.DSOCacheEntry {
		i64 15169277521300507936, ; hash 0xd28419890c6f4d20, from name: aot-System.Threading.Thread.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 810
	%struct.DSOCacheEntry {
		i64 15182648138039228807, ; hash 0xd2b39a0a5992f987, from name: libaot-Microsoft.Extensions.Caching.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-Microsoft.Extensions.Caching.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 811
	%struct.DSOCacheEntry {
		i64 15212030046956336817, ; hash 0xd31bfcbb1d66b6b1, from name: libaot-System.Runtime.Loader.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 812
	%struct.DSOCacheEntry {
		i64 15229205737991969125, ; hash 0xd35901ee505a1965, from name: libaot-Azure.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Azure.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 813
	%struct.DSOCacheEntry {
		i64 15275473185398115273, ; hash 0xd3fd61eddfa8cbc9, from name: libaot-System.IO.FileSystem.Watcher.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 814
	%struct.DSOCacheEntry {
		i64 15287759098695794728, ; hash 0xd42907e6f9824028, from name: System.IO.Compression.Brotli.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 815
	%struct.DSOCacheEntry {
		i64 15336335058859734039, ; hash 0xd4d59b7b0bb43417, from name: libaot-Microsoft.Win32.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 816
	%struct.DSOCacheEntry {
		i64 15361183609531804313, ; hash 0xd52de31b17b22a99, from name: System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 817
	%struct.DSOCacheEntry {
		i64 15371816955219117674, ; hash 0xd553aa13d029866a, from name: libaot-System.ComponentModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 818
	%struct.DSOCacheEntry {
		i64 15383240894167415497, ; hash 0xd57c4016df1c7ac9, from name: System.Memory.Data
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Memory.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 819
	%struct.DSOCacheEntry {
		i64 15385617065962309506, ; hash 0xd584b1347adf0782, from name: libaot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 820
	%struct.DSOCacheEntry {
		i64 15391712275433856905, ; hash 0xd59a58c406411f89, from name: Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 821
	%struct.DSOCacheEntry {
		i64 15394198501530322172, ; hash 0xd5a32df9a590c4fc, from name: libaot-Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 822
	%struct.DSOCacheEntry {
		i64 15422501938551467493, ; hash 0xd607bbcd1b222de5, from name: System.ComponentModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 823
	%struct.DSOCacheEntry {
		i64 15441728228412085485, ; hash 0xd64c0a028c9fd4ed, from name: libaot-System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 824
	%struct.DSOCacheEntry {
		i64 15465553130743477305, ; hash 0xd6a0aea1e4e53439, from name: System.Net.NameResolution.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 825
	%struct.DSOCacheEntry {
		i64 15475196252089753159, ; hash 0xd6c2f1000b441e47, from name: System.Diagnostics.EventLog
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.EventLog.dll.so
		ptr null; void* handle (0x0)
	}, ; 826
	%struct.DSOCacheEntry {
		i64 15476609812571688208, ; hash 0xd6c7f6a03da90d10, from name: libaot-Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 827
	%struct.DSOCacheEntry {
		i64 15489493229072521270, ; hash 0xd6f5bc0665af9836, from name: aot-Xamarin.AndroidX.CursorAdapter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 828
	%struct.DSOCacheEntry {
		i64 15503723175688157554, ; hash 0xd7284a1606e23972, from name: aot-System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 829
	%struct.DSOCacheEntry {
		i64 15527772828719725935, ; hash 0xd77dbb1e38cd3d6f, from name: System.Console
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 830
	%struct.DSOCacheEntry {
		i64 15557562860424774966, ; hash 0xd7e790fe7a6dc536, from name: System.Net.Sockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 831
	%struct.DSOCacheEntry {
		i64 15582737692548360875, ; hash 0xd841015ed86f6aab, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 832
	%struct.DSOCacheEntry {
		i64 15602862011767004647, ; hash 0xd88880550acf1de7, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 833
	%struct.DSOCacheEntry {
		i64 15617887668700861200, ; hash 0xd8bde2166ade5310, from name: aot-System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 834
	%struct.DSOCacheEntry {
		i64 15619787930512100580, ; hash 0xd8c4a25d991b8ce4, from name: libaot-System.Diagnostics.TraceSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 835
	%struct.DSOCacheEntry {
		i64 15637181376593849944, ; hash 0xd9026d9cd83aee58, from name: aot-System.Security.Claims
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 836
	%struct.DSOCacheEntry {
		i64 15659595283356337508, ; hash 0xd9520ef12ed64564, from name: aot-System.Net.Security
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 837
	%struct.DSOCacheEntry {
		i64 15712039776084801819, ; hash 0xda0c60ee2e57b91b, from name: aot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 838
	%struct.DSOCacheEntry {
		i64 15734978453794313066, ; hash 0xda5ddf8946d5d36a, from name: aot-System.Security.Cryptography.X509Certificates
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 839
	%struct.DSOCacheEntry {
		i64 15742342285542832975, ; hash 0xda7808e6f6643b4f, from name: libaot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 840
	%struct.DSOCacheEntry {
		i64 15801103922446586191, ; hash 0xdb48cc4cb475d14f, from name: libaot-System.Runtime.Serialization.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 841
	%struct.DSOCacheEntry {
		i64 15847727014260307913, ; hash 0xdbee6fc12e58f7c9, from name: aot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 842
	%struct.DSOCacheEntry {
		i64 15869986477656553338, ; hash 0xdc3d849e5ef8b77a, from name: libaot-System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 843
	%struct.DSOCacheEntry {
		i64 15898481579068630170, ; hash 0xdca2c0c32c7a249a, from name: aot-Microsoft.SqlServer.Server.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-Microsoft.SqlServer.Server.dll.so
		ptr null; void* handle (0x0)
	}, ; 844
	%struct.DSOCacheEntry {
		i64 15904398121613806925, ; hash 0xdcb7c5d3952e4d4d, from name: libaot-System.Transactions.Local
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 845
	%struct.DSOCacheEntry {
		i64 15908591910761673656, ; hash 0xdcc6ac0e359a33b8, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 846
	%struct.DSOCacheEntry {
		i64 15920910109220503623, ; hash 0xdcf26f6449038047, from name: System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 847
	%struct.DSOCacheEntry {
		i64 15953629603678197891, ; hash 0xdd66ad993d651883, from name: libaot-System.Diagnostics.StackTrace
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 848
	%struct.DSOCacheEntry {
		i64 15958977808799221818, ; hash 0xdd79adc347d1c83a, from name: System.Net.Security.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 849
	%struct.DSOCacheEntry {
		i64 15963349826457351533, ; hash 0xdd893616f748b56d, from name: System.Threading.Tasks.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 850
	%struct.DSOCacheEntry {
		i64 15964641699753034279, ; hash 0xdd8dcd0aa82b0227, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 851
	%struct.DSOCacheEntry {
		i64 15966880053891205882, ; hash 0xdd95c0d017748afa, from name: libaot-System.Threading.Tasks.Extensions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 852
	%struct.DSOCacheEntry {
		i64 16004199028078918232, ; hash 0xde1a5638df4bba58, from name: System.Net.WebHeaderCollection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 853
	%struct.DSOCacheEntry {
		i64 16011614235295386646, ; hash 0xde34ae50575e8c16, from name: System.Net.ServicePoint.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 854
	%struct.DSOCacheEntry {
		i64 16014002616147871184, ; hash 0xde3d2a8897ab85d0, from name: DTO
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-DTO.dll.so
		ptr null; void* handle (0x0)
	}, ; 855
	%struct.DSOCacheEntry {
		i64 16034513218355378781, ; hash 0xde8608d14e60ba5d, from name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 856
	%struct.DSOCacheEntry {
		i64 16127909639083258053, ; hash 0xdfd1d85e0f27f0c5, from name: libaot-Azure.Identity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Azure.Identity.dll.so
		ptr null; void* handle (0x0)
	}, ; 857
	%struct.DSOCacheEntry {
		i64 16140149539819930312, ; hash 0xdffd547e06a6c2c8, from name: libaot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 858
	%struct.DSOCacheEntry {
		i64 16151644148648336944, ; hash 0xe0262ac732b35e30, from name: aot-Xamarin.AndroidX.Browser
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 859
	%struct.DSOCacheEntry {
		i64 16154507427712707110, ; hash 0xe03056ea4e39aa26, from name: System
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 860
	%struct.DSOCacheEntry {
		i64 16186580156264869966, ; hash 0xe0a248e4568df04e, from name: libaot-Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 861
	%struct.DSOCacheEntry {
		i64 16210911171323730879, ; hash 0xe0f8b9d23c299bbf, from name: libaot-System.Private.DataContractSerialization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 862
	%struct.DSOCacheEntry {
		i64 16215129991522364183, ; hash 0xe107b6d0db792b17, from name: libaot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 863
	%struct.DSOCacheEntry {
		i64 16217712076265891113, ; hash 0xe110e3354f642529, from name: libmono-component-marshal-ilgen.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 864
	%struct.DSOCacheEntry {
		i64 16219561732052121626, ; hash 0xe1177575db7c781a, from name: System.Net.Security
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 865
	%struct.DSOCacheEntry {
		i64 16225652972018057753, ; hash 0xe12d19692de5c219, from name: libaot-System.Xml.XmlSerializer.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 866
	%struct.DSOCacheEntry {
		i64 16244479869324760570, ; hash 0xe16ffc5fcc1615fa, from name: aot-System.Security.Cryptography.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 867
	%struct.DSOCacheEntry {
		i64 16253390427661688581, ; hash 0xe18fa47ad4825f05, from name: libaot-System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 868
	%struct.DSOCacheEntry {
		i64 16254491453283163162, ; hash 0xe1938ddb5590dc1a, from name: Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 869
	%struct.DSOCacheEntry {
		i64 16273606707797624453, ; hash 0xe1d7771458b10685, from name: System.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 870
	%struct.DSOCacheEntry {
		i64 16329114974302298891, ; hash 0xe29cab8dc3cce30b, from name: aot-Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 871
	%struct.DSOCacheEntry {
		i64 16354813168604688526, ; hash 0xe2f7f7ece290308e, from name: aot-System.Drawing.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 872
	%struct.DSOCacheEntry {
		i64 16359895623217386732, ; hash 0xe30a0664105714ec, from name: libaot-System.Xml.XDocument
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 873
	%struct.DSOCacheEntry {
		i64 16370340268830916137, ; hash 0xe32f21bd9ff07e29, from name: System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 874
	%struct.DSOCacheEntry {
		i64 16381697928620763692, ; hash 0xe3577b78dd316a2c, from name: aot-System.Xml.XDocument
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 875
	%struct.DSOCacheEntry {
		i64 16411908373586787849, ; hash 0xe3c2cfb635e63e09, from name: libaot-System.Drawing.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 876
	%struct.DSOCacheEntry {
		i64 16413721059704043258, ; hash 0xe3c940571601f6fa, from name: aot-System.Console.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 877
	%struct.DSOCacheEntry {
		i64 16454459195343277943, ; hash 0xe459fb756d988f77, from name: System.Net.NetworkInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 878
	%struct.DSOCacheEntry {
		i64 16477862173331498088, ; hash 0xe4ad2057db452468, from name: Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 879
	%struct.DSOCacheEntry {
		i64 16481900306254799575, ; hash 0xe4bb7900f1b822d7, from name: aot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 880
	%struct.DSOCacheEntry {
		i64 16552189916565614403, ; hash 0xe5b5310827b22f43, from name: libaot-CapaENT.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-CapaENT.dll.so
		ptr null; void* handle (0x0)
	}, ; 881
	%struct.DSOCacheEntry {
		i64 16649148416072044166, ; hash 0xe70da84600bb4e86, from name: Microsoft.Maui.Graphics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 882
	%struct.DSOCacheEntry {
		i64 16677317093839702854, ; hash 0xe771bb8960dd8b46, from name: Xamarin.AndroidX.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 883
	%struct.DSOCacheEntry {
		i64 16717189724135467099, ; hash 0xe7ff637b8de7a85b, from name: libmonosgen-2.0.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 884
	%struct.DSOCacheEntry {
		i64 16730696072636839813, ; hash 0xe82f5f6f5e8ab785, from name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 885
	%struct.DSOCacheEntry {
		i64 16733100980842614628, ; hash 0xe837eaafb1dd4f64, from name: libaot-System.IO.Compression.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 886
	%struct.DSOCacheEntry {
		i64 16765175234154577062, ; hash 0xe8a9de0cbcf5bca6, from name: libaot-System.Security.Cryptography.Algorithms
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 887
	%struct.DSOCacheEntry {
		i64 16768067971893542065, ; hash 0xe8b424faba51bcb1, from name: libaot-Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 888
	%struct.DSOCacheEntry {
		i64 16778162983708529344, ; hash 0xe8d80256d38e12c0, from name: libaot-Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 889
	%struct.DSOCacheEntry {
		i64 16804602679676381986, ; hash 0xe935f11a41b02b22, from name: monosgen-2.0
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 890
	%struct.DSOCacheEntry {
		i64 16812641203226435415, ; hash 0xe9528018de685f57, from name: libaot-System.Private.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 891
	%struct.DSOCacheEntry {
		i64 16818814240165112060, ; hash 0xe9686e710852a8fc, from name: aot-System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 892
	%struct.DSOCacheEntry {
		i64 16831427098943474553, ; hash 0xe9953dc50f68cb79, from name: aot-Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 893
	%struct.DSOCacheEntry {
		i64 16924802110373038789, ; hash 0xeae0f9d912910ac5, from name: libaot-System.IO.Compression.Brotli.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 894
	%struct.DSOCacheEntry {
		i64 16926798323237543726, ; hash 0xeae8116499405f2e, from name: libaot-System.Formats.Asn1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 895
	%struct.DSOCacheEntry {
		i64 16935491222131471435, ; hash 0xeb06f389d7e4744b, from name: Microsoft.IdentityModel.JsonWebTokens.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-Microsoft.IdentityModel.JsonWebTokens.dll.so
		ptr null; void* handle (0x0)
	}, ; 896
	%struct.DSOCacheEntry {
		i64 16945858842201062480, ; hash 0xeb2bc8d57f4e7c50, from name: Azure.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Azure.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 897
	%struct.DSOCacheEntry {
		i64 16948040093346346617, ; hash 0xeb3388ab9afcb679, from name: System.ComponentModel.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 898
	%struct.DSOCacheEntry {
		i64 16998075588627545693, ; hash 0xebe54bb02d623e5d, from name: Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 899
	%struct.DSOCacheEntry {
		i64 17006494245921786209, ; hash 0xec03346992e48961, from name: libaot-System.Security.Cryptography.X509Certificates
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 900
	%struct.DSOCacheEntry {
		i64 17006954551347072385, ; hash 0xec04d70ec8414d81, from name: System.ClientModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.ClientModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 901
	%struct.DSOCacheEntry {
		i64 17007211756263440882, ; hash 0xec05c0fbf7ee01f2, from name: System.IO.FileSystem.AccessControl.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 902
	%struct.DSOCacheEntry {
		i64 17008137082415910100, ; hash 0xec090a90408c8cd4, from name: System.Collections.NonGeneric
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 903
	%struct.DSOCacheEntry {
		i64 17013129365086196242, ; hash 0xec1ac704a3bad212, from name: libaot-System.IO.FileSystem.AccessControl.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 904
	%struct.DSOCacheEntry {
		i64 17055547629728291761, ; hash 0xecb17a347fb5dbb1, from name: aot-System.Xml.ReaderWriter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 905
	%struct.DSOCacheEntry {
		i64 17062143951396181894, ; hash 0xecc8e986518c9786, from name: System.ComponentModel.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 906
	%struct.DSOCacheEntry {
		i64 17118171214553292978, ; hash 0xed8ff6060fc420b2, from name: System.Threading.Channels
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 907
	%struct.DSOCacheEntry {
		i64 17137864900836977098, ; hash 0xedd5ed53b705e9ca, from name: Microsoft.IdentityModel.Tokens
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Microsoft.IdentityModel.Tokens.dll.so
		ptr null; void* handle (0x0)
	}, ; 908
	%struct.DSOCacheEntry {
		i64 17190839035643904991, ; hash 0xee9221059e7943df, from name: aot-Microsoft.IdentityModel.JsonWebTokens
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-Microsoft.IdentityModel.JsonWebTokens.dll.so
		ptr null; void* handle (0x0)
	}, ; 909
	%struct.DSOCacheEntry {
		i64 17197986060146327831, ; hash 0xeeab8533ef244117, from name: Microsoft.Identity.Client.Extensions.Msal
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-Microsoft.Identity.Client.Extensions.Msal.dll.so
		ptr null; void* handle (0x0)
	}, ; 910
	%struct.DSOCacheEntry {
		i64 17206575440126196581, ; hash 0xeeca0932cdaebb65, from name: libaot-CapaDAL.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libaot-CapaDAL.dll.so
		ptr null; void* handle (0x0)
	}, ; 911
	%struct.DSOCacheEntry {
		i64 17230721278011714856, ; hash 0xef1fd1b5c7a72d28, from name: System.Private.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 912
	%struct.DSOCacheEntry {
		i64 17252806954862991943, ; hash 0xef6e488422ff5a47, from name: libaot-Xamarin.AndroidX.Collection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 913
	%struct.DSOCacheEntry {
		i64 17260702271250283638, ; hash 0xef8a5543bba6bc76, from name: System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 914
	%struct.DSOCacheEntry {
		i64 17307240838015558791, ; hash 0xf02fabd8300d2487, from name: libaot-System.Net.NetworkInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 915
	%struct.DSOCacheEntry {
		i64 17309541862275468045, ; hash 0xf037d89d25aecb0d, from name: Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 916
	%struct.DSOCacheEntry {
		i64 17317630548055557570, ; hash 0xf054953b104e05c2, from name: aot-System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 917
	%struct.DSOCacheEntry {
		i64 17353272485882399419, ; hash 0xf0d3356263948abb, from name: Newtonsoft.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 918
	%struct.DSOCacheEntry {
		i64 17402366034782696113, ; hash 0xf1819fb4fa8bb2b1, from name: System.Security.Cryptography.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 919
	%struct.DSOCacheEntry {
		i64 17426267689422556144, ; hash 0xf1d68a229ce60bf0, from name: aot-System.Diagnostics.Process
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 920
	%struct.DSOCacheEntry {
		i64 17451386204284126469, ; hash 0xf22fc74a98820505, from name: aot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 921
	%struct.DSOCacheEntry {
		i64 17453504965091914764, ; hash 0xf2374e4b09d1f40c, from name: libaot-System.IO.Pipes
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 922
	%struct.DSOCacheEntry {
		i64 17474527379847198219, ; hash 0xf281fe1165a1360b, from name: libaot-System
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 923
	%struct.DSOCacheEntry {
		i64 17479433570620501354, ; hash 0xf2936c38f3df6d6a, from name: aot-System.Diagnostics.StackTrace
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 924
	%struct.DSOCacheEntry {
		i64 17501557440705411739, ; hash 0xf2e205c3dd573a9b, from name: libaot-System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 925
	%struct.DSOCacheEntry {
		i64 17550854928489061607, ; hash 0xf3912991ad011ce7, from name: libaot-Microsoft.Bcl.AsyncInterfaces.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Bcl.AsyncInterfaces.dll.so
		ptr null; void* handle (0x0)
	}, ; 926
	%struct.DSOCacheEntry {
		i64 17577202782581072989, ; hash 0xf3eec4cd80c0a45d, from name: System.IO.Compression.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 927
	%struct.DSOCacheEntry {
		i64 17585881415428540016, ; hash 0xf40d99f92cc30670, from name: aot-Microsoft.IdentityModel.JsonWebTokens.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-Microsoft.IdentityModel.JsonWebTokens.dll.so
		ptr null; void* handle (0x0)
	}, ; 928
	%struct.DSOCacheEntry {
		i64 17621652644066257425, ; hash 0xf48cafb75ce46a11, from name: libaot-System.Threading
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 929
	%struct.DSOCacheEntry {
		i64 17623318455445168472, ; hash 0xf4929ac34c652158, from name: libaot-System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 930
	%struct.DSOCacheEntry {
		i64 17634962315631480230, ; hash 0xf4bbf8cac29d4da6, from name: aot-System.Drawing.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 931
	%struct.DSOCacheEntry {
		i64 17635730081727385264, ; hash 0xf4beb3123c080eb0, from name: libaot-Xamarin.AndroidX.Browser
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 932
	%struct.DSOCacheEntry {
		i64 17669149574319189607, ; hash 0xf5356dec348a2e67, from name: aot-System.Diagnostics.TextWriterTraceListener
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 933
	%struct.DSOCacheEntry {
		i64 17678238194885447556, ; hash 0xf555b7f994e3cf84, from name: aot-System.Diagnostics.TraceSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 934
	%struct.DSOCacheEntry {
		i64 17694752640166504414, ; hash 0xf59063c68187a7de, from name: libaot-System.Net.ServicePoint
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 935
	%struct.DSOCacheEntry {
		i64 17703160460402889398, ; hash 0xf5ae42a4b40e12b6, from name: libaot-CapaUI-Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-CapaUI-Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 936
	%struct.DSOCacheEntry {
		i64 17704177640604968747, ; hash 0xf5b1dfc36cac272b, from name: Xamarin.AndroidX.Loader
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 937
	%struct.DSOCacheEntry {
		i64 17710060891934109755, ; hash 0xf5c6c68c9e45303b, from name: Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 938
	%struct.DSOCacheEntry {
		i64 17713125066719685945, ; hash 0xf5d1a96667e4ed39, from name: Azure.Identity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Azure.Identity.dll.so
		ptr null; void* handle (0x0)
	}, ; 939
	%struct.DSOCacheEntry {
		i64 17725651416025760223, ; hash 0xf5fe2a0c609d81df, from name: aot-System.Reflection.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 940
	%struct.DSOCacheEntry {
		i64 17729255244101106781, ; hash 0xf60af7b5fce0bc5d, from name: aot-System.Net.WebHeaderCollection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 941
	%struct.DSOCacheEntry {
		i64 17743242089888636773, ; hash 0xf63ca8ac4b925f65, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 942
	%struct.DSOCacheEntry {
		i64 17790600151040787804, ; hash 0xf6e4e89427cc055c, from name: Microsoft.IdentityModel.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-Microsoft.IdentityModel.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 943
	%struct.DSOCacheEntry {
		i64 17798155118191535816, ; hash 0xf6ffbfc8051b66c8, from name: Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 944
	%struct.DSOCacheEntry {
		i64 17902061051722335752, ; hash 0xf870e5ad67440608, from name: aot-System.Net.WebHeaderCollection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 945
	%struct.DSOCacheEntry {
		i64 17935888202379228288, ; hash 0xf8e9134aa9eef480, from name: Microsoft.SqlServer.Server.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-Microsoft.SqlServer.Server.dll.so
		ptr null; void* handle (0x0)
	}, ; 946
	%struct.DSOCacheEntry {
		i64 17935984482491575587, ; hash 0xf8e96adb9fd42d23, from name: aot-System.Threading.Thread
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 947
	%struct.DSOCacheEntry {
		i64 17936373173282875089, ; hash 0xf8eacc5ec05f26d1, from name: libaot-System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 948
	%struct.DSOCacheEntry {
		i64 17966837238658391933, ; hash 0xf9570746b37e5f7d, from name: libaot-System.Collections.NonGeneric
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 949
	%struct.DSOCacheEntry {
		i64 18017743553296241350, ; hash 0xfa0be24cb44e92c6, from name: Microsoft.Extensions.Caching.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Caching.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 950
	%struct.DSOCacheEntry {
		i64 18025913125965088385, ; hash 0xfa28e87b91334681, from name: System.Threading
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 951
	%struct.DSOCacheEntry {
		i64 18035209221645796007, ; hash 0xfa49ef3b820c02a7, from name: System.Security.Cryptography.X509Certificates.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 952
	%struct.DSOCacheEntry {
		i64 18040554133168495475, ; hash 0xfa5cec66b2b69b73, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 953
	%struct.DSOCacheEntry {
		i64 18042235568190301429, ; hash 0xfa62e5a84be6a4f5, from name: System.Threading.ThreadPool.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 954
	%struct.DSOCacheEntry {
		i64 18047428238759735039, ; hash 0xfa75585d20a0aeff, from name: libaot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 955
	%struct.DSOCacheEntry {
		i64 18066658939550349411, ; hash 0xfab9aa959208b863, from name: libaot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 956
	%struct.DSOCacheEntry {
		i64 18070085765543834358, ; hash 0xfac5d743ac1532f6, from name: libaot-Microsoft.IdentityModel.Tokens
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-Microsoft.IdentityModel.Tokens.dll.so
		ptr null; void* handle (0x0)
	}, ; 957
	%struct.DSOCacheEntry {
		i64 18086360900563295465, ; hash 0xfaffa969d596dce9, from name: aot-System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 958
	%struct.DSOCacheEntry {
		i64 18095796275230343585, ; hash 0xfb212ed630f101a1, from name: libaot-Microsoft.Extensions.Caching.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-Microsoft.Extensions.Caching.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 959
	%struct.DSOCacheEntry {
		i64 18121036031235206392, ; hash 0xfb7ada42d3d42cf8, from name: Xamarin.AndroidX.Navigation.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 960
	%struct.DSOCacheEntry {
		i64 18122114450755693480, ; hash 0xfb7eaf13f0442ba8, from name: libaot-System.Buffers
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 961
	%struct.DSOCacheEntry {
		i64 18145848498878603418, ; hash 0xfbd30111a3b6e09a, from name: libSystem.IO.Compression.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 962
	%struct.DSOCacheEntry {
		i64 18226465753896977720, ; hash 0xfcf16a0903da0538, from name: libaot-System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 963
	%struct.DSOCacheEntry {
		i64 18252036729645089111, ; hash 0xfd4c42b3c1e0c157, from name: libaot-Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 964
	%struct.DSOCacheEntry {
		i64 18253685954460439423, ; hash 0xfd521ea9d526d37f, from name: aot-Xamarin.AndroidX.CardView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 965
	%struct.DSOCacheEntry {
		i64 18257096356770733190, ; hash 0xfd5e3c67ff65dc86, from name: libSystem.Security.Cryptography.Native.Android.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 966
	%struct.DSOCacheEntry {
		i64 18278807071731653235, ; hash 0xfdab5e2fbc769a73, from name: aot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 967
	%struct.DSOCacheEntry {
		i64 18292328407895211277, ; hash 0xfddb67c523617d0d, from name: aot-System.IO.Compression.Brotli.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 968
	%struct.DSOCacheEntry {
		i64 18309516218928916979, ; hash 0xfe1877fe3e82e9f3, from name: libaot-System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 969
	%struct.DSOCacheEntry {
		i64 18327710550568384473, ; hash 0xfe591ba430ceb7d9, from name: libaot-Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 970
	%struct.DSOCacheEntry {
		i64 18347920244245135731, ; hash 0xfea0e8402d6e0173, from name: aot-System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 971
	%struct.DSOCacheEntry {
		i64 18377348929170574574, ; hash 0xff09757bd49e0cee, from name: aot-System.Private.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 972
	%struct.DSOCacheEntry {
		i64 18385158873532443393, ; hash 0xff2534963405ab01, from name: libaot-Microsoft.IdentityModel.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-Microsoft.IdentityModel.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 973
	%struct.DSOCacheEntry {
		i64 18393280888185839729, ; hash 0xff420f841a4c6071, from name: CapaBL.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libaot-CapaBL.dll.so
		ptr null; void* handle (0x0)
	}, ; 974
	%struct.DSOCacheEntry {
		i64 18400295460575378824, ; hash 0xff5afb3b81d3fd88, from name: aot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 975
	%struct.DSOCacheEntry {
		i64 18429503703191461742, ; hash 0xffc2bff96f791f6e, from name: aot-System.Threading.Tasks.Extensions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 976
	%struct.DSOCacheEntry {
		i64 18441817052021859583, ; hash 0xffee7ee65e8124ff, from name: Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	} ; 977
], align 16

; Bundled assembly name buffers, all empty (unused when assembly stores are enabled)
@bundled_assemblies = dso_local local_unnamed_addr global [0 x %struct.XamarinAndroidBundledAssembly] zeroinitializer, align 8

@assembly_store_bundled_assemblies = dso_local local_unnamed_addr global [206 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 8

@assembly_stores = dso_local local_unnamed_addr global [2 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 8

; Strings
@.str.0 = private unnamed_addr constant [7 x i8] c"normal\00", align 1

; Application environment variables name:value pairs
@.env.0 = private unnamed_addr constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@.env.1 = private unnamed_addr constant [21 x i8] c"major=marksweep-conc\00", align 16
@.env.2 = private unnamed_addr constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 16
@.env.3 = private unnamed_addr constant [37 x i8] c"82b30f7c-013c-4d4d-a967-4c4f2fa00046\00", align 16
@.env.4 = private unnamed_addr constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 16
@.env.5 = private unnamed_addr constant [42 x i8] c"Xamarin.Android.Net.AndroidMessageHandler\00", align 16
@.env.6 = private unnamed_addr constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 16
@.env.7 = private unnamed_addr constant [15 x i8] c"LowercaseCrc64\00", align 1

;ApplicationConfig
@.ApplicationConfig.0_android_package_name = private unnamed_addr constant [27 x i8] c"com.companyname.capauimaui\00", align 16

;DSOCacheEntry
@.DSOCacheEntry.0_name = private unnamed_addr constant [35 x i8] c"libSystem.IO.Compression.Native.so\00", align 16
@.DSOCacheEntry.1_name = private unnamed_addr constant [20 x i8] c"libSystem.Native.so\00", align 16
@.DSOCacheEntry.2_name = private unnamed_addr constant [50 x i8] c"libSystem.Security.Cryptography.Native.Android.so\00", align 16
@.DSOCacheEntry.3_name = private unnamed_addr constant [35 x i8] c"libmono-component-marshal-ilgen.so\00", align 16
@.DSOCacheEntry.4_name = private unnamed_addr constant [19 x i8] c"libmonosgen-2.0.so\00", align 16
@.DSOCacheEntry.5_name = private unnamed_addr constant [16 x i8] c"libmonodroid.so\00", align 16
@.DSOCacheEntry.6_name = private unnamed_addr constant [51 x i8] c"libaot-_Microsoft.Android.Resource.Designer.dll.so\00", align 16
@.DSOCacheEntry.7_name = private unnamed_addr constant [21 x i8] c"libaot-CapaBL.dll.so\00", align 16
@.DSOCacheEntry.8_name = private unnamed_addr constant [22 x i8] c"libaot-CapaDAL.dll.so\00", align 16
@.DSOCacheEntry.9_name = private unnamed_addr constant [22 x i8] c"libaot-CapaENT.dll.so\00", align 16
@.DSOCacheEntry.10_name = private unnamed_addr constant [18 x i8] c"libaot-DTO.dll.so\00", align 16
@.DSOCacheEntry.11_name = private unnamed_addr constant [23 x i8] c"libaot-Services.dll.so\00", align 16
@.DSOCacheEntry.12_name = private unnamed_addr constant [26 x i8] c"libaot-CapaUI-Maui.dll.so\00", align 16
@.DSOCacheEntry.13_name = private unnamed_addr constant [25 x i8] c"libaot-Azure.Core.dll.so\00", align 16
@.DSOCacheEntry.14_name = private unnamed_addr constant [29 x i8] c"libaot-Azure.Identity.dll.so\00", align 16
@.DSOCacheEntry.15_name = private unnamed_addr constant [44 x i8] c"libaot-Microsoft.Bcl.AsyncInterfaces.dll.so\00", align 16
@.DSOCacheEntry.16_name = private unnamed_addr constant [39 x i8] c"libaot-Microsoft.Data.SqlClient.dll.so\00", align 16
@.DSOCacheEntry.17_name = private unnamed_addr constant [56 x i8] c"libaot-Microsoft.Extensions.Caching.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.18_name = private unnamed_addr constant [50 x i8] c"libaot-Microsoft.Extensions.Caching.Memory.dll.so\00", align 16
@.DSOCacheEntry.19_name = private unnamed_addr constant [49 x i8] c"libaot-Microsoft.Extensions.Configuration.dll.so\00", align 16
@.DSOCacheEntry.20_name = private unnamed_addr constant [62 x i8] c"libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.21_name = private unnamed_addr constant [55 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.dll.so\00", align 16
@.DSOCacheEntry.22_name = private unnamed_addr constant [68 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.23_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Extensions.Logging.dll.so\00", align 16
@.DSOCacheEntry.24_name = private unnamed_addr constant [56 x i8] c"libaot-Microsoft.Extensions.Logging.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.25_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Extensions.Options.dll.so\00", align 16
@.DSOCacheEntry.26_name = private unnamed_addr constant [46 x i8] c"libaot-Microsoft.Extensions.Primitives.dll.so\00", align 16
@.DSOCacheEntry.27_name = private unnamed_addr constant [40 x i8] c"libaot-Microsoft.Identity.Client.dll.so\00", align 16
@.DSOCacheEntry.28_name = private unnamed_addr constant [56 x i8] c"libaot-Microsoft.Identity.Client.Extensions.Msal.dll.so\00", align 16
@.DSOCacheEntry.29_name = private unnamed_addr constant [51 x i8] c"libaot-Microsoft.IdentityModel.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.30_name = private unnamed_addr constant [52 x i8] c"libaot-Microsoft.IdentityModel.JsonWebTokens.dll.so\00", align 16
@.DSOCacheEntry.31_name = private unnamed_addr constant [46 x i8] c"libaot-Microsoft.IdentityModel.Logging.dll.so\00", align 16
@.DSOCacheEntry.32_name = private unnamed_addr constant [48 x i8] c"libaot-Microsoft.IdentityModel.Protocols.dll.so\00", align 16
@.DSOCacheEntry.33_name = private unnamed_addr constant [62 x i8] c"libaot-Microsoft.IdentityModel.Protocols.OpenIdConnect.dll.so\00", align 16
@.DSOCacheEntry.34_name = private unnamed_addr constant [45 x i8] c"libaot-Microsoft.IdentityModel.Tokens.dll.so\00", align 16
@.DSOCacheEntry.35_name = private unnamed_addr constant [38 x i8] c"libaot-Microsoft.Maui.Controls.dll.so\00", align 16
@.DSOCacheEntry.36_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Maui.Controls.Xaml.dll.so\00", align 16
@.DSOCacheEntry.37_name = private unnamed_addr constant [29 x i8] c"libaot-Microsoft.Maui.dll.so\00", align 16
@.DSOCacheEntry.38_name = private unnamed_addr constant [40 x i8] c"libaot-Microsoft.Maui.Essentials.dll.so\00", align 16
@.DSOCacheEntry.39_name = private unnamed_addr constant [38 x i8] c"libaot-Microsoft.Maui.Graphics.dll.so\00", align 16
@.DSOCacheEntry.40_name = private unnamed_addr constant [41 x i8] c"libaot-Microsoft.SqlServer.Server.dll.so\00", align 16
@.DSOCacheEntry.41_name = private unnamed_addr constant [30 x i8] c"libaot-Newtonsoft.Json.dll.so\00", align 16
@.DSOCacheEntry.42_name = private unnamed_addr constant [33 x i8] c"libaot-System.ClientModel.dll.so\00", align 16
@.DSOCacheEntry.43_name = private unnamed_addr constant [56 x i8] c"libaot-System.Configuration.ConfigurationManager.dll.so\00", align 16
@.DSOCacheEntry.44_name = private unnamed_addr constant [42 x i8] c"libaot-System.Diagnostics.EventLog.dll.so\00", align 16
@.DSOCacheEntry.45_name = private unnamed_addr constant [46 x i8] c"libaot-System.IdentityModel.Tokens.Jwt.dll.so\00", align 16
@.DSOCacheEntry.46_name = private unnamed_addr constant [33 x i8] c"libaot-System.Memory.Data.dll.so\00", align 16
@.DSOCacheEntry.47_name = private unnamed_addr constant [48 x i8] c"libaot-System.Security.Cryptography.Pkcs.dll.so\00", align 16
@.DSOCacheEntry.48_name = private unnamed_addr constant [57 x i8] c"libaot-System.Security.Cryptography.ProtectedData.dll.so\00", align 16
@.DSOCacheEntry.49_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.Activity.dll.so\00", align 16
@.DSOCacheEntry.50_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.AndroidX.AppCompat.dll.so\00", align 16
@.DSOCacheEntry.51_name = private unnamed_addr constant [60 x i8] c"libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so\00", align 16
@.DSOCacheEntry.52_name = private unnamed_addr constant [39 x i8] c"libaot-Xamarin.AndroidX.Browser.dll.so\00", align 16
@.DSOCacheEntry.53_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.CardView.dll.so\00", align 16
@.DSOCacheEntry.54_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.Collection.dll.so\00", align 16
@.DSOCacheEntry.55_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so\00", align 16
@.DSOCacheEntry.56_name = private unnamed_addr constant [36 x i8] c"libaot-Xamarin.AndroidX.Core.dll.so\00", align 16
@.DSOCacheEntry.57_name = private unnamed_addr constant [45 x i8] c"libaot-Xamarin.AndroidX.CursorAdapter.dll.so\00", align 16
@.DSOCacheEntry.58_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.CustomView.dll.so\00", align 16
@.DSOCacheEntry.59_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.DrawerLayout.dll.so\00", align 16
@.DSOCacheEntry.60_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.Fragment.dll.so\00", align 16
@.DSOCacheEntry.61_name = private unnamed_addr constant [48 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so\00", align 16
@.DSOCacheEntry.62_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so\00", align 16
@.DSOCacheEntry.63_name = private unnamed_addr constant [51 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so\00", align 16
@.DSOCacheEntry.64_name = private unnamed_addr constant [61 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so\00", align 16
@.DSOCacheEntry.65_name = private unnamed_addr constant [38 x i8] c"libaot-Xamarin.AndroidX.Loader.dll.so\00", align 16
@.DSOCacheEntry.66_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.Navigation.Common.dll.so\00", align 16
@.DSOCacheEntry.67_name = private unnamed_addr constant [51 x i8] c"libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so\00", align 16
@.DSOCacheEntry.68_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so\00", align 16
@.DSOCacheEntry.69_name = private unnamed_addr constant [45 x i8] c"libaot-Xamarin.AndroidX.Navigation.UI.dll.so\00", align 16
@.DSOCacheEntry.70_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.RecyclerView.dll.so\00", align 16
@.DSOCacheEntry.71_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.SavedState.dll.so\00", align 16
@.DSOCacheEntry.72_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so\00", align 16
@.DSOCacheEntry.73_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.AndroidX.ViewPager.dll.so\00", align 16
@.DSOCacheEntry.74_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.ViewPager2.dll.so\00", align 16
@.DSOCacheEntry.75_name = private unnamed_addr constant [46 x i8] c"libaot-Xamarin.Google.Android.Material.dll.so\00", align 16
@.DSOCacheEntry.76_name = private unnamed_addr constant [36 x i8] c"libaot-Xamarin.Kotlin.StdLib.dll.so\00", align 16
@.DSOCacheEntry.77_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so\00", align 16
@.DSOCacheEntry.78_name = private unnamed_addr constant [31 x i8] c"libaot-Microsoft.CSharp.dll.so\00", align 16
@.DSOCacheEntry.79_name = private unnamed_addr constant [41 x i8] c"libaot-Microsoft.Win32.Primitives.dll.so\00", align 16
@.DSOCacheEntry.80_name = private unnamed_addr constant [29 x i8] c"libaot-System.Buffers.dll.so\00", align 16
@.DSOCacheEntry.81_name = private unnamed_addr constant [44 x i8] c"libaot-System.Collections.Concurrent.dll.so\00", align 16
@.DSOCacheEntry.82_name = private unnamed_addr constant [43 x i8] c"libaot-System.Collections.Immutable.dll.so\00", align 16
@.DSOCacheEntry.83_name = private unnamed_addr constant [44 x i8] c"libaot-System.Collections.NonGeneric.dll.so\00", align 16
@.DSOCacheEntry.84_name = private unnamed_addr constant [45 x i8] c"libaot-System.Collections.Specialized.dll.so\00", align 16
@.DSOCacheEntry.85_name = private unnamed_addr constant [33 x i8] c"libaot-System.Collections.dll.so\00", align 16
@.DSOCacheEntry.86_name = private unnamed_addr constant [47 x i8] c"libaot-System.ComponentModel.Primitives.dll.so\00", align 16
@.DSOCacheEntry.87_name = private unnamed_addr constant [50 x i8] c"libaot-System.ComponentModel.TypeConverter.dll.so\00", align 16
@.DSOCacheEntry.88_name = private unnamed_addr constant [36 x i8] c"libaot-System.ComponentModel.dll.so\00", align 16
@.DSOCacheEntry.89_name = private unnamed_addr constant [29 x i8] c"libaot-System.Console.dll.so\00", align 16
@.DSOCacheEntry.90_name = private unnamed_addr constant [33 x i8] c"libaot-System.Data.Common.dll.so\00", align 16
@.DSOCacheEntry.91_name = private unnamed_addr constant [50 x i8] c"libaot-System.Diagnostics.DiagnosticSource.dll.so\00", align 16
@.DSOCacheEntry.92_name = private unnamed_addr constant [41 x i8] c"libaot-System.Diagnostics.Process.dll.so\00", align 16
@.DSOCacheEntry.93_name = private unnamed_addr constant [44 x i8] c"libaot-System.Diagnostics.StackTrace.dll.so\00", align 16
@.DSOCacheEntry.94_name = private unnamed_addr constant [57 x i8] c"libaot-System.Diagnostics.TextWriterTraceListener.dll.so\00", align 16
@.DSOCacheEntry.95_name = private unnamed_addr constant [45 x i8] c"libaot-System.Diagnostics.TraceSource.dll.so\00", align 16
@.DSOCacheEntry.96_name = private unnamed_addr constant [41 x i8] c"libaot-System.Diagnostics.Tracing.dll.so\00", align 16
@.DSOCacheEntry.97_name = private unnamed_addr constant [40 x i8] c"libaot-System.Drawing.Primitives.dll.so\00", align 16
@.DSOCacheEntry.98_name = private unnamed_addr constant [29 x i8] c"libaot-System.Drawing.dll.so\00", align 16
@.DSOCacheEntry.99_name = private unnamed_addr constant [34 x i8] c"libaot-System.Formats.Asn1.dll.so\00", align 16
@.DSOCacheEntry.100_name = private unnamed_addr constant [43 x i8] c"libaot-System.IO.Compression.Brotli.dll.so\00", align 16
@.DSOCacheEntry.101_name = private unnamed_addr constant [36 x i8] c"libaot-System.IO.Compression.dll.so\00", align 16
@.DSOCacheEntry.102_name = private unnamed_addr constant [49 x i8] c"libaot-System.IO.FileSystem.AccessControl.dll.so\00", align 16
@.DSOCacheEntry.103_name = private unnamed_addr constant [43 x i8] c"libaot-System.IO.FileSystem.Watcher.dll.so\00", align 16
@.DSOCacheEntry.104_name = private unnamed_addr constant [30 x i8] c"libaot-System.IO.Pipes.dll.so\00", align 16
@.DSOCacheEntry.105_name = private unnamed_addr constant [38 x i8] c"libaot-System.Linq.Expressions.dll.so\00", align 16
@.DSOCacheEntry.106_name = private unnamed_addr constant [26 x i8] c"libaot-System.Linq.dll.so\00", align 16
@.DSOCacheEntry.107_name = private unnamed_addr constant [28 x i8] c"libaot-System.Memory.dll.so\00", align 16
@.DSOCacheEntry.108_name = private unnamed_addr constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 16
@.DSOCacheEntry.109_name = private unnamed_addr constant [40 x i8] c"libaot-System.Net.NameResolution.dll.so\00", align 16
@.DSOCacheEntry.110_name = private unnamed_addr constant [44 x i8] c"libaot-System.Net.NetworkInformation.dll.so\00", align 16
@.DSOCacheEntry.111_name = private unnamed_addr constant [36 x i8] c"libaot-System.Net.Primitives.dll.so\00", align 16
@.DSOCacheEntry.112_name = private unnamed_addr constant [34 x i8] c"libaot-System.Net.Requests.dll.so\00", align 16
@.DSOCacheEntry.113_name = private unnamed_addr constant [34 x i8] c"libaot-System.Net.Security.dll.so\00", align 16
@.DSOCacheEntry.114_name = private unnamed_addr constant [38 x i8] c"libaot-System.Net.ServicePoint.dll.so\00", align 16
@.DSOCacheEntry.115_name = private unnamed_addr constant [33 x i8] c"libaot-System.Net.Sockets.dll.so\00", align 16
@.DSOCacheEntry.116_name = private unnamed_addr constant [35 x i8] c"libaot-System.Net.WebClient.dll.so\00", align 16
@.DSOCacheEntry.117_name = private unnamed_addr constant [45 x i8] c"libaot-System.Net.WebHeaderCollection.dll.so\00", align 16
@.DSOCacheEntry.118_name = private unnamed_addr constant [38 x i8] c"libaot-System.Numerics.Vectors.dll.so\00", align 16
@.DSOCacheEntry.119_name = private unnamed_addr constant [33 x i8] c"libaot-System.ObjectModel.dll.so\00", align 16
@.DSOCacheEntry.120_name = private unnamed_addr constant [55 x i8] c"libaot-System.Private.DataContractSerialization.dll.so\00", align 16
@.DSOCacheEntry.121_name = private unnamed_addr constant [33 x i8] c"libaot-System.Private.Uri.dll.so\00", align 16
@.DSOCacheEntry.122_name = private unnamed_addr constant [38 x i8] c"libaot-System.Private.Xml.Linq.dll.so\00", align 16
@.DSOCacheEntry.123_name = private unnamed_addr constant [33 x i8] c"libaot-System.Private.Xml.dll.so\00", align 16
@.DSOCacheEntry.124_name = private unnamed_addr constant [50 x i8] c"libaot-System.Reflection.Emit.ILGeneration.dll.so\00", align 16
@.DSOCacheEntry.125_name = private unnamed_addr constant [49 x i8] c"libaot-System.Reflection.Emit.Lightweight.dll.so\00", align 16
@.DSOCacheEntry.126_name = private unnamed_addr constant [43 x i8] c"libaot-System.Reflection.Primitives.dll.so\00", align 16
@.DSOCacheEntry.127_name = private unnamed_addr constant [64 x i8] c"libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so\00", align 16
@.DSOCacheEntry.128_name = private unnamed_addr constant [45 x i8] c"libaot-System.Runtime.InteropServices.dll.so\00", align 16
@.DSOCacheEntry.129_name = private unnamed_addr constant [36 x i8] c"libaot-System.Runtime.Loader.dll.so\00", align 16
@.DSOCacheEntry.130_name = private unnamed_addr constant [38 x i8] c"libaot-System.Runtime.Numerics.dll.so\00", align 16
@.DSOCacheEntry.131_name = private unnamed_addr constant [54 x i8] c"libaot-System.Runtime.Serialization.Formatters.dll.so\00", align 16
@.DSOCacheEntry.132_name = private unnamed_addr constant [48 x i8] c"libaot-System.Runtime.Serialization.Json.dll.so\00", align 16
@.DSOCacheEntry.133_name = private unnamed_addr constant [54 x i8] c"libaot-System.Runtime.Serialization.Primitives.dll.so\00", align 16
@.DSOCacheEntry.134_name = private unnamed_addr constant [47 x i8] c"libaot-System.Runtime.Serialization.Xml.dll.so\00", align 16
@.DSOCacheEntry.135_name = private unnamed_addr constant [29 x i8] c"libaot-System.Runtime.dll.so\00", align 16
@.DSOCacheEntry.136_name = private unnamed_addr constant [44 x i8] c"libaot-System.Security.AccessControl.dll.so\00", align 16
@.DSOCacheEntry.137_name = private unnamed_addr constant [37 x i8] c"libaot-System.Security.Claims.dll.so\00", align 16
@.DSOCacheEntry.138_name = private unnamed_addr constant [54 x i8] c"libaot-System.Security.Cryptography.Algorithms.dll.so\00", align 16
@.DSOCacheEntry.139_name = private unnamed_addr constant [52 x i8] c"libaot-System.Security.Cryptography.Encoding.dll.so\00", align 16
@.DSOCacheEntry.140_name = private unnamed_addr constant [54 x i8] c"libaot-System.Security.Cryptography.Primitives.dll.so\00", align 16
@.DSOCacheEntry.141_name = private unnamed_addr constant [60 x i8] c"libaot-System.Security.Cryptography.X509Certificates.dll.so\00", align 16
@.DSOCacheEntry.142_name = private unnamed_addr constant [43 x i8] c"libaot-System.Security.Cryptography.dll.so\00", align 16
@.DSOCacheEntry.143_name = private unnamed_addr constant [48 x i8] c"libaot-System.Security.Principal.Windows.dll.so\00", align 16
@.DSOCacheEntry.144_name = private unnamed_addr constant [45 x i8] c"libaot-System.Text.Encoding.CodePages.dll.so\00", align 16
@.DSOCacheEntry.145_name = private unnamed_addr constant [46 x i8] c"libaot-System.Text.Encoding.Extensions.dll.so\00", align 16
@.DSOCacheEntry.146_name = private unnamed_addr constant [40 x i8] c"libaot-System.Text.Encodings.Web.dll.so\00", align 16
@.DSOCacheEntry.147_name = private unnamed_addr constant [31 x i8] c"libaot-System.Text.Json.dll.so\00", align 16
@.DSOCacheEntry.148_name = private unnamed_addr constant [45 x i8] c"libaot-System.Text.RegularExpressions.dll.so\00", align 16
@.DSOCacheEntry.149_name = private unnamed_addr constant [40 x i8] c"libaot-System.Threading.Channels.dll.so\00", align 16
@.DSOCacheEntry.150_name = private unnamed_addr constant [48 x i8] c"libaot-System.Threading.Tasks.Extensions.dll.so\00", align 16
@.DSOCacheEntry.151_name = private unnamed_addr constant [38 x i8] c"libaot-System.Threading.Thread.dll.so\00", align 16
@.DSOCacheEntry.152_name = private unnamed_addr constant [42 x i8] c"libaot-System.Threading.ThreadPool.dll.so\00", align 16
@.DSOCacheEntry.153_name = private unnamed_addr constant [31 x i8] c"libaot-System.Threading.dll.so\00", align 16
@.DSOCacheEntry.154_name = private unnamed_addr constant [40 x i8] c"libaot-System.Transactions.Local.dll.so\00", align 16
@.DSOCacheEntry.155_name = private unnamed_addr constant [30 x i8] c"libaot-System.Xml.Linq.dll.so\00", align 16
@.DSOCacheEntry.156_name = private unnamed_addr constant [38 x i8] c"libaot-System.Xml.ReaderWriter.dll.so\00", align 16
@.DSOCacheEntry.157_name = private unnamed_addr constant [35 x i8] c"libaot-System.Xml.XDocument.dll.so\00", align 16
@.DSOCacheEntry.158_name = private unnamed_addr constant [39 x i8] c"libaot-System.Xml.XmlSerializer.dll.so\00", align 16
@.DSOCacheEntry.159_name = private unnamed_addr constant [21 x i8] c"libaot-System.dll.so\00", align 16
@.DSOCacheEntry.160_name = private unnamed_addr constant [26 x i8] c"libaot-netstandard.dll.so\00", align 16
@.DSOCacheEntry.161_name = private unnamed_addr constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 16
@.DSOCacheEntry.162_name = private unnamed_addr constant [35 x i8] c"libaot-Mono.Android.Runtime.dll.so\00", align 16
@.DSOCacheEntry.163_name = private unnamed_addr constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 16
@.DSOCacheEntry.164_name = private unnamed_addr constant [37 x i8] c"libaot-System.Private.CoreLib.dll.so\00", align 16

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
