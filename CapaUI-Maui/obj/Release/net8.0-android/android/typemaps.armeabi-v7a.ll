; ModuleID = 'typemaps.armeabi-v7a.ll'
source_filename = "typemaps.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 36, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 1022, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [36 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] c"\0Cq\F3\12\E8-\9FM\81\05~g\12h\DE\CD", ; module_uuid: 12f3710c-2de8-4d9f-8105-7e671268decd
		i32 3, ; uint32_t entry_count (0x3)
		i32 2, ; uint32_t duplicate_count (0x2)
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module0_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] c"\12\82\A4s\A0\DD\E9K\AB\E2\027\10%\12=", ; module_uuid: 73a48212-dda0-4be9-abe2-02371025123d
		i32 7, ; uint32_t entry_count (0x7)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module1_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 1
	%struct.TypeMapModule {
		[16 x i8] c"\14J;j\B3#\83A\8Cc\B34\C1\1B\7F\A7", ; module_uuid: 6a3b4a14-23b3-4183-8c63-b334c11b7fa7
		i32 4, ; uint32_t entry_count (0x4)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module2_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module2_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.2_assembly_name, ; assembly_name: Xamarin.KotlinX.Coroutines.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 2
	%struct.TypeMapModule {
		[16 x i8] c"\17S\FEQ3 dM\90\B2\1AV\CC\BD\B5\8B", ; module_uuid: 51fe5317-2033-4d64-90b2-1a56ccbdb58b
		i32 9, ; uint32_t entry_count (0x9)
		i32 8, ; uint32_t duplicate_count (0x8)
		ptr @module3_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module3_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.3_assembly_name, ; assembly_name: Xamarin.Kotlin.StdLib
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 3
	%struct.TypeMapModule {
		[16 x i8] c"\22\DF\B4\B1\C2\D7\18H\82\AEe1\7F\E9\ADf", ; module_uuid: b1b4df22-d7c2-4818-82ae-65317fe9ad66
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module4_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.4_assembly_name, ; assembly_name: Microsoft.Maui.Graphics
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 4
	%struct.TypeMapModule {
		[16 x i8] c"#;\D2\A7/\D1MC\9F\9EG\8F\F6\B0w\FF", ; module_uuid: a7d23b23-d12f-434d-9f9e-478ff6b077ff
		i32 5, ; uint32_t entry_count (0x5)
		i32 4, ; uint32_t duplicate_count (0x4)
		ptr @module5_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module5_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.5_assembly_name, ; assembly_name: Xamarin.AndroidX.Loader
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 5
	%struct.TypeMapModule {
		[16 x i8] c"$\E8m5\0B\DBNK\B3\C3 \96\DA\DC\19\99", ; module_uuid: 356de824-db0b-4b4e-b3c3-2096dadc1999
		i32 4, ; uint32_t entry_count (0x4)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module6_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module6_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.6_assembly_name, ; assembly_name: Xamarin.AndroidX.DrawerLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 6
	%struct.TypeMapModule {
		[16 x i8] c"&\D36\925\C0`B\98\C8[\02\C5\F6\01\18", ; module_uuid: 9236d326-c035-4260-98c8-5b02c5f60118
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module7_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module7_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.7_assembly_name, ; assembly_name: Xamarin.AndroidX.CursorAdapter
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 7
	%struct.TypeMapModule {
		[16 x i8] c"2\5C\C8\E0\97[mJ\94w\D5\FDD\BA\18R", ; module_uuid: e0c85c32-5b97-4a6d-9477-d5fd44ba1852
		i32 12, ; uint32_t entry_count (0xc)
		i32 6, ; uint32_t duplicate_count (0x6)
		ptr @module8_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module8_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.8_assembly_name, ; assembly_name: Xamarin.AndroidX.Activity
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 8
	%struct.TypeMapModule {
		[16 x i8] c"2\E4\C0\A4&&\A3B\BA.\D7\FC\AC9\C3!", ; module_uuid: a4c0e432-2626-42a3-ba2e-d7fcac39c321
		i32 5, ; uint32_t entry_count (0x5)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module9_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module9_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.9_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 9
	%struct.TypeMapModule {
		[16 x i8] c"3\F4\1E`\ABJ\B8J\B4\D7\EC~\D5\8BJE", ; module_uuid: 601ef433-4aab-4ab8-b4d7-ec7ed58b4a45
		i32 56, ; uint32_t entry_count (0x38)
		i32 19, ; uint32_t duplicate_count (0x13)
		ptr @module10_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module10_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.10_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 10
	%struct.TypeMapModule {
		[16 x i8] c"G(9\B461wM\A3\C8]9S\B1\E1A", ; module_uuid: b4392847-3136-4d77-a3c8-5d3953b1e141
		i32 3, ; uint32_t entry_count (0x3)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module11_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.11_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 11
	%struct.TypeMapModule {
		[16 x i8] c"Hd'r\06i\B9G\A6,\C5\C5\16\F0\A7\A8", ; module_uuid: 72276448-6906-47b9-a62c-c5c516f0a7a8
		i32 3, ; uint32_t entry_count (0x3)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module12_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module12_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.12_assembly_name, ; assembly_name: Xamarin.AndroidX.CoordinatorLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 12
	%struct.TypeMapModule {
		[16 x i8] c"N\BEIW\D6Y\9EN\AE\EB\05\02\22\5C\0A\D0", ; module_uuid: 5749be4e-59d6-4e9e-aeeb-0502225c0ad0
		i32 67, ; uint32_t entry_count (0x43)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module13_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module13_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.13_assembly_name, ; assembly_name: Microsoft.Maui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 13
	%struct.TypeMapModule {
		[16 x i8] c"S\5C\9F\13\FC\1C+K\8B<\01\84\0A\AEl\FD", ; module_uuid: 139f5c53-1cfc-4b2b-8b3c-01840aae6cfd
		i32 9, ; uint32_t entry_count (0x9)
		i32 5, ; uint32_t duplicate_count (0x5)
		ptr @module14_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module14_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.14_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 14
	%struct.TypeMapModule {
		[16 x i8] c"So\A1ig\00_J\A8}+n\ED\92*\1D", ; module_uuid: 69a16f53-0067-4a5f-a87d-2b6eed922a1d
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module15_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.15_assembly_name, ; assembly_name: Xamarin.AndroidX.Collection
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 15
	%struct.TypeMapModule {
		[16 x i8] c"W4\9E\D9\15\93~M\85x\EB\80\B3\F0\D8\A3", ; module_uuid: d99e3457-9315-4d7e-8578-eb80b3f0d8a3
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module16_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.16_assembly_name, ; assembly_name: Xamarin.AndroidX.CardView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 16
	%struct.TypeMapModule {
		[16 x i8] c"W\B7~Tt\D7\9EK\AE,n\0A\A7\AB\C6}", ; module_uuid: 547eb757-d774-4b9e-ae2c-6e0aa7abc67d
		i32 67, ; uint32_t entry_count (0x43)
		i32 25, ; uint32_t duplicate_count (0x19)
		ptr @module17_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module17_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.17_assembly_name, ; assembly_name: Xamarin.Google.Android.Material
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 17
	%struct.TypeMapModule {
		[16 x i8] c"`\B5<\B1hYIK\97\81\CB!\BAB<\FD", ; module_uuid: b13cb560-5968-4b49-9781-cb21ba423cfd
		i32 17, ; uint32_t entry_count (0x11)
		i32 6, ; uint32_t duplicate_count (0x6)
		ptr @module18_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module18_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.18_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 18
	%struct.TypeMapModule {
		[16 x i8] c"w\8Bq\FD\E6\B4\D1J\BC{\B6b\96\B6\0F\16", ; module_uuid: fd718b77-b4e6-4ad1-bc7b-b66296b60f16
		i32 3, ; uint32_t entry_count (0x3)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module19_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.19_assembly_name, ; assembly_name: Microsoft.Maui.Essentials
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 19
	%struct.TypeMapModule {
		[16 x i8] c"{%AB\89\CA\1DE\A6\FB9\99,W\06\EC", ; module_uuid: 4241257b-ca89-451d-a6fb-39992c5706ec
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module20_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.20_assembly_name, ; assembly_name: CapaUI-Maui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 20
	%struct.TypeMapModule {
		[16 x i8] c"\823\9Cg\ACb\1DA\AA\90\B0\DA\FF\D4\AD{", ; module_uuid: 679c3382-62ac-411d-aa90-b0daffd4ad7b
		i32 477, ; uint32_t entry_count (0x1dd)
		i32 180, ; uint32_t duplicate_count (0xb4)
		ptr @module21_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module21_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.21_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 21
	%struct.TypeMapModule {
		[16 x i8] c"\8A?\C3NJ\A7\04L\9A\EB\A0N0f\B4@", ; module_uuid: 4ec33f8a-a74a-4c04-9aeb-a04e3066b440
		i32 65, ; uint32_t entry_count (0x41)
		i32 23, ; uint32_t duplicate_count (0x17)
		ptr @module22_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module22_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.22_assembly_name, ; assembly_name: Xamarin.AndroidX.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 22
	%struct.TypeMapModule {
		[16 x i8] c"\8E\A2\1E\13\19f!A\85u\80^m\88\D5\F6", ; module_uuid: 131ea28e-6619-4121-8575-805e6d88d5f6
		i32 1, ; uint32_t entry_count (0x1)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module23_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.23_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 23
	%struct.TypeMapModule {
		[16 x i8] c"\8F\A4BE\BAqLE\B7\BE\83y\80\84;\1F", ; module_uuid: 4542a48f-71ba-454c-b7be-837980843b1f
		i32 19, ; uint32_t entry_count (0x13)
		i32 10, ; uint32_t duplicate_count (0xa)
		ptr @module24_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module24_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.24_assembly_name, ; assembly_name: Xamarin.AndroidX.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 24
	%struct.TypeMapModule {
		[16 x i8] c"\92\C6\82\DE\84LgD\AD\1An@F\DE8\B2", ; module_uuid: de82c692-4c84-4467-ad1a-6e4046de38b2
		i32 1, ; uint32_t entry_count (0x1)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module25_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module25_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.25_assembly_name, ; assembly_name: Xamarin.AndroidX.CustomView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 25
	%struct.TypeMapModule {
		[16 x i8] c"\B10\89\D1\97\E3\E0I\AE\E3\D6\5C\CF\05\22\CF", ; module_uuid: d18930b1-e397-49e0-aee3-d65ccf0522cf
		i32 4, ; uint32_t entry_count (0x4)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module26_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module26_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.26_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.UI
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 26
	%struct.TypeMapModule {
		[16 x i8] c"\BC\F5\A2`\F4\8F)G\99\9DR\C6f\E4\DF\EC", ; module_uuid: 60a2f5bc-8ff4-4729-999d-52c666e4dfec
		i32 5, ; uint32_t entry_count (0x5)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module27_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.27_assembly_name, ; assembly_name: Xamarin.AndroidX.Browser
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 27
	%struct.TypeMapModule {
		[16 x i8] c"\BE\AB\1B\0E\C9m\17N\BA\8E\CB\CFR\F9\00q", ; module_uuid: 0e1babbe-6dc9-4e17-ba8e-cbcf52f90071
		i32 6, ; uint32_t entry_count (0x6)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module28_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module28_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.28_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Runtime
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 28
	%struct.TypeMapModule {
		[16 x i8] c"\BF\04\A2\D7]0jL\95\CE\1Bx\C5\07`\AB", ; module_uuid: d7a204bf-305d-4c6a-95ce-1b78c50760ab
		i32 41, ; uint32_t entry_count (0x29)
		i32 21, ; uint32_t duplicate_count (0x15)
		ptr @module29_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module29_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.29_assembly_name, ; assembly_name: Xamarin.AndroidX.RecyclerView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 29
	%struct.TypeMapModule {
		[16 x i8] c"\CF\A3,\1E\AE\08fD\9En\E65?X\85S", ; module_uuid: 1e2ca3cf-08ae-4466-9e6e-e6353f588553
		i32 2, ; uint32_t entry_count (0x2)
		i32 1, ; uint32_t duplicate_count (0x1)
		ptr @module30_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module30_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.30_assembly_name, ; assembly_name: Xamarin.AndroidX.SavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 30
	%struct.TypeMapModule {
		[16 x i8] c"\D2;-b)\F3\E5C\94X\18\EE\E1\8D\07I", ; module_uuid: 622d3bd2-f329-43e5-9458-18eee18d0749
		i32 4, ; uint32_t entry_count (0x4)
		i32 2, ; uint32_t duplicate_count (0x2)
		ptr @module31_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module31_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.31_assembly_name, ; assembly_name: Xamarin.AndroidX.SwipeRefreshLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 31
	%struct.TypeMapModule {
		[16 x i8] c"\D6,s\F9m\00)C\AB\0C]\E3\FA\F7\01\EE", ; module_uuid: f9732cd6-006d-4329-ab0c-5de3faf701ee
		i32 5, ; uint32_t entry_count (0x5)
		i32 3, ; uint32_t duplicate_count (0x3)
		ptr @module32_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module32_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.32_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager2
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 32
	%struct.TypeMapModule {
		[16 x i8] c"\E4\05n\8B4\AB\C8@\96*\D0e2\9D>)", ; module_uuid: 8b6e05e4-ab34-40c8-962a-d065329d3e29
		i32 4, ; uint32_t entry_count (0x4)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module33_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.33_assembly_name, ; assembly_name: Microsoft.Identity.Client
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 33
	%struct.TypeMapModule {
		[16 x i8] c"\F6\CE\C0\BDF\5CXL\86xOS\A1\C3-\C5", ; module_uuid: bdc0cef6-5c46-4c58-8678-4f53a1c32dc5
		i32 2, ; uint32_t entry_count (0x2)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module34_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.34_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat.AppCompatResources
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	}, ; 34
	%struct.TypeMapModule {
		[16 x i8] c"\F8Y\ECa\1A\C4\EDL\B8\CB\95\1B\00^\9F\AA", ; module_uuid: 61ec59f8-c41a-4ced-b8cb-951b005e9faa
		i32 106, ; uint32_t entry_count (0x6a)
		i32 0, ; uint32_t duplicate_count (0x0)
		ptr @module35_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.35_assembly_name, ; assembly_name: Microsoft.Maui.Controls
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width (0x0)
		ptr null; uint8_t* java_map (0x0)
	} ; 35
], align 4

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [1022 x i32] [
	i32 4689355, ; 0: 0x478dcb => android/animation/Animator$AnimatorListener
	i32 5024575, ; 1: 0x4cab3f => crc6452ffdc5b34af3a0f/MauiSwipeView
	i32 9160146, ; 2: 0x8bc5d2 => android/provider/Settings$Secure
	i32 12341354, ; 3: 0xbc506a => java/lang/Object
	i32 12855812, ; 4: 0xc42a04 => android/text/style/LineHeightSpan
	i32 14973177, ; 5: 0xe478f9 => androidx/recyclerview/widget/LinearLayoutManager
	i32 17702982, ; 6: 0x10e2046 => androidx/fragment/app/Fragment
	i32 29653966, ; 7: 0x1c47bce => android/widget/ListAdapter
	i32 32078366, ; 8: 0x1e97a1e => java/security/cert/Certificate
	i32 34115578, ; 9: 0x2088ffa => android/content/pm/PackageItemInfo
	i32 40630473, ; 10: 0x26bf8c9 => mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor
	i32 47434699, ; 11: 0x2d3cbcb => mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor
	i32 68779952, ; 12: 0x4197fb0 => crc6452ffdc5b34af3a0f/ScopedFragment
	i32 69893395, ; 13: 0x42a7d13 => androidx/core/view/WindowInsetsCompat
	i32 74282880, ; 14: 0x46d7780 => android/view/ViewGroup
	i32 83439307, ; 15: 0x4f92ecb => androidx/recyclerview/widget/RecyclerView$OnItemTouchListener
	i32 88472501, ; 16: 0x545fbb5 => com/google/android/material/shape/ShapeAppearanceModel$Builder
	i32 101184921, ; 17: 0x607f599 => mono/android/app/DatePickerDialog_OnDateSetListenerImplementor
	i32 102292193, ; 18: 0x618dae1 => androidx/appcompat/widget/DecorToolbar
	i32 107386019, ; 19: 0x66694a3 => androidx/navigation/NavigatorProvider
	i32 117045218, ; 20: 0x6f9f7e2 => android/graphics/BlurMaskFilter
	i32 118977103, ; 21: 0x717724f => android/util/DisplayMetrics
	i32 119600321, ; 22: 0x720f4c1 => com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator
	i32 127856878, ; 23: 0x79ef0ee => androidx/fragment/app/strictmode/FragmentStrictMode$Policy
	i32 129006122, ; 24: 0x7b07a2a => android/graphics/PorterDuffXfermode
	i32 131666100, ; 25: 0x7d910b4 => crc6488302ad6e9e4df1a/ImageLoaderCallback
	i32 133089372, ; 26: 0x7eec85c => androidx/activity/OnBackPressedCallback
	i32 137623074, ; 27: 0x833f622 => crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged
	i32 138171443, ; 28: 0x83c5433 => javax/net/ssl/SSLSessionContext
	i32 139280357, ; 29: 0x84d3fe5 => android/view/KeyEvent
	i32 144028150, ; 30: 0x895b1f6 => android/text/style/SubscriptSpan
	i32 148505617, ; 31: 0x8da0411 => android/text/GetChars
	i32 149638983, ; 32: 0x8eb4f47 => crc64338477404e88479c/MultiPageFragmentStateAdapter_1
	i32 150585013, ; 33: 0x8f9beb5 => androidx/activity/contextaware/OnContextAvailableListener
	i32 157158473, ; 34: 0x95e0c49 => crc649ff77a65592e7d55/TabbedPageManager_Listeners
	i32 158254429, ; 35: 0x96ec55d => mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor
	i32 159483247, ; 36: 0x981856f => androidx/activity/result/contract/ActivityResultContract
	i32 162995629, ; 37: 0x9b71dad => crc645d80431ce5f73f11/StartSnapHelper
	i32 166208029, ; 38: 0x9e8221d => java/text/DecimalFormat
	i32 166266226, ; 39: 0x9e90572 => mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor
	i32 166929542, ; 40: 0x9f32486 => crc6452ffdc5b34af3a0f/ContainerView
	i32 176697843, ; 41: 0xa8831f3 => java/lang/IllegalArgumentException
	i32 178346187, ; 42: 0xaa158cb => android/window/OnBackInvokedCallback
	i32 183151336, ; 43: 0xaeaaae8 => android/view/OrientationEventListener
	i32 192862028, ; 44: 0xb7ed74c => com/google/android/material/button/MaterialButton$OnCheckedChangeListener
	i32 194118622, ; 45: 0xb9203de => crc649ff77a65592e7d55/TabbedPageManager_TempView
	i32 223811268, ; 46: 0xd5716c4 => com/microsoft/maui/PlatformInterop
	i32 226420815, ; 47: 0xd7ee84f => androidx/navigation/NavDeepLink
	i32 230260556, ; 48: 0xdb97f4c => crc64e1fb321c08285b90/ListViewRenderer
	i32 234509239, ; 49: 0xdfa53b7 => com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior
	i32 234987347, ; 50: 0xe019f53 => androidx/lifecycle/MutableLiveData
	i32 250064775, ; 51: 0xee7af87 => androidx/navigation/NavHostController
	i32 251666975, ; 52: 0xf00221f => android/widget/DatePicker
	i32 253705836, ; 53: 0xf1f3e6c => android/graphics/RadialGradient
	i32 257310750, ; 54: 0xf56401e => androidx/navigation/Navigator
	i32 262868253, ; 55: 0xfab0d1d => android/view/WindowInsets
	i32 269199815, ; 56: 0x100ba9c7 => javax/security/cert/X509Certificate
	i32 272471520, ; 57: 0x103d95e0 => crc64e1fb321c08285b90/ViewRenderer_2
	i32 275860237, ; 58: 0x10714b0d => com/google/android/material/appbar/AppBarLayout$LayoutParams
	i32 277940852, ; 59: 0x10910a74 => android/view/ViewGroup$OnHierarchyChangeListener
	i32 278110854, ; 60: 0x1093a286 => crc64e1fb321c08285b90/EntryCellView
	i32 279693177, ; 61: 0x10abc779 => android/content/SharedPreferences$Editor
	i32 286687917, ; 62: 0x111682ad => crc645d80431ce5f73f11/PositionalSmoothScroller
	i32 292930755, ; 63: 0x1175c4c3 => androidx/loader/content/Loader$OnLoadCompleteListener
	i32 293659125, ; 64: 0x1180e1f5 => crc6452ffdc5b34af3a0f/MauiShapeView
	i32 295832610, ; 65: 0x11a20c22 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer
	i32 298403376, ; 66: 0x11c94630 => mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor
	i32 299354407, ; 67: 0x11d7c927 => androidx/savedstate/SavedStateRegistry
	i32 305321328, ; 68: 0x1232d570 => crc64e1fb321c08285b90/CellRenderer_RendererHolder
	i32 307048059, ; 69: 0x124d2e7b => android/view/MenuItem$OnActionExpandListener
	i32 317135051, ; 70: 0x12e718cb => android/animation/Animator
	i32 337519181, ; 71: 0x141e224d => android/accounts/AuthenticatorDescription
	i32 338804407, ; 72: 0x1431beb7 => com/google/android/material/appbar/CollapsingToolbarLayout
	i32 343514767, ; 73: 0x14799e8f => android/widget/AbsListView$OnScrollListener
	i32 358279401, ; 74: 0x155ae8e9 => android/text/style/CharacterStyle
	i32 360511355, ; 75: 0x157cf77b => androidx/appcompat/widget/AppCompatRadioButton
	i32 366534601, ; 76: 0x15d8dfc9 => android/view/ViewGroup$LayoutParams
	i32 372768500, ; 77: 0x1637fef4 => crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1
	i32 390669342, ; 78: 0x1749241e => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer
	i32 393371378, ; 79: 0x17725ef2 => mono/java/lang/RunnableImplementor
	i32 396570040, ; 80: 0x17a32db8 => androidx/lifecycle/LifecycleOwner
	i32 398599711, ; 81: 0x17c2261f => android/content/pm/ResolveInfo
	i32 399364059, ; 82: 0x17cdcfdb => android/animation/TimeInterpolator
	i32 412771173, ; 83: 0x189a6365 => java/lang/Long
	i32 416732807, ; 84: 0x18d6d687 => android/util/StateSet
	i32 417475351, ; 85: 0x18e22b17 => kotlin/sequences/Sequence
	i32 419359493, ; 86: 0x18feeb05 => java/util/Iterator
	i32 420482824, ; 87: 0x19100f08 => java/net/ConnectException
	i32 422935000, ; 88: 0x193579d8 => androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate
	i32 424391913, ; 89: 0x194bb4e9 => java/lang/ClassLoader
	i32 425386803, ; 90: 0x195ae333 => mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor
	i32 427836927, ; 91: 0x198045ff => androidx/fragment/app/FragmentResultListener
	i32 434958167, ; 92: 0x19ecef57 => android/runtime/XmlReaderPullParser
	i32 436934201, ; 93: 0x1a0b1639 => android/content/DialogInterface$OnShowListener
	i32 437664463, ; 94: 0x1a163acf => android/app/UiModeManager
	i32 441688866, ; 95: 0x1a53a322 => androidx/fragment/app/FragmentFactory
	i32 441749763, ; 96: 0x1a549103 => androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener
	i32 445582341, ; 97: 0x1a8f0c05 => androidx/recyclerview/widget/RecyclerView$AdapterDataObserver
	i32 449951175, ; 98: 0x1ad1b5c7 => androidx/recyclerview/widget/OrientationHelper
	i32 458110862, ; 99: 0x1b4e378e => crc6452ffdc5b34af3a0f/MauiPicker
	i32 463378833, ; 100: 0x1b9e9991 => com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener
	i32 464188442, ; 101: 0x1baaf41a => crc6452ffdc5b34af3a0f/MauiStepper
	i32 484132915, ; 102: 0x1cdb4833 => androidx/recyclerview/widget/RecyclerView$LayoutManager
	i32 490619983, ; 103: 0x1d3e444f => java/util/concurrent/TimeUnit
	i32 490744162, ; 104: 0x1d402962 => crc645d80431ce5f73f11/NongreedySnapHelper
	i32 496581258, ; 105: 0x1d993a8a => crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector
	i32 501733478, ; 106: 0x1de7d866 => android/view/ViewGroup$MarginLayoutParams
	i32 512853114, ; 107: 0x1e91847a => crc64e1fb321c08285b90/FrameRenderer
	i32 517025718, ; 108: 0x1ed12fb6 => android/view/ViewParent
	i32 517456986, ; 109: 0x1ed7c45a => androidx/recyclerview/widget/RecyclerView$ViewHolder
	i32 517668398, ; 110: 0x1edafe2e => android/os/Parcel
	i32 521485973, ; 111: 0x1f153e95 => androidx/lifecycle/ViewModelProvider$Factory$Companion
	i32 523581214, ; 112: 0x1f35371e => android/app/SearchableInfo
	i32 531198748, ; 113: 0x1fa9731c => mono/android/runtime/OutputStreamAdapter
	i32 553905247, ; 114: 0x2103ec5f => android/graphics/drawable/ColorDrawable
	i32 554651769, ; 115: 0x210f5079 => android/opengl/Matrix
	i32 568462196, ; 116: 0x21e20b74 => android/content/DialogInterface$OnDismissListener
	i32 571321220, ; 117: 0x220dab84 => android/widget/SectionIndexer
	i32 572697099, ; 118: 0x2222aa0b => crc64e1fb321c08285b90/GroupedListViewAdapter
	i32 581097368, ; 119: 0x22a2d798 => java/nio/channels/FileChannel
	i32 582301329, ; 120: 0x22b53691 => crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView
	i32 584201455, ; 121: 0x22d234ef => android/widget/Filter
	i32 584231583, ; 122: 0x22d2aa9f => java/lang/IllegalStateException
	i32 584387757, ; 123: 0x22d50cad => com/google/android/material/shape/MaterialShapeDrawable
	i32 585466394, ; 124: 0x22e5821a => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener
	i32 587182450, ; 125: 0x22ffb172 => androidx/activity/ComponentActivity
	i32 590702782, ; 126: 0x233568be => android/view/ViewTreeObserver
	i32 590874706, ; 127: 0x23380852 => crc645d80431ce5f73f11/StartSingleSnapHelper
	i32 591810476, ; 128: 0x23464fac => android/os/Bundle
	i32 596978812, ; 129: 0x23952c7c => crc64338477404e88479c/ColorChangeRevealDrawable
	i32 607365982, ; 130: 0x2433ab5e => android/view/animation/LinearInterpolator
	i32 610256159, ; 131: 0x245fc51f => androidx/core/view/accessibility/AccessibilityViewCommand
	i32 616578009, ; 132: 0x24c03bd9 => mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor
	i32 617948154, ; 133: 0x24d523fa => androidx/appcompat/app/ActionBar$OnNavigationListener
	i32 619060219, ; 134: 0x24e61bfb => java/net/URL
	i32 621710704, ; 135: 0x250e8d70 => crc6452ffdc5b34af3a0f/MauiSearchView
	i32 621831351, ; 136: 0x251064b7 => crc64338477404e88479c/GenericMenuClickListener
	i32 624430410, ; 137: 0x25380d4a => android/view/View$DragShadowBuilder
	i32 625843168, ; 138: 0x254d9be0 => androidx/appcompat/app/AppCompatActivity
	i32 630387043, ; 139: 0x2592f163 => android/text/method/KeyListener
	i32 632089155, ; 140: 0x25acea43 => android/app/TimePickerDialog
	i32 636654293, ; 141: 0x25f292d5 => com/google/android/material/internal/ScrimInsetsFrameLayout
	i32 638514975, ; 142: 0x260ef71f => androidx/recyclerview/widget/RecyclerView$ViewCacheExtension
	i32 638717086, ; 143: 0x26120c9e => android/view/GestureDetector$OnGestureListener
	i32 644006025, ; 144: 0x2662c089 => androidx/fragment/app/FragmentContainer
	i32 645227752, ; 145: 0x267564e8 => androidx/loader/content/Loader
	i32 655473041, ; 146: 0x2711b991 => crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener
	i32 655837073, ; 147: 0x27174791 => androidx/fragment/app/FragmentTransaction
	i32 657696663, ; 148: 0x2733a797 => androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener
	i32 677480649, ; 149: 0x286188c9 => java/util/concurrent/atomic/AtomicReference
	i32 689512911, ; 150: 0x291921cf => androidx/appcompat/widget/Toolbar
	i32 689988683, ; 151: 0x2920644b => androidx/core/view/OnApplyWindowInsetsListener
	i32 692920175, ; 152: 0x294d1f6f => java/util/ArrayList
	i32 693212793, ; 153: 0x29519679 => crc64a096dc44ad241142/PlatformTicker_DurationScaleListener
	i32 700971531, ; 154: 0x29c7fa0b => mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor
	i32 702158320, ; 155: 0x29da15f0 => android/graphics/drawable/GradientDrawable$Orientation
	i32 711999670, ; 156: 0x2a7040b6 => crc645d80431ce5f73f11/ItemsViewAdapter_2
	i32 722182957, ; 157: 0x2b0ba32d => crc64338477404e88479c/ModalNavigationManager_ModalContainer_ModalFragment
	i32 723803885, ; 158: 0x2b245eed => crc645d80431ce5f73f11/CenterSnapHelper
	i32 736851491, ; 159: 0x2beb7623 => androidx/appcompat/widget/SearchView
	i32 740006971, ; 160: 0x2c1b9c3b => androidx/core/text/PrecomputedTextCompat
	i32 741095218, ; 161: 0x2c2c3732 => android/widget/RelativeLayout
	i32 744068251, ; 162: 0x2c59949b => android/graphics/Paint$Join
	i32 745787198, ; 163: 0x2c73cf3e => android/text/style/SuperscriptSpan
	i32 762631195, ; 164: 0x2d74d41b => com/google/android/material/shape/ShapePathModel
	i32 763716580, ; 165: 0x2d8563e4 => xamarin/android/net/ServerCertificateCustomValidator_TrustManager
	i32 763971624, ; 166: 0x2d894828 => com/microsoft/maui/PlatformFontSpan
	i32 772715691, ; 167: 0x2e0eb4ab => mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor
	i32 780408360, ; 168: 0x2e841628 => java/lang/CharSequence
	i32 780987551, ; 169: 0x2e8cec9f => java/io/PrintWriter
	i32 786342354, ; 170: 0x2edea1d2 => android/graphics/drawable/PaintDrawable
	i32 787885952, ; 171: 0x2ef62f80 => mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor
	i32 788727041, ; 172: 0x2f030501 => crc645d80431ce5f73f11/StructuredItemsViewAdapter_2
	i32 793918146, ; 173: 0x2f523ac2 => java/lang/Integer
	i32 798832452, ; 174: 0x2f9d3744 => androidx/core/view/WindowInsetsAnimationCompat$Callback
	i32 805498755, ; 175: 0x3002ef83 => android/os/IBinder$DeathRecipient
	i32 806800039, ; 176: 0x3016caa7 => java/lang/Thread
	i32 806884132, ; 177: 0x30181324 => java/text/DecimalFormatSymbols
	i32 810002833, ; 178: 0x3047a991 => android/animation/ValueAnimator$DurationScaleChangeListener
	i32 815012768, ; 179: 0x30941ba0 => androidx/core/internal/view/SupportMenuItem
	i32 823991243, ; 180: 0x311d1bcb => androidx/appcompat/graphics/drawable/DrawerArrowDrawable
	i32 829372919, ; 181: 0x316f39f7 => crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment
	i32 829690307, ; 182: 0x317411c3 => androidx/core/widget/CompoundButtonCompat
	i32 838682992, ; 183: 0x31fd4970 => java/lang/NullPointerException
	i32 843513459, ; 184: 0x3246fe73 => kotlin/jvm/internal/DefaultConstructorMarker
	i32 845998566, ; 185: 0x326ce9e6 => android/widget/RemoteViews
	i32 850852390, ; 186: 0x32b6fa26 => crc6452ffdc5b34af3a0f/LayoutViewGroup
	i32 857458217, ; 187: 0x331bc629 => android/content/res/AssetManager
	i32 861765628, ; 188: 0x335d7ffc => com/google/android/material/navigation/NavigationBarItemView
	i32 864882745, ; 189: 0x338d1039 => android/graphics/Bitmap$Config
	i32 868122293, ; 190: 0x33be7eb5 => mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor
	i32 876646173, ; 191: 0x34408f1d => javax/net/ssl/TrustManager
	i32 885223365, ; 192: 0x34c36fc5 => android/content/ContentResolver
	i32 893363610, ; 193: 0x353fa59a => java/lang/Short
	i32 895273226, ; 194: 0x355cc90a => crc645d80431ce5f73f11/GridLayoutSpanSizeLookup
	i32 899551522, ; 195: 0x359e1122 => mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor
	i32 906034180, ; 196: 0x3600fc04 => android/database/Cursor
	i32 907462104, ; 197: 0x3616c5d8 => androidx/navigation/ui/NavigationUI
	i32 919133536, ; 198: 0x36c8dd60 => crc64338477404e88479c/DragAndDropGestureHandler
	i32 919189247, ; 199: 0x36c9b6ff => mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor
	i32 928674904, ; 200: 0x375a7458 => android/graphics/BitmapFactory
	i32 935434236, ; 201: 0x37c197fc => androidx/viewpager/widget/ViewPager$PageTransformer
	i32 937831689, ; 202: 0x37e62d09 => androidx/core/view/ViewPropertyAnimatorCompat
	i32 937899202, ; 203: 0x37e734c2 => com/google/android/material/navigation/NavigationBarPresenter
	i32 942722178, ; 204: 0x3830cc82 => crc6452ffdc5b34af3a0f/MauiWebChromeClient
	i32 953679746, ; 205: 0x38d7ff82 => androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry
	i32 962536581, ; 206: 0x395f2485 => kotlinx/coroutines/flow/StateFlow
	i32 964779174, ; 207: 0x39815ca6 => android/text/TextUtils
	i32 967170543, ; 208: 0x39a5d9ef => android/text/TextPaint
	i32 973696562, ; 209: 0x3a096e32 => com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer
	i32 977860950, ; 210: 0x3a48f956 => androidx/appcompat/app/ActionBarDrawerToggle$Delegate
	i32 981409587, ; 211: 0x3a7f1f33 => crc64338477404e88479c/GradientStrokeDrawable
	i32 982326989, ; 212: 0x3a8d1ecd => android/widget/HorizontalScrollView
	i32 982631821, ; 213: 0x3a91c58d => androidx/lifecycle/LiveData
	i32 984605620, ; 214: 0x3aafe3b4 => android/graphics/PointF
	i32 984757927, ; 215: 0x3ab236a7 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor
	i32 986059584, ; 216: 0x3ac61340 => androidx/core/content/ContextCompat
	i32 988965965, ; 217: 0x3af26c4d => android/text/method/BaseKeyListener
	i32 996699600, ; 218: 0x3b686dd0 => java/io/FileDescriptor
	i32 996847286, ; 219: 0x3b6aaeb6 => androidx/lifecycle/Observer
	i32 1013410179, ; 220: 0x3c676983 => com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState
	i32 1016711248, ; 221: 0x3c99c850 => androidx/recyclerview/widget/ItemTouchHelper
	i32 1018791985, ; 222: 0x3cb98831 => android/widget/EditText
	i32 1020914866, ; 223: 0x3cd9ecb2 => androidx/drawerlayout/widget/DrawerLayout$LayoutParams
	i32 1026417919, ; 224: 0x3d2de4ff => android/view/WindowMetrics
	i32 1026507328, ; 225: 0x3d2f4240 => java/net/SocketAddress
	i32 1030707578, ; 226: 0x3d6f597a => android/database/DataSetObserver
	i32 1035992969, ; 227: 0x3dbfff89 => android/content/res/Resources
	i32 1046468555, ; 228: 0x3e5fd7cb => microsoft/maui/platform/MauiNavHostFragment
	i32 1046511593, ; 229: 0x3e607fe9 => android/text/InputFilter$LengthFilter
	i32 1046940936, ; 230: 0x3e670d08 => androidx/fragment/app/FragmentContainerView
	i32 1048070238, ; 231: 0x3e78485e => android/view/GestureDetector$OnDoubleTapListener
	i32 1054689658, ; 232: 0x3edd497a => android/graphics/drawable/shapes/OvalShape
	i32 1055644286, ; 233: 0x3eebda7e => android/widget/AbsoluteLayout
	i32 1059653424, ; 234: 0x3f290730 => androidx/viewpager/widget/ViewPager
	i32 1068071799, ; 235: 0x3fa97b77 => crc640ec207abc449b2ca/CustomFrameLayout
	i32 1070459310, ; 236: 0x3fcde9ae => android/database/ContentObserver
	i32 1070496012, ; 237: 0x3fce790c => androidx/navigation/NavDeepLinkBuilder
	i32 1073696643, ; 238: 0x3fff4f83 => mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor
	i32 1075342899, ; 239: 0x40186e33 => com/google/android/material/tabs/TabLayout$TabView
	i32 1077629184, ; 240: 0x403b5100 => java/util/function/Consumer
	i32 1082318343, ; 241: 0x4082de07 => androidx/recyclerview/widget/RecyclerView$ItemDecoration
	i32 1083504196, ; 242: 0x4094f644 => android/accounts/AccountManagerFuture
	i32 1084013811, ; 243: 0x409cbcf3 => androidx/core/view/OnReceiveContentListener
	i32 1090772272, ; 244: 0x4103dd30 => androidx/navigation/NavController
	i32 1090846561, ; 245: 0x4104ff61 => xamarin/android/net/ServerCertificateCustomValidator_TrustManager_FakeSSLSession
	i32 1090939588, ; 246: 0x41066ac4 => javax/net/ssl/KeyManagerFactory
	i32 1092939402, ; 247: 0x4124ee8a => crc64e1fb321c08285b90/ListViewRenderer_Container
	i32 1100963717, ; 248: 0x419f5f85 => android/widget/TextView$OnEditorActionListener
	i32 1101713299, ; 249: 0x41aacf93 => mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor
	i32 1101833833, ; 250: 0x41aca669 => mono/android/view/View_OnFocusChangeListenerImplementor
	i32 1102556300, ; 251: 0x41b7ac8c => android/provider/Settings$NameValueTable
	i32 1102620299, ; 252: 0x41b8a68b => android/text/Layout$Alignment
	i32 1107181286, ; 253: 0x41fe3ee6 => androidx/appcompat/app/ActionBar$OnMenuVisibilityListener
	i32 1107287745, ; 254: 0x41ffdec1 => androidx/activity/result/ActivityResultLauncher
	i32 1108415989, ; 255: 0x421115f5 => android/widget/AdapterView$OnItemLongClickListener
	i32 1117343714, ; 256: 0x42994fe2 => androidx/drawerlayout/widget/DrawerLayout
	i32 1124250747, ; 257: 0x4302b47b => android/accounts/AccountManager
	i32 1127862102, ; 258: 0x4339cf56 => androidx/navigation/ui/AppBarConfiguration
	i32 1134314180, ; 259: 0x439c42c4 => androidx/core/view/ViewPropertyAnimatorListener
	i32 1139859576, ; 260: 0x43f0e078 => android/text/StaticLayout$Builder
	i32 1142011573, ; 261: 0x4411b6b5 => java/util/Enumeration
	i32 1145185992, ; 262: 0x444226c8 => crc640ec207abc449b2ca/ShellFragmentContainer
	i32 1146395494, ; 263: 0x44549b66 => android/widget/RadioButton
	i32 1148330824, ; 264: 0x44722348 => crc64338477404e88479c/PointerGestureHandler
	i32 1174657824, ; 265: 0x4603db20 => crc64e97e4c875a74b65f/MainApplication
	i32 1178417755, ; 266: 0x463d3a5b => com/google/android/material/bottomnavigation/BottomNavigationMenuView
	i32 1179280881, ; 267: 0x464a65f1 => crc64e1fb321c08285b90/TableViewRenderer
	i32 1180952486, ; 268: 0x4663e7a6 => crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener
	i32 1180998696, ; 269: 0x46649c28 => androidx/appcompat/widget/AppCompatAutoCompleteTextView
	i32 1183226258, ; 270: 0x46869992 => android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo
	i32 1185273701, ; 271: 0x46a5d765 => android/view/SubMenu
	i32 1194275052, ; 272: 0x472f30ec => androidx/core/view/accessibility/AccessibilityWindowInfoCompat
	i32 1194549417, ; 273: 0x473360a9 => crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper
	i32 1196063310, ; 274: 0x474a7a4e => java/lang/Appendable
	i32 1198549944, ; 275: 0x47706bb8 => mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor
	i32 1202492029, ; 276: 0x47ac927d => android/text/style/StyleSpan
	i32 1205083900, ; 277: 0x47d41efc => android/animation/ValueAnimator
	i32 1212684324, ; 278: 0x48481824 => android/app/DatePickerDialog
	i32 1213250374, ; 279: 0x4850bb46 => android/graphics/Xfermode
	i32 1219897870, ; 280: 0x48b62a0e => crc640ec207abc449b2ca/ShellFlyoutRenderer
	i32 1221453854, ; 281: 0x48cde81e => crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper
	i32 1224298156, ; 282: 0x48f94eac => crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver
	i32 1227075600, ; 283: 0x4923b010 => javax/security/cert/Certificate
	i32 1250909264, ; 284: 0x4a8f5c50 => com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener
	i32 1253784686, ; 285: 0x4abb3c6e => androidx/core/app/TaskStackBuilder
	i32 1258478866, ; 286: 0x4b02dd12 => androidx/appcompat/view/ActionMode$Callback
	i32 1265348827, ; 287: 0x4b6bb0db => androidx/coordinatorlayout/widget/CoordinatorLayout
	i32 1270186925, ; 288: 0x4bb583ad => android/view/Window$Callback
	i32 1270561450, ; 289: 0x4bbb3aaa => java/net/SocketTimeoutException
	i32 1275619756, ; 290: 0x4c0869ac => androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener
	i32 1281062668, ; 291: 0x4c5b770c => android/widget/SeekBar$OnSeekBarChangeListener
	i32 1286921383, ; 292: 0x4cb4dca7 => android/widget/Filter$FilterResults
	i32 1288979257, ; 293: 0x4cd44339 => kotlin/jvm/functions/Function2
	i32 1289639087, ; 294: 0x4cde54af => crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener
	i32 1293030742, ; 295: 0x4d121556 => com/google/android/material/appbar/HeaderBehavior
	i32 1298454265, ; 296: 0x4d64d6f9 => java/lang/Throwable
	i32 1301914322, ; 297: 0x4d99a2d2 => androidx/recyclerview/widget/RecyclerView$SmoothScroller
	i32 1304466969, ; 298: 0x4dc09619 => androidx/core/view/MenuProvider
	i32 1306150327, ; 299: 0x4dda45b7 => crc6488302ad6e9e4df1a/MauiApplication
	i32 1307354973, ; 300: 0x4deca75d => android/os/Binder
	i32 1308517918, ; 301: 0x4dfe661e => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener
	i32 1314998831, ; 302: 0x4e614a2f => androidx/appcompat/app/AppCompatCallback
	i32 1318092535, ; 303: 0x4e907ef7 => android/widget/Filterable
	i32 1323697755, ; 304: 0x4ee6065b => javax/net/ssl/SSLContext
	i32 1330071955, ; 305: 0x4f474993 => androidx/recyclerview/widget/RecyclerView$RecycledViewPool
	i32 1332253635, ; 306: 0x4f6893c3 => crc640ec207abc449b2ca/ScrollLayoutManager
	i32 1335098580, ; 307: 0x4f93fcd4 => java/util/Collection
	i32 1336254343, ; 308: 0x4fa59f87 => com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback
	i32 1336879845, ; 309: 0x4faf2ae5 => androidx/core/os/LocaleListCompat
	i32 1340347874, ; 310: 0x4fe415e2 => android/graphics/Paint
	i32 1345123498, ; 311: 0x502cf4aa => androidx/navigation/fragment/FragmentNavigator
	i32 1352385505, ; 312: 0x509bc3e1 => androidx/appcompat/view/menu/MenuPresenter
	i32 1353632159, ; 313: 0x50aec99f => crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling
	i32 1362595161, ; 314: 0x51378d59 => androidx/appcompat/widget/Toolbar$LayoutParams
	i32 1368421702, ; 315: 0x51907546 => java/lang/ClassCastException
	i32 1370891736, ; 316: 0x51b625d8 => android/graphics/PorterDuff$Mode
	i32 1373547703, ; 317: 0x51deacb7 => androidx/recyclerview/widget/RecyclerView$RecyclerListener
	i32 1373631042, ; 318: 0x51dff242 => javax/net/ssl/KeyManager
	i32 1374692843, ; 319: 0x51f025eb => androidx/core/util/Pair
	i32 1383547335, ; 320: 0x527741c7 => android/os/Message
	i32 1384844960, ; 321: 0x528b0ea0 => androidx/lifecycle/SavedStateHandle
	i32 1386757446, ; 322: 0x52a83d46 => android/content/ComponentName
	i32 1396578145, ; 323: 0x533e1761 => mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor
	i32 1397281529, ; 324: 0x5348d2f9 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener
	i32 1397639547, ; 325: 0x534e497b => crc640ec207abc449b2ca/ContainerView
	i32 1415978247, ; 326: 0x54661d07 => android/content/pm/ApplicationInfo
	i32 1421189158, ; 327: 0x54b5a026 => androidx/recyclerview/widget/RecyclerView$LayoutParams
	i32 1425790689, ; 328: 0x54fbd6e1 => java/lang/SecurityException
	i32 1428048664, ; 329: 0x551e4b18 => java/net/HttpURLConnection
	i32 1429796945, ; 330: 0x5538f851 => android/graphics/RectF
	i32 1433059198, ; 331: 0x556abf7e => android/view/ViewManager
	i32 1436098349, ; 332: 0x55991f2d => crc645d80431ce5f73f11/RecyclerViewScrollListener_2
	i32 1438182722, ; 333: 0x55b8ed42 => androidx/appcompat/view/menu/MenuView
	i32 1438762315, ; 334: 0x55c1c54b => android/view/View$OnAttachStateChangeListener
	i32 1442348706, ; 335: 0x55f87ea2 => java/util/function/Predicate
	i32 1443275372, ; 336: 0x5606a26c => crc64ba438d8f48cf7e75/ActivityLifecycleContextListener
	i32 1447309214, ; 337: 0x56442f9e => android/widget/LinearLayout$LayoutParams
	i32 1448438974, ; 338: 0x56556cbe => android/view/animation/AccelerateInterpolator
	i32 1452142283, ; 339: 0x568deecb => crc64338477404e88479c/TapAndPanGestureDetector
	i32 1453454006, ; 340: 0x56a1f2b6 => com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy
	i32 1457311873, ; 341: 0x56dcd081 => mono/android/content/DialogInterface_OnCancelListenerImplementor
	i32 1457582199, ; 342: 0x56e0f077 => android/text/SpannableStringInternal
	i32 1459844378, ; 343: 0x5703751a => android/widget/ProgressBar
	i32 1464522999, ; 344: 0x574ad8f7 => crc640ec207abc449b2ca/ShellToolbarTracker
	i32 1468591223, ; 345: 0x5788ec77 => androidx/core/view/AccessibilityDelegateCompat
	i32 1474225881, ; 346: 0x57dee6d9 => android/view/animation/AnimationUtils
	i32 1475682991, ; 347: 0x57f522af => java/util/HashMap
	i32 1476293262, ; 348: 0x57fe728e => javax/security/auth/Subject
	i32 1481014756, ; 349: 0x58467de4 => android/graphics/drawable/Animatable
	i32 1485707030, ; 350: 0x588e1716 => android/view/View$OnHoverListener
	i32 1489594546, ; 351: 0x58c968b2 => java/nio/channels/spi/AbstractInterruptibleChannel
	i32 1492815417, ; 352: 0x58fa8e39 => java/util/concurrent/Executor
	i32 1493086679, ; 353: 0x58feb1d7 => androidx/appcompat/view/menu/MenuPresenter$Callback
	i32 1495575583, ; 354: 0x5924ac1f => crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener
	i32 1497029436, ; 355: 0x593adb3c => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor
	i32 1503081372, ; 356: 0x5997339c => androidx/core/view/WindowInsetsCompat$Type
	i32 1506774891, ; 357: 0x59cf8f6b => android/widget/Button
	i32 1509992539, ; 358: 0x5a00a85b => androidx/core/text/PrecomputedTextCompat$Params
	i32 1510743238, ; 359: 0x5a0c1cc6 => crc6452ffdc5b34af3a0f/ViewFragment
	i32 1523447213, ; 360: 0x5acdf5ad => androidx/viewpager2/widget/ViewPager2$PageTransformer
	i32 1544613420, ; 361: 0x5c10ee2c => java/io/File
	i32 1548306256, ; 362: 0x5c494750 => android/view/WindowManager$LayoutParams
	i32 1553655567, ; 363: 0x5c9ae70f => android/graphics/LinearGradient
	i32 1565919336, ; 364: 0x5d560868 => androidx/lifecycle/viewmodel/CreationExtras$Key
	i32 1571054057, ; 365: 0x5da461e9 => crc64b5e713d400f589b7/LinearGradientShaderFactory
	i32 1572959512, ; 366: 0x5dc17518 => android/widget/AutoCompleteTextView
	i32 1573833883, ; 367: 0x5dcecc9b => android/app/AlertDialog
	i32 1581882681, ; 368: 0x5e499d39 => mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor
	i32 1584672329, ; 369: 0x5e742e49 => android/view/Display
	i32 1586851388, ; 370: 0x5e956e3c => android/os/Handler
	i32 1592353641, ; 371: 0x5ee96369 => androidx/navigation/NavOptions
	i32 1612253825, ; 372: 0x60190a81 => androidx/appcompat/widget/AppCompatTextView
	i32 1614379351, ; 373: 0x60397957 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat
	i32 1618766693, ; 374: 0x607c6b65 => com/google/android/material/appbar/AppBarLayout$BaseBehavior
	i32 1622360015, ; 375: 0x60b33fcf => android/webkit/CookieManager
	i32 1630811578, ; 376: 0x613435ba => com/microsoft/maui/ImageLoaderCallback
	i32 1636428268, ; 377: 0x6189e9ec => androidx/navigation/NavViewModelStoreProvider
	i32 1637959351, ; 378: 0x61a146b7 => java/security/Principal
	i32 1644876130, ; 379: 0x620ad162 => android/graphics/Matrix
	i32 1645748849, ; 380: 0x62182271 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder
	i32 1646348278, ; 381: 0x622147f6 => android/view/View
	i32 1649695927, ; 382: 0x62545cb7 => java/lang/RuntimeException
	i32 1657134862, ; 383: 0x62c5df0e => java/lang/IndexOutOfBoundsException
	i32 1661912031, ; 384: 0x630ec3df => android/view/View$OnTouchListener
	i32 1672227968, ; 385: 0x63ac2c80 => crc645d80431ce5f73f11/TemplatedItemViewHolder
	i32 1680835779, ; 386: 0x642f84c3 => java/lang/Byte
	i32 1681267672, ; 387: 0x64361bd8 => crc6452ffdc5b34af3a0f/MauiPickerBase
	i32 1687354114, ; 388: 0x6492fb02 => mono/android/view/View_OnAttachStateChangeListenerImplementor
	i32 1687579136, ; 389: 0x64966a00 => android/widget/CheckBox
	i32 1687871467, ; 390: 0x649adfeb => com/microsoft/maui/PlatformWrapperView
	i32 1695391719, ; 391: 0x650d9fe7 => android/widget/EdgeEffect
	i32 1698676726, ; 392: 0x653fbff6 => androidx/navigation/NavDestination$DeepLinkMatch
	i32 1699467861, ; 393: 0x654bd255 => android/widget/CompoundButton
	i32 1704419470, ; 394: 0x6597608e => android/view/ContentInfo
	i32 1717322157, ; 395: 0x665c41ad => androidx/navigation/NavDirections
	i32 1718265030, ; 396: 0x666aa4c6 => java/lang/Character
	i32 1728017347, ; 397: 0x66ff73c3 => android/view/animation/Animation$AnimationListener
	i32 1728338198, ; 398: 0x67045916 => kotlin/coroutines/CoroutineContext$Key
	i32 1729659134, ; 399: 0x671880fe => android/view/MenuInflater
	i32 1733881762, ; 400: 0x6758efa2 => android/content/ClipData$Item
	i32 1738779209, ; 401: 0x67a3aa49 => androidx/lifecycle/ViewModelStore
	i32 1740814247, ; 402: 0x67c2b7a7 => android/widget/FrameLayout
	i32 1740929322, ; 403: 0x67c4792a => android/os/IInterface
	i32 1746572858, ; 404: 0x681a963a => android/app/Application$ActivityLifecycleCallbacks
	i32 1747431222, ; 405: 0x6827af36 => com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener
	i32 1755285137, ; 406: 0x689f8691 => java/util/Random
	i32 1756541799, ; 407: 0x68b2b367 => androidx/core/view/ActionProvider$VisibilityListener
	i32 1756909581, ; 408: 0x68b8500d => android/text/Layout
	i32 1757019113, ; 409: 0x68b9fbe9 => android/graphics/drawable/shapes/RectShape
	i32 1757602278, ; 410: 0x68c2e1e6 => crc6452ffdc5b34af3a0f/MauiTimePicker
	i32 1758490869, ; 411: 0x68d070f5 => android/os/BaseBundle
	i32 1761245836, ; 412: 0x68fa7a8c => android/content/ClipData
	i32 1765383592, ; 413: 0x69399da8 => crc645d80431ce5f73f11/MauiRecyclerView_3
	i32 1772705556, ; 414: 0x69a95714 => android/graphics/Point
	i32 1775053709, ; 415: 0x69cd2b8d => crc64f728827fec74e9c3/Toolbar_Container
	i32 1775355160, ; 416: 0x69d1c518 => android/content/res/ColorStateList
	i32 1780695190, ; 417: 0x6a234096 => androidx/core/view/WindowInsetsAnimationControlListenerCompat
	i32 1789590532, ; 418: 0x6aaafc04 => androidx/browser/customtabs/CustomTabsSession$PendingSession
	i32 1790236887, ; 419: 0x6ab4d8d7 => android/text/Spanned
	i32 1796407475, ; 420: 0x6b1300b3 => com/google/android/material/button/MaterialButton
	i32 1807220671, ; 421: 0x6bb7ffbf => android/view/View$OnClickListener
	i32 1809041597, ; 422: 0x6bd3c8bd => xamarin/android/net/ServerCertificateCustomValidator_AlwaysAcceptingHostnameVerifier
	i32 1825825055, ; 423: 0x6cd3e11f => androidx/appcompat/widget/SearchView$OnCloseListener
	i32 1826061187, ; 424: 0x6cd77b83 => androidx/appcompat/view/menu/SubMenuBuilder
	i32 1829255461, ; 425: 0x6d083925 => crc64e1fb321c08285b90/SwitchCellView
	i32 1830766463, ; 426: 0x6d1f477f => android/graphics/drawable/ShapeDrawable
	i32 1835346313, ; 427: 0x6d652989 => androidx/navigation/NavAction
	i32 1837796023, ; 428: 0x6d8a8ab7 => crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener
	i32 1840016849, ; 429: 0x6dac6dd1 => crc648316b0a9aa8cfd61/BrowserTabActivity
	i32 1846028421, ; 430: 0x6e082885 => crc6452ffdc5b34af3a0f/MauiPageControl
	i32 1849338590, ; 431: 0x6e3aaade => com/google/android/material/appbar/AppBarLayout$Behavior
	i32 1851730788, ; 432: 0x6e5f2b64 => java/lang/Runnable
	i32 1853655829, ; 433: 0x6e7c8b15 => com/google/android/material/badge/BadgeDrawable
	i32 1855124457, ; 434: 0x6e92f3e9 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor
	i32 1855628473, ; 435: 0x6e9aa4b9 => mono/android/text/TextWatcherImplementor
	i32 1859010077, ; 436: 0x6ece3e1d => android/widget/LinearLayout
	i32 1861269606, ; 437: 0x6ef0b866 => androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory
	i32 1864726383, ; 438: 0x6f25776f => android/view/ViewConfiguration
	i32 1866304377, ; 439: 0x6f3d8b79 => android/view/SearchEvent
	i32 1871742431, ; 440: 0x6f9085df => android/graphics/drawable/Drawable$ConstantState
	i32 1884164402, ; 441: 0x704e1132 => crc64e1fb321c08285b90/BaseCellView
	i32 1884841200, ; 442: 0x705864f0 => android/os/PowerManager
	i32 1884960853, ; 443: 0x705a3855 => android/content/DialogInterface$OnMultiChoiceClickListener
	i32 1888258715, ; 444: 0x708c8a9b => kotlin/jvm/functions/Function1
	i32 1890166105, ; 445: 0x70a9a559 => androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher
	i32 1891973482, ; 446: 0x70c5396a => android/graphics/drawable/InsetDrawable
	i32 1893605975, ; 447: 0x70de2257 => androidx/fragment/app/FragmentActivity
	i32 1895664339, ; 448: 0x70fd8ad3 => android/widget/RelativeLayout$LayoutParams
	i32 1904678085, ; 449: 0x718714c5 => android/text/style/ForegroundColorSpan
	i32 1905107734, ; 450: 0x718da316 => androidx/lifecycle/ViewModelProvider
	i32 1910754150, ; 451: 0x71e3cb66 => com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener
	i32 1912915638, ; 452: 0x7204c6b6 => crc6452ffdc5b34af3a0f/MauiDatePicker
	i32 1923639542, ; 453: 0x72a868f6 => android/content/pm/ComponentInfo
	i32 1926992606, ; 454: 0x72db92de => androidx/lifecycle/Lifecycle$Event
	i32 1943778051, ; 455: 0x73dbb303 => android/widget/AdapterView$OnItemSelectedListener
	i32 1944129628, ; 456: 0x73e1105c => java/io/OutputStream
	i32 1960987726, ; 457: 0x74e24c4e => mono/android/content/DialogInterface_OnDismissListenerImplementor
	i32 1962126435, ; 458: 0x74f3ac63 => android/content/BroadcastReceiver
	i32 1965949473, ; 459: 0x752e0221 => androidx/fragment/app/FragmentManager
	i32 1967297202, ; 460: 0x754292b2 => androidx/navigation/NavArgument
	i32 1969410869, ; 461: 0x7562d335 => mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor
	i32 1970237303, ; 462: 0x756f6f77 => crc6452ffdc5b34af3a0f/StepperHandlerHolder
	i32 1970513771, ; 463: 0x7573a76b => crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData
	i32 1970549289, ; 464: 0x75743229 => androidx/appcompat/app/AlertDialog$Builder
	i32 1972856963, ; 465: 0x75976883 => crc640ec207abc449b2ca/ShellPageContainer
	i32 1975733601, ; 466: 0x75c34d61 => androidx/viewpager2/adapter/FragmentStateAdapter
	i32 1976149055, ; 467: 0x75c9a43f => com/google/android/material/shape/EdgeTreatment
	i32 1976782935, ; 468: 0x75d35057 => com/google/android/material/bottomsheet/BottomSheetDialog
	i32 1985929388, ; 469: 0x765ee0ac => android/app/Activity
	i32 1987841337, ; 470: 0x767c0d39 => java/lang/Boolean
	i32 1988452830, ; 471: 0x768561de => crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener
	i32 1990610968, ; 472: 0x76a65018 => android/widget/AdapterView$OnItemClickListener
	i32 1997394156, ; 473: 0x770dd0ec => java/security/MessageDigest
	i32 1999563224, ; 474: 0x772ee9d8 => android/graphics/drawable/GradientDrawable
	i32 2008064836, ; 475: 0x77b0a344 => android/content/Intent
	i32 2009011456, ; 476: 0x77bf1500 => com/google/android/material/elevation/ElevationOverlayProvider
	i32 2011207868, ; 477: 0x77e098bc => androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat
	i32 2013969252, ; 478: 0x780abb64 => androidx/appcompat/widget/AppCompatImageView
	i32 2014726135, ; 479: 0x781647f7 => android/view/accessibility/AccessibilityRecord
	i32 2026619833, ; 480: 0x78cbc3b9 => android/widget/FrameLayout$LayoutParams
	i32 2027782872, ; 481: 0x78dd82d8 => android/view/ContextThemeWrapper
	i32 2031450615, ; 482: 0x791579f7 => android/widget/AdapterView
	i32 2036556174, ; 483: 0x7963618e => android/content/DialogInterface
	i32 2039728241, ; 484: 0x7993c871 => android/widget/TimePicker
	i32 2042935261, ; 485: 0x79c4b7dd => android/text/style/BulletSpan
	i32 2043030513, ; 486: 0x79c62bf1 => android/os/Parcelable$Creator
	i32 2043331430, ; 487: 0x79cac366 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat
	i32 2045330957, ; 488: 0x79e9460d => com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener
	i32 2046574810, ; 489: 0x79fc40da => java/util/Locale
	i32 2047721020, ; 490: 0x7a0dbe3c => android/webkit/WebChromeClient$FileChooserParams
	i32 2053440974, ; 491: 0x7a6505ce => mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor
	i32 2054408678, ; 492: 0x7a73c9e6 => androidx/recyclerview/widget/RecyclerView$Recycler
	i32 2061721420, ; 493: 0x7ae35f4c => android/database/CharArrayBuffer
	i32 2063985753, ; 494: 0x7b05ec59 => android/view/animation/Animation
	i32 2064723667, ; 495: 0x7b112ed3 => android/widget/SpinnerAdapter
	i32 2066129802, ; 496: 0x7b26a38a => mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor
	i32 2072634313, ; 497: 0x7b89e3c9 => crc64b5e713d400f589b7/MauiDrawable
	i32 2073337312, ; 498: 0x7b949de0 => android/app/AlertDialog$Builder
	i32 2076112998, ; 499: 0x7bbef866 => androidx/navigation/NavGraphNavigator
	i32 2079753938, ; 500: 0x7bf686d2 => android/content/IntentSender
	i32 2080685156, ; 501: 0x7c04bc64 => java/security/SecureRandom
	i32 2080858891, ; 502: 0x7c07630b => crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener
	i32 2091052166, ; 503: 0x7ca2ec86 => androidx/fragment/app/FragmentManager$BackStackEntry
	i32 2096401987, ; 504: 0x7cf48e43 => android/widget/AbsSeekBar
	i32 2100944957, ; 505: 0x7d39e03d => android/graphics/Path
	i32 2113134466, ; 506: 0x7df3df82 => androidx/appcompat/widget/SearchView$OnQueryTextListener
	i32 2114237978, ; 507: 0x7e04b61a => android/content/res/Configuration
	i32 2122172224, ; 508: 0x7e7dc740 => kotlin/coroutines/Continuation
	i32 2128294650, ; 509: 0x7edb32fa => androidx/loader/app/LoaderManager
	i32 2130146345, ; 510: 0x7ef77429 => kotlinx/coroutines/flow/SharedFlow
	i32 2131480051, ; 511: 0x7f0bcdf3 => android/animation/AnimatorListenerAdapter
	i32 2132296521, ; 512: 0x7f184349 => android/util/Base64
	i32 2136942723, ; 513: 0x7f5f2883 => crc64338477404e88479c/FragmentContainer
	i32 2137427903, ; 514: 0x7f668fbf => crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener
	i32 2140205691, ; 515: 0x7f90f27b => androidx/navigation/NavGraph
	i32 2142674759, ; 516: 0x7fb69f47 => com/google/android/material/appbar/AppBarLayout
	i32 2149539229, ; 517: 0x801f5d9d => crc64e1fb321c08285b90/ConditionalFocusLayout
	i32 2154510399, ; 518: 0x806b383f => android/view/animation/AnimationSet
	i32 2154747413, ; 519: 0x806ed615 => com/google/android/material/tabs/TabLayout
	i32 2171523184, ; 520: 0x816ed070 => androidx/navigation/NavDestination
	i32 2175059521, ; 521: 0x81a4c641 => com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener
	i32 2177045276, ; 522: 0x81c3131c => androidx/lifecycle/Lifecycle
	i32 2183290666, ; 523: 0x82225f2a => mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor
	i32 2189043474, ; 524: 0x827a2712 => android/graphics/Paint$FontMetrics
	i32 2191855147, ; 525: 0x82a50e2b => androidx/lifecycle/Lifecycle$State
	i32 2192317535, ; 526: 0x82ac1c5f => androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior
	i32 2204262174, ; 527: 0x83625f1e => org/xmlpull/v1/XmlPullParser
	i32 2208460083, ; 528: 0x83a26d33 => mono/android/content/DialogInterface_OnShowListenerImplementor
	i32 2215661969, ; 529: 0x84105191 => crc645d80431ce5f73f11/TextViewHolder
	i32 2223129419, ; 530: 0x8482434b => javax/net/ssl/SSLEngine
	i32 2223322365, ; 531: 0x848534fd => androidx/appcompat/widget/TooltipCompat
	i32 2227192067, ; 532: 0x84c04103 => androidx/fragment/app/FragmentOnAttachListener
	i32 2231172621, ; 533: 0x84fcfe0d => androidx/core/app/ActivityOptionsCompat
	i32 2235908794, ; 534: 0x854542ba => androidx/core/view/ActionProvider$SubUiVisibilityListener
	i32 2241879133, ; 535: 0x85a05c5d => androidx/appcompat/widget/ScrollingTabContainerView
	i32 2246992727, ; 536: 0x85ee6357 => androidx/navigation/Navigator$Extras
	i32 2256819951, ; 537: 0x868456ef => crc6452ffdc5b34af3a0f/WrapperView
	i32 2266957298, ; 538: 0x871f05f2 => crc6452ffdc5b34af3a0f/MauiWebView
	i32 2267347248, ; 539: 0x8724f930 => androidx/recyclerview/widget/RecyclerView$OnFlingListener
	i32 2269094561, ; 540: 0x873fa2a1 => java/net/UnknownServiceException
	i32 2270923754, ; 541: 0x875b8bea => java/net/Proxy$Type
	i32 2275473001, ; 542: 0x87a0f669 => androidx/core/view/MenuItemCompat$OnActionExpandListener
	i32 2277023780, ; 543: 0x87b8a024 => android/content/pm/ServiceInfo
	i32 2279866227, ; 544: 0x87e3ff73 => androidx/appcompat/widget/AppCompatImageButton
	i32 2284656609, ; 545: 0x882d17e1 => android/app/Application
	i32 2288751702, ; 546: 0x886b9456 => com/google/android/material/checkbox/MaterialCheckBox
	i32 2294676156, ; 547: 0x88c5fabc => android/view/accessibility/AccessibilityNodeInfo
	i32 2295274318, ; 548: 0x88cf1b4e => androidx/fragment/app/FragmentManager$OnBackStackChangedListener
	i32 2296411383, ; 549: 0x88e074f7 => android/content/IntentFilter
	i32 2311244271, ; 550: 0x89c2c9ef => com/google/android/material/appbar/ViewOffsetBehavior
	i32 2316440185, ; 551: 0x8a121279 => androidx/lifecycle/ViewModelStoreOwner
	i32 2320220715, ; 552: 0x8a4bc22b => crc64338477404e88479c/MauiViewPager
	i32 2330207644, ; 553: 0x8ae4259c => androidx/activity/result/ActivityResultCallback
	i32 2331022545, ; 554: 0x8af094d1 => crc6452ffdc5b34af3a0f/BorderDrawable
	i32 2340946104, ; 555: 0x8b8800b8 => androidx/recyclerview/widget/PagerSnapHelper
	i32 2350530900, ; 556: 0x8c1a4154 => androidx/recyclerview/widget/RecyclerView$OnScrollListener
	i32 2360386678, ; 557: 0x8cb0a476 => crc64338477404e88479c/InnerScaleListener
	i32 2363729366, ; 558: 0x8ce3a5d6 => java/lang/Enum
	i32 2367500547, ; 559: 0x8d1d3103 => android/widget/SearchView
	i32 2371350972, ; 560: 0x8d57f1bc => android/widget/Switch
	i32 2388882770, ; 561: 0x8e637552 => crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener
	i32 2391098046, ; 562: 0x8e8542be => androidx/browser/customtabs/CustomTabsIntent$Builder
	i32 2395748977, ; 563: 0x8ecc3a71 => android/view/View$OnLayoutChangeListener
	i32 2396624268, ; 564: 0x8ed9958c => androidx/swiperefreshlayout/widget/SwipeRefreshLayout
	i32 2399092329, ; 565: 0x8eff3e69 => androidx/recyclerview/widget/RecyclerView
	i32 2404057846, ; 566: 0x8f4b02f6 => android/app/PendingIntent
	i32 2405999645, ; 567: 0x8f68a41d => android/graphics/Shader
	i32 2409724717, ; 568: 0x8fa17b2d => android/util/TypedValue
	i32 2411404453, ; 569: 0x8fbb1ca5 => java/lang/UnsupportedOperationException
	i32 2420104680, ; 570: 0x903fdde8 => android/content/res/Resources$Theme
	i32 2427098608, ; 571: 0x90aa95f0 => mono/android/widget/TextView_OnEditorActionListenerImplementor
	i32 2429404267, ; 572: 0x90cdc46b => crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult
	i32 2436269619, ; 573: 0x91368633 => androidx/cursoradapter/widget/CursorAdapter
	i32 2439299394, ; 574: 0x9164c142 => crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable
	i32 2442106723, ; 575: 0x918f9763 => androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener
	i32 2442189280, ; 576: 0x9190d9e0 => android/util/AndroidException
	i32 2443438835, ; 577: 0x91a3eaf3 => java/net/SocketException
	i32 2443738409, ; 578: 0x91a87d29 => android/graphics/PathEffect
	i32 2443787634, ; 579: 0x91a93d72 => androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback
	i32 2444263543, ; 580: 0x91b08077 => crc64e1fb321c08285b90/EntryCellEditText
	i32 2449700811, ; 581: 0x920377cb => mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor
	i32 2452264117, ; 582: 0x922a94b5 => java/io/RandomAccessFile
	i32 2455021577, ; 583: 0x9254a809 => android/view/WindowInsetsAnimationControlListener
	i32 2458007569, ; 584: 0x92823811 => android/os/Process
	i32 2459634245, ; 585: 0x929b0a45 => com/google/android/material/appbar/AppBarLayout$ChildScrollEffect
	i32 2459753066, ; 586: 0x929cda6a => androidx/recyclerview/widget/ItemTouchUIUtil
	i32 2461273673, ; 587: 0x92b40e49 => org/xmlpull/v1/XmlPullParserException
	i32 2464444706, ; 588: 0x92e47122 => crc6452ffdc5b34af3a0f/SwipeViewPager
	i32 2467524923, ; 589: 0x9313713b => android/window/OnBackInvokedDispatcher
	i32 2472628627, ; 590: 0x93615193 => crc6452ffdc5b34af3a0f/ContentViewGroup
	i32 2476798898, ; 591: 0x93a0f3b2 => crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter
	i32 2476842332, ; 592: 0x93a19d5c => crc640ec207abc449b2ca/ShellFragmentStateAdapter
	i32 2479240162, ; 593: 0x93c633e2 => androidx/core/view/WindowInsetsAnimationControllerCompat
	i32 2481041228, ; 594: 0x93e1af4c => mono/androidx/fragment/app/FragmentOnAttachListenerImplementor
	i32 2484873381, ; 595: 0x941c28a5 => android/webkit/WebSettings
	i32 2493299211, ; 596: 0x949cba0b => android/text/StaticLayout
	i32 2507390128, ; 597: 0x9573bcb0 => crc640ec207abc449b2ca/ShellSearchView
	i32 2510920789, ; 598: 0x95a99c55 => com/google/android/material/appbar/HeaderScrollingViewBehavior
	i32 2531623798, ; 599: 0x96e58376 => androidx/core/content/res/ResourcesCompat
	i32 2532846927, ; 600: 0x96f82d4f => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i32 2541780716, ; 601: 0x97807eec => android/view/ContextMenu$ContextMenuInfo
	i32 2544043539, ; 602: 0x97a30613 => androidx/core/view/MenuItemCompat
	i32 2547729979, ; 603: 0x97db463b => com/microsoft/maui/PlatformContentViewGroup
	i32 2552281033, ; 604: 0x9820b7c9 => androidx/core/view/ScrollingView
	i32 2556636347, ; 605: 0x98632cbb => androidx/browser/customtabs/CustomTabColorSchemeParams
	i32 2557593866, ; 606: 0x9871c90a => mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor
	i32 2557714604, ; 607: 0x9873a0ac => com/google/android/material/tabs/TabLayout$OnTabSelectedListener
	i32 2558143838, ; 608: 0x987a2d5e => java/io/FileInputStream
	i32 2558429400, ; 609: 0x987e88d8 => crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat
	i32 2558637264, ; 610: 0x9881b4d0 => android/graphics/drawable/Icon
	i32 2561967928, ; 611: 0x98b48738 => java/security/cert/X509Certificate
	i32 2565590497, ; 612: 0x98ebcde1 => android/app/DatePickerDialog$OnDateSetListener
	i32 2568582214, ; 613: 0x99197446 => androidx/appcompat/widget/AppCompatEditText
	i32 2569469627, ; 614: 0x9926febb => android/view/WindowInsetsController$OnControllableInsetsChangedListener
	i32 2573408866, ; 615: 0x99631a62 => crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks
	i32 2578357124, ; 616: 0x99ae9b84 => android/widget/ImageView$ScaleType
	i32 2582017517, ; 617: 0x99e675ed => android/accounts/AccountManagerCallback
	i32 2582561611, ; 618: 0x99eec34b => androidx/navigation/NavController$OnDestinationChangedListener
	i32 2583054407, ; 619: 0x99f64847 => mono/android/animation/AnimatorEventDispatcher
	i32 2585603720, ; 620: 0x9a1d2e88 => java/text/NumberFormat
	i32 2586771995, ; 621: 0x9a2f021b => android/content/DialogInterface$OnKeyListener
	i32 2594241228, ; 622: 0x9aa0facc => android/widget/BaseAdapter
	i32 2595043434, ; 623: 0x9aad386a => androidx/core/content/res/ResourcesCompat$FontCallback
	i32 2601403999, ; 624: 0x9b0e465f => androidx/navigation/NavDeepLinkRequest
	i32 2602016434, ; 625: 0x9b179eb2 => crc6452ffdc5b34af3a0f/MauiLayerDrawable
	i32 2628279754, ; 626: 0x9ca85dca => android/content/DialogInterface$OnCancelListener
	i32 2637159311, ; 627: 0x9d2fdb8f => android/content/pm/PackageManager
	i32 2638483996, ; 628: 0x9d44121c => androidx/appcompat/app/AppCompatDelegate
	i32 2641760479, ; 629: 0x9d7610df => java/security/GeneralSecurityException
	i32 2641978177, ; 630: 0x9d796341 => com/google/android/material/navigation/NavigationView
	i32 2642404316, ; 631: 0x9d7fe3dc => android/content/pm/Signature
	i32 2645011211, ; 632: 0x9da7ab0b => androidx/core/widget/NestedScrollView
	i32 2645137969, ; 633: 0x9da99a31 => androidx/core/app/ComponentActivity$ExtraData
	i32 2647799060, ; 634: 0x9dd23514 => androidx/core/graphics/drawable/DrawableCompat
	i32 2649962372, ; 635: 0x9df33784 => androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy
	i32 2650857109, ; 636: 0x9e00de95 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat
	i32 2654672461, ; 637: 0x9e3b164d => java/io/InterruptedIOException
	i32 2661939407, ; 638: 0x9ea9f8cf => android/widget/ImageButton
	i32 2663321095, ; 639: 0x9ebf0e07 => mono/java/lang/Runnable
	i32 2664928003, ; 640: 0x9ed79303 => javax/net/ssl/HostnameVerifier
	i32 2669574217, ; 641: 0x9f1e7849 => crc6452ffdc5b34af3a0f/MauiAppCompatEditText
	i32 2675615863, ; 642: 0x9f7aa877 => android/webkit/WebViewClient
	i32 2680318496, ; 643: 0x9fc26a20 => mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor
	i32 2681209703, ; 644: 0x9fd00367 => android/widget/Adapter
	i32 2681937445, ; 645: 0x9fdb1e25 => androidx/appcompat/graphics/drawable/DrawableWrapperCompat
	i32 2681988174, ; 646: 0x9fdbe44e => android/view/MotionEvent
	i32 2687778660, ; 647: 0xa0343f64 => android/widget/TextView
	i32 2691166678, ; 648: 0xa067f1d6 => crc64b5e713d400f589b7/RadialGradientShaderFactory
	i32 2691558259, ; 649: 0xa06deb73 => android/view/View$OnKeyListener
	i32 2692535938, ; 650: 0xa07cd682 => android/util/Log
	i32 2695694849, ; 651: 0xa0ad0a01 => crc645d80431ce5f73f11/SingleSnapHelper
	i32 2699556053, ; 652: 0xa0e7f4d5 => android/webkit/WebResourceRequest
	i32 2701862962, ; 653: 0xa10b2832 => androidx/lifecycle/viewmodel/ViewModelInitializer
	i32 2702027833, ; 654: 0xa10dac39 => androidx/appcompat/widget/SwitchCompat
	i32 2708569837, ; 655: 0xa1717eed => android/graphics/drawable/ShapeDrawable$ShaderFactory
	i32 2721349606, ; 656: 0xa2347fe6 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener
	i32 2721599187, ; 657: 0xa2384ed3 => android/graphics/drawable/Drawable
	i32 2731618005, ; 658: 0xa2d12ed5 => android/view/View$MeasureSpec
	i32 2734960682, ; 659: 0xa304302a => androidx/core/widget/NestedScrollView$OnScrollChangeListener
	i32 2735496870, ; 660: 0xa30c5ea6 => java/net/Socket
	i32 2742936588, ; 661: 0xa37de40c => androidx/activity/result/ActivityResultRegistry
	i32 2748204015, ; 662: 0xa3ce43ef => crc64e1fb321c08285b90/TableViewModelRenderer
	i32 2755748727, ; 663: 0xa4416377 => android/text/Spannable
	i32 2762684487, ; 664: 0xa4ab3847 => java/lang/Float
	i32 2771894941, ; 665: 0xa537c29d => android/graphics/drawable/LayerDrawable
	i32 2782323556, ; 666: 0xa5d6e364 => androidx/appcompat/widget/SearchView$OnSuggestionListener
	i32 2789186058, ; 667: 0xa63f9a0a => androidx/navigation/NavInflater
	i32 2796816157, ; 668: 0xa6b4071d => android/text/format/DateFormat
	i32 2802808876, ; 669: 0xa70f782c => crc6452ffdc5b34af3a0f/MauiScrollView
	i32 2815615939, ; 670: 0xa7d2e3c3 => android/os/Build
	i32 2818171363, ; 671: 0xa7f9e1e3 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout
	i32 2820815306, ; 672: 0xa82239ca => crc6452ffdc5b34af3a0f/MauiBoxView
	i32 2824201895, ; 673: 0xa855e6a7 => androidx/appcompat/widget/AppCompatButton
	i32 2837435745, ; 674: 0xa91fd561 => android/view/DragEvent
	i32 2842584019, ; 675: 0xa96e63d3 => crc645d80431ce5f73f11/ScrollHelper
	i32 2852719702, ; 676: 0xaa090c56 => androidx/cardview/widget/CardView
	i32 2857003403, ; 677: 0xaa4a698b => com/google/android/material/shape/CornerTreatment
	i32 2857352824, ; 678: 0xaa4fbe78 => mono/android/view/View_OnKeyListenerImplementor
	i32 2859608678, ; 679: 0xaa722a66 => android/view/WindowInsetsAnimation$Bounds
	i32 2860681453, ; 680: 0xaa8288ed => crc640ec207abc449b2ca/ShellFlyoutLayout
	i32 2862889935, ; 681: 0xaaa43bcf => androidx/core/view/ActionProvider
	i32 2865855753, ; 682: 0xaad17d09 => androidx/recyclerview/widget/SnapHelper
	i32 2866910344, ; 683: 0xaae19488 => android/view/ActionMode
	i32 2873107855, ; 684: 0xab40258f => android/content/pm/PackageInfo
	i32 2874673969, ; 685: 0xab580b31 => java/lang/StackTraceElement
	i32 2875901595, ; 686: 0xab6ac69b => crc64338477404e88479c/ModalNavigationManager_ModalContainer
	i32 2904565352, ; 687: 0xad202668 => android/view/WindowInsetsAnimationController
	i32 2905214894, ; 688: 0xad2a0fae => android/text/style/ParagraphStyle
	i32 2909563026, ; 689: 0xad6c6892 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo
	i32 2918613155, ; 690: 0xadf680a3 => android/content/DialogInterface$OnClickListener
	i32 2922690929, ; 691: 0xae34b971 => android/graphics/BlendMode
	i32 2932874700, ; 692: 0xaed01dcc => android/view/InputEvent
	i32 2933762856, ; 693: 0xaeddab28 => android/util/AttributeSet
	i32 2936041254, ; 694: 0xaf006f26 => microsoft/identity/client/AuthenticationActivity
	i32 2936553858, ; 695: 0xaf084182 => androidx/fragment/app/strictmode/Violation
	i32 2936969538, ; 696: 0xaf0e9942 => androidx/recyclerview/widget/LinearSmoothScroller
	i32 2942792700, ; 697: 0xaf6773fc => java/lang/Exception
	i32 2943609165, ; 698: 0xaf73e94d => crc645d80431ce5f73f11/MauiCarouselRecyclerView
	i32 2944806563, ; 699: 0xaf862ea3 => android/widget/ListView
	i32 2953623320, ; 700: 0xb00cb718 => android/view/WindowInsetsController
	i32 2954825236, ; 701: 0xb01f0e14 => androidx/appcompat/app/ActionBar
	i32 2963535666, ; 702: 0xb0a3f732 => androidx/viewpager/widget/ViewPager$OnAdapterChangeListener
	i32 2974982681, ; 703: 0xb152a219 => java/text/Format
	i32 2980510762, ; 704: 0xb1a6fc2a => mono/android/runtime/JavaArray
	i32 2983720033, ; 705: 0xb1d7f461 => mono/android/TypeManager
	i32 2985454904, ; 706: 0xb1f26d38 => android/text/method/DigitsKeyListener
	i32 2991841681, ; 707: 0xb253e191 => crc645d80431ce5f73f11/SelectableViewHolder
	i32 2994721532, ; 708: 0xb27fd2fc => androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat
	i32 2999435385, ; 709: 0xb2c7c079 => androidx/core/view/ContentInfoCompat
	i32 3000612944, ; 710: 0xb2d9b850 => crc645d80431ce5f73f11/SizedItemContentView
	i32 3001046126, ; 711: 0xb2e0546e => crc6488302ad6e9e4df1a/ImageLoaderResultCallback
	i32 3001685181, ; 712: 0xb2ea14bd => crc645d80431ce5f73f11/SpacingItemDecoration
	i32 3002147562, ; 713: 0xb2f122ea => androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action
	i32 3007288156, ; 714: 0xb33f935c => java/security/cert/CertificateException
	i32 3009639411, ; 715: 0xb36373f3 => androidx/savedstate/SavedStateRegistry$SavedStateProvider
	i32 3011148753, ; 716: 0xb37a7bd1 => androidx/appcompat/app/ActionBar$LayoutParams
	i32 3014306725, ; 717: 0xb3aaaba5 => crc64e1fb321c08285b90/CellAdapter
	i32 3014797707, ; 718: 0xb3b2298b => kotlin/Function
	i32 3021714559, ; 719: 0xb41bb47f => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer
	i32 3022088294, ; 720: 0xb4216866 => crc64338477404e88479c/ControlsAccessibilityDelegate
	i32 3023394421, ; 721: 0xb4355675 => android/text/SpannableString
	i32 3023632163, ; 722: 0xb438f723 => com/microsoft/maui/PlatformAppCompatTextView
	i32 3027993654, ; 723: 0xb47b8436 => crc645d80431ce5f73f11/DataChangeObserver
	i32 3032808825, ; 724: 0xb4c4fd79 => java/io/StringWriter
	i32 3052396687, ; 725: 0xb5efe08f => android/view/animation/DecelerateInterpolator
	i32 3052490091, ; 726: 0xb5f14d6b => com/google/android/material/shape/CornerSize
	i32 3055966780, ; 727: 0xb6265a3c => androidx/core/view/WindowInsetsAnimationCompat
	i32 3072461607, ; 728: 0xb7220b27 => java/util/concurrent/Future
	i32 3074782437, ; 729: 0xb74574e5 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback
	i32 3075597449, ; 730: 0xb751e489 => androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams
	i32 3078871784, ; 731: 0xb783dae8 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter
	i32 3082379345, ; 732: 0xb7b96051 => crc64e1fb321c08285b90/ListViewAdapter
	i32 3082841782, ; 733: 0xb7c06eb6 => android/util/Pair
	i32 3085278123, ; 734: 0xb7e59bab => com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback
	i32 3086955035, ; 735: 0xb7ff321b => androidx/appcompat/app/ActionBarDrawerToggle
	i32 3087255038, ; 736: 0xb803c5fe => android/preference/PreferenceManager
	i32 3098597018, ; 737: 0xb8b0d69a => android/webkit/WebResourceError
	i32 3099275466, ; 738: 0xb8bb30ca => crc64ed1888fb4925e3b7/AuthenticationAgentActivity
	i32 3105495572, ; 739: 0xb91a1a14 => crc640ec207abc449b2ca/ShellSearchViewAdapter
	i32 3106600980, ; 740: 0xb92af814 => androidx/viewpager2/widget/ViewPager2
	i32 3108395553, ; 741: 0xb9465a21 => crc645d80431ce5f73f11/CarouselViewAdapter_2
	i32 3116706335, ; 742: 0xb9c52a1f => android/view/View$AccessibilityDelegate
	i32 3117349163, ; 743: 0xb9cef92b => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat
	i32 3118190009, ; 744: 0xb9dbcdb9 => crc64338477404e88479c/InnerGestureListener
	i32 3120157766, ; 745: 0xb9f9d446 => crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks
	i32 3140882952, ; 746: 0xbb361208 => crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable
	i32 3141422855, ; 747: 0xbb3e4f07 => android/view/ScaleGestureDetector
	i32 3145188486, ; 748: 0xbb77c486 => crc645d80431ce5f73f11/ItemContentView
	i32 3147264387, ; 749: 0xbb977183 => crc645d80431ce5f73f11/CarouselViewOnScrollListener
	i32 3148065494, ; 750: 0xbba3aad6 => android/animation/ValueAnimator$AnimatorUpdateListener
	i32 3150778034, ; 751: 0xbbcd0eb2 => mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor
	i32 3151655458, ; 752: 0xbbda7222 => androidx/appcompat/view/menu/MenuItemImpl
	i32 3154115283, ; 753: 0xbbfffad3 => androidx/appcompat/view/menu/MenuBuilder$Callback
	i32 3161706197, ; 754: 0xbc73ced5 => androidx/appcompat/content/res/AppCompatResources
	i32 3164525707, ; 755: 0xbc9ed48b => mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor
	i32 3173193659, ; 756: 0xbd2317bb => android/content/pm/ShortcutInfo
	i32 3173395525, ; 757: 0xbd262c45 => android/os/IBinder
	i32 3173414241, ; 758: 0xbd267561 => android/graphics/Path$Direction
	i32 3178304415, ; 759: 0xbd71139f => android/view/inputmethod/InputMethodManager
	i32 3178870398, ; 760: 0xbd79b67e => com/microsoft/maui/PlatformLineHeightSpan
	i32 3180861164, ; 761: 0xbd9816ec => androidx/appcompat/widget/LinearLayoutCompat
	i32 3183271055, ; 762: 0xbdbcdc8f => android/view/ActionMode$Callback
	i32 3184939993, ; 763: 0xbdd653d9 => crc645d80431ce5f73f11/SimpleItemTouchHelperCallback
	i32 3185404740, ; 764: 0xbddd6b44 => androidx/navigation/NavigatorState
	i32 3189262385, ; 765: 0xbe184831 => android/graphics/MaskFilter
	i32 3189649675, ; 766: 0xbe1e310b => androidx/appcompat/widget/Toolbar$OnMenuItemClickListener
	i32 3193424560, ; 767: 0xbe57cab0 => android/text/style/ClickableSpan
	i32 3195156209, ; 768: 0xbe7236f1 => com/google/android/material/shape/ShapeAppearanceModel
	i32 3201749791, ; 769: 0xbed6d31f => android/content/ClipDescription
	i32 3203260291, ; 770: 0xbeeddf83 => android/widget/SeekBar
	i32 3203363508, ; 771: 0xbeef72b4 => android/view/KeyboardShortcutGroup
	i32 3207746877, ; 772: 0xbf32553d => android/os/LocaleList
	i32 3214744068, ; 773: 0xbf9d1a04 => android/view/WindowManager
	i32 3220226745, ; 774: 0xbff0c2b9 => androidx/navigation/NavType
	i32 3222907805, ; 775: 0xc019ab9d => androidx/recyclerview/widget/ItemTouchHelper$Callback
	i32 3224369971, ; 776: 0xc02ffb33 => kotlin/jvm/functions/Function0
	i32 3225005363, ; 777: 0xc039ad33 => androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties
	i32 3244743755, ; 778: 0xc166dc4b => crc640ec207abc449b2ca/ShellItemRenderer
	i32 3247040539, ; 779: 0xc189e81b => crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick
	i32 3249054538, ; 780: 0xc1a8a34a => kotlinx/coroutines/flow/Flow
	i32 3255647836, ; 781: 0xc20d3e5c => com/google/android/material/navigation/NavigationBarMenuView
	i32 3262645996, ; 782: 0xc27806ec => android/graphics/BlurMaskFilter$Blur
	i32 3271087717, ; 783: 0xc2f8d665 => mono/android/view/View_OnLayoutChangeListenerImplementor
	i32 3281925794, ; 784: 0xc39e36a2 => android/view/MenuItem
	i32 3287471889, ; 785: 0xc3f2d711 => androidx/activity/FullyDrawnReporter
	i32 3287761034, ; 786: 0xc3f7408a => crc645d80431ce5f73f11/EdgeSnapHelper
	i32 3290291610, ; 787: 0xc41ddd9a => android/view/ViewPropertyAnimator
	i32 3293983102, ; 788: 0xc456317e => android/graphics/Shader$TileMode
	i32 3299656254, ; 789: 0xc4acc23e => androidx/core/view/ScaleGestureDetectorCompat
	i32 3300906352, ; 790: 0xc4bfd570 => javax/net/ssl/SSLSession
	i32 3303217566, ; 791: 0xc4e3199e => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat
	i32 3304711809, ; 792: 0xc4f9e681 => androidx/navigation/NavBackStackEntry
	i32 3312352925, ; 793: 0xc56e7e9d => com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener
	i32 3319735188, ; 794: 0xc5df2394 => java/net/Proxy
	i32 3320874052, ; 795: 0xc5f08444 => androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener
	i32 3339677784, ; 796: 0xc70f7058 => androidx/core/util/Predicate
	i32 3341177627, ; 797: 0xc726531b => androidx/fragment/app/strictmode/FragmentStrictMode
	i32 3342764773, ; 798: 0xc73e8ae5 => androidx/recyclerview/widget/LinearSnapHelper
	i32 3343889639, ; 799: 0xc74fb4e7 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener
	i32 3347458241, ; 800: 0xc78628c1 => android/graphics/Insets
	i32 3356789353, ; 801: 0xc8148a69 => android/graphics/DashPathEffect
	i32 3359636116, ; 802: 0xc83ffa94 => crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2
	i32 3368559470, ; 803: 0xc8c8236e => android/graphics/drawable/shapes/Shape
	i32 3370156716, ; 804: 0xc8e082ac => crc6488302ad6e9e4df1a/MauiAppCompatActivity
	i32 3371638157, ; 805: 0xc8f71d8d => androidx/core/graphics/Insets
	i32 3378932770, ; 806: 0xc9666c22 => androidx/core/util/Consumer
	i32 3379688415, ; 807: 0xc971f3df => android/text/Editable
	i32 3386853318, ; 808: 0xc9df47c6 => androidx/core/content/pm/PackageInfoCompat
	i32 3388763936, ; 809: 0xc9fc6f20 => android/view/View$OnFocusChangeListener
	i32 3401332284, ; 810: 0xcabc363c => android/view/ScaleGestureDetector$SimpleOnScaleGestureListener
	i32 3407837353, ; 811: 0xcb1f78a9 => java/security/MessageDigestSpi
	i32 3409419575, ; 812: 0xcb379d37 => javax/net/ssl/HttpsURLConnection
	i32 3410676737, ; 813: 0xcb4acc01 => androidx/lifecycle/viewmodel/CreationExtras
	i32 3417008668, ; 814: 0xcbab6a1c => android/view/View$OnScrollChangeListener
	i32 3421524015, ; 815: 0xcbf0502f => com/google/android/material/tabs/TabLayout$Tab
	i32 3423467887, ; 816: 0xcc0df96f => java/lang/Number
	i32 3430868172, ; 817: 0xcc7ee4cc => android/content/SharedPreferences
	i32 3443033301, ; 818: 0xcd3884d5 => mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor
	i32 3452178114, ; 819: 0xcdc40ec2 => com/microsoft/maui/BuildConfig
	i32 3455823519, ; 820: 0xcdfbae9f => android/view/accessibility/AccessibilityWindowInfo
	i32 3481169142, ; 821: 0xcf7e6cf6 => androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback
	i32 3482500154, ; 822: 0xcf92bc3a => crc645d80431ce5f73f11/GroupableItemsViewAdapter_2
	i32 3491622242, ; 823: 0xd01ded62 => androidx/appcompat/app/AppCompatDialog
	i32 3497630135, ; 824: 0xd07999b7 => android/graphics/Paint$FontMetricsInt
	i32 3498379094, ; 825: 0xd0850756 => crc645d80431ce5f73f11/EndSnapHelper
	i32 3499520136, ; 826: 0xd0967088 => crc645d80431ce5f73f11/EndSingleSnapHelper
	i32 3502701795, ; 827: 0xd0c6fce3 => mono/android/view/View_OnScrollChangeListenerImplementor
	i32 3504008444, ; 828: 0xd0daecfc => com/google/android/material/bottomnavigation/BottomNavigationItemView
	i32 3515974447, ; 829: 0xd191832f => java/util/function/IntConsumer
	i32 3519931621, ; 830: 0xd1cde4e5 => java/net/URLConnection
	i32 3521416662, ; 831: 0xd1e48dd6 => androidx/core/view/ViewCompat
	i32 3532650525, ; 832: 0xd28ff81d => android/text/style/WrapTogetherSpan
	i32 3537398366, ; 833: 0xd2d86a5e => android/graphics/Paint$Cap
	i32 3539819542, ; 834: 0xd2fd5c16 => androidx/browser/customtabs/CustomTabsIntent
	i32 3541988144, ; 835: 0xd31e7330 => com/google/android/material/tabs/TabLayoutMediator
	i32 3546452765, ; 836: 0xd362931d => android/text/TextDirectionHeuristic
	i32 3549151004, ; 837: 0xd38bbf1c => android/provider/Settings
	i32 3551598929, ; 838: 0xd3b11951 => crc645d80431ce5f73f11/SimpleViewHolder
	i32 3551751493, ; 839: 0xd3b36d45 => android/content/pm/PackageManager$NameNotFoundException
	i32 3557984104, ; 840: 0xd4128768 => android/util/SizeF
	i32 3560870582, ; 841: 0xd43e92b6 => androidx/core/view/ViewPropertyAnimatorUpdateListener
	i32 3564799261, ; 842: 0xd47a851d => java/security/NoSuchAlgorithmException
	i32 3570179016, ; 843: 0xd4cc9bc8 => android/content/ActivityNotFoundException
	i32 3571274152, ; 844: 0xd4dd51a8 => androidx/appcompat/view/menu/MenuBuilder
	i32 3572718161, ; 845: 0xd4f35a51 => com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener
	i32 3576242387, ; 846: 0xd52920d3 => android/runtime/JavaProxyThrowable
	i32 3586408147, ; 847: 0xd5c43ed3 => crc640ec207abc449b2ca/ShellItemRendererBase
	i32 3597654493, ; 848: 0xd66fd9dd => android/widget/AbsListView
	i32 3602087815, ; 849: 0xd6b37f87 => crc645d80431ce5f73f11/EmptyViewAdapter
	i32 3607985239, ; 850: 0xd70d7c57 => androidx/recyclerview/widget/RecyclerView$State
	i32 3609809655, ; 851: 0xd72952f7 => android/os/CancellationSignal
	i32 3612341153, ; 852: 0xd74ff3a1 => androidx/navigation/fragment/FragmentNavigator$Destination
	i32 3614244735, ; 853: 0xd76cff7f => androidx/appcompat/app/ActionBar$Tab
	i32 3620937142, ; 854: 0xd7d31db6 => androidx/appcompat/app/ActionBar$TabListener
	i32 3634270919, ; 855: 0xd89e92c7 => android/graphics/drawable/AnimationDrawable
	i32 3639027368, ; 856: 0xd8e726a8 => kotlinx/coroutines/flow/FlowCollector
	i32 3651658816, ; 857: 0xd9a7e440 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener
	i32 3661246018, ; 858: 0xda3a2e42 => crc64e1fb321c08285b90/ViewRenderer
	i32 3665774669, ; 859: 0xda7f484d => android/view/LayoutInflater
	i32 3666243682, ; 860: 0xda867062 => java/lang/String
	i32 3666999915, ; 861: 0xda91fa6b => androidx/recyclerview/widget/RecyclerView$Adapter
	i32 3667804956, ; 862: 0xda9e431c => androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup
	i32 3669061717, ; 863: 0xdab17055 => java/net/InetSocketAddress
	i32 3673444347, ; 864: 0xdaf44ffb => android/view/accessibility/AccessibilityEvent
	i32 3675961650, ; 865: 0xdb1ab932 => crc643f2b18b2570eaa5a/PlatformGraphicsView
	i32 3680247283, ; 866: 0xdb5c1df3 => androidx/activity/ComponentDialog
	i32 3683323802, ; 867: 0xdb8b0f9a => mono/android/runtime/JavaObject
	i32 3684070586, ; 868: 0xdb9674ba => android/view/ActionProvider
	i32 3689014550, ; 869: 0xdbe1e516 => androidx/lifecycle/ViewModel
	i32 3694635824, ; 870: 0xdc37ab30 => mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor
	i32 3698769169, ; 871: 0xdc76bd11 => android/text/SpannableStringBuilder
	i32 3701331277, ; 872: 0xdc9dd54d => android/graphics/Paint$Style
	i32 3702230909, ; 873: 0xdcab8f7d => java/lang/Double
	i32 3711529970, ; 874: 0xdd3973f2 => android/text/style/MetricAffectingSpan
	i32 3715861037, ; 875: 0xdd7b8a2d => android/os/Build$VERSION
	i32 3721088312, ; 876: 0xddcb4d38 => android/text/NoCopySpan
	i32 3722843854, ; 877: 0xdde616ce => javax/net/SocketFactory
	i32 3722942310, ; 878: 0xdde79766 => android/text/method/NumberKeyListener
	i32 3725604931, ; 879: 0xde103843 => crc640ec207abc449b2ca/ShellSectionRenderer
	i32 3726680736, ; 880: 0xde20a2a0 => java/net/ProtocolException
	i32 3738171500, ; 881: 0xdecff86c => android/webkit/WebChromeClient
	i32 3753320089, ; 882: 0xdfb71e99 => android/text/style/TypefaceSpan
	i32 3759929762, ; 883: 0xe01bf9a2 => android/graphics/Bitmap
	i32 3760420180, ; 884: 0xe0237554 => androidx/drawerlayout/widget/DrawerLayout$DrawerListener
	i32 3762098798, ; 885: 0xe03d126e => androidx/activity/OnBackPressedDispatcher
	i32 3763853270, ; 886: 0xe057d7d6 => android/view/Window
	i32 3775242275, ; 887: 0xe105a023 => androidx/core/view/WindowInsetsControllerCompat
	i32 3784926020, ; 888: 0xe1996344 => androidx/customview/widget/Openable
	i32 3789916669, ; 889: 0xe1e589fd => javax/net/ssl/X509ExtendedTrustManager
	i32 3811192762, ; 890: 0xe32a2fba => android/content/res/TypedArray
	i32 3823421666, ; 891: 0xe3e4c8e2 => android/net/Uri
	i32 3826577394, ; 892: 0xe414eff2 => android/graphics/drawable/DrawableWrapper
	i32 3828089420, ; 893: 0xe42c024c => crc640ec207abc449b2ca/RecyclerViewContainer
	i32 3828108282, ; 894: 0xe42c4bfa => android/widget/TextView$BufferType
	i32 3843901295, ; 895: 0xe51d476f => mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor
	i32 3844217531, ; 896: 0xe5221abb => android/graphics/Path$FillType
	i32 3846932217, ; 897: 0xe54b86f9 => javax/net/ssl/X509TrustManager
	i32 3850251058, ; 898: 0xe57e2b32 => androidx/navigation/fragment/NavHostFragment
	i32 3855323559, ; 899: 0xe5cb91a7 => androidx/appcompat/view/ActionMode
	i32 3859315228, ; 900: 0xe6087a1c => androidx/viewpager2/adapter/FragmentViewHolder
	i32 3865571169, ; 901: 0xe667ef61 => android/content/res/XmlResourceParser
	i32 3867610942, ; 902: 0xe6870f3e => crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper
	i32 3872328841, ; 903: 0xe6cf0c89 => android/view/animation/BaseInterpolator
	i32 3872548923, ; 904: 0xe6d2683b => com/google/android/material/navigation/NavigationBarView
	i32 3872825215, ; 905: 0xe6d69f7f => android/graphics/ColorFilter
	i32 3882570516, ; 906: 0xe76b5314 => java/lang/Class
	i32 3884080736, ; 907: 0xe7825e60 => android/webkit/WebView
	i32 3884639814, ; 908: 0xe78ae646 => android/text/Html
	i32 3888053904, ; 909: 0xe7befe90 => com/google/android/material/appbar/MaterialToolbar
	i32 3895425567, ; 910: 0xe82f7a1f => androidx/core/app/SharedElementCallback
	i32 3896288302, ; 911: 0xe83ca42e => android/widget/ImageView
	i32 3900328001, ; 912: 0xe87a4841 => android/graphics/Typeface
	i32 3900581163, ; 913: 0xe87e252b => java/io/InputStream
	i32 3901837667, ; 914: 0xe8915163 => android/text/InputFilter
	i32 3906036904, ; 915: 0xe8d164a8 => android/webkit/ValueCallback
	i32 3908062719, ; 916: 0xe8f04dff => crc645d80431ce5f73f11/SelectableItemsViewAdapter_2
	i32 3912451735, ; 917: 0xe9334697 => java/security/KeyStore
	i32 3914339241, ; 918: 0xe95013a9 => kotlin/coroutines/CoroutineContext
	i32 3919758710, ; 919: 0xe9a2c576 => android/view/ContextMenu
	i32 3922115040, ; 920: 0xe9c6b9e0 => com/google/android/material/bottomsheet/BottomSheetBehavior
	i32 3922373341, ; 921: 0xe9caaadd => androidx/fragment/app/Fragment$SavedState
	i32 3922608828, ; 922: 0xe9ce42bc => android/text/method/MetaKeyKeyListener
	i32 3926239517, ; 923: 0xea05a91d => android/app/TimePickerDialog$OnTimeSetListener
	i32 3931120197, ; 924: 0xea502245 => mono/android/content/DialogInterface_OnClickListenerImplementor
	i32 3933245259, ; 925: 0xea708f4b => android/graphics/Rect
	i32 3938250520, ; 926: 0xeabcef18 => androidx/appcompat/widget/AppCompatCheckBox
	i32 3942801793, ; 927: 0xeb026181 => android/graphics/Region
	i32 3943749965, ; 928: 0xeb10d94d => android/content/pm/ShortcutManager
	i32 3944057747, ; 929: 0xeb158b93 => crc64338477404e88479c/GenericAnimatorListener
	i32 3948746266, ; 930: 0xeb5d161a => crc6452ffdc5b34af3a0f/NavigationViewFragment
	i32 3951994042, ; 931: 0xeb8ea4ba => androidx/collection/SparseArrayCompat
	i32 3960468864, ; 932: 0xec0ff580 => androidx/appcompat/widget/TintTypedArray
	i32 3969645507, ; 933: 0xec9bfbc3 => androidx/core/widget/TextViewCompat
	i32 3969984744, ; 934: 0xeca128e8 => mono/android/runtime/InputStreamAdapter
	i32 3970563914, ; 935: 0xeca9ff4a => crc64e97e4c875a74b65f/MainActivity
	i32 3972486565, ; 936: 0xecc755a5 => android/graphics/BitmapShader
	i32 3975001277, ; 937: 0xecedb4bd => javax/net/ssl/SSLSocketFactory
	i32 3984631894, ; 938: 0xed80a856 => crc645d80431ce5f73f11/CarouselSpacingItemDecoration
	i32 3993327007, ; 939: 0xee05559f => android/content/ContextWrapper
	i32 3995406185, ; 940: 0xee250f69 => android/graphics/Canvas
	i32 4011808769, ; 941: 0xef1f5801 => com/google/android/material/imageview/ShapeableImageView
	i32 4017528531, ; 942: 0xef769ed3 => crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener
	i32 4020308495, ; 943: 0xefa10a0f => java/lang/Error
	i32 4020645668, ; 944: 0xefa62f24 => android/graphics/drawable/DrawableContainer
	i32 4023386888, ; 945: 0xefd00308 => android/graphics/drawable/StateListDrawable
	i32 4026034127, ; 946: 0xeff867cf => androidx/core/view/PointerIconCompat
	i32 4029606005, ; 947: 0xf02ee875 => android/widget/FilterQueryProvider
	i32 4030673356, ; 948: 0xf03f31cc => android/app/Dialog
	i32 4030975555, ; 949: 0xf043ce43 => android/view/animation/Interpolator
	i32 4034484106, ; 950: 0xf079578a => crc6452ffdc5b34af3a0f/MauiMaterialButton
	i32 4035763391, ; 951: 0xf08cdcbf => android/view/View$OnDragListener
	i32 4038042141, ; 952: 0xf0afa21d => android/text/style/UnderlineSpan
	i32 4040218938, ; 953: 0xf0d0d93a => android/graphics/drawable/RippleDrawable
	i32 4042628807, ; 954: 0xf0f59ec7 => androidx/recyclerview/widget/GridLayoutManager
	i32 4045677067, ; 955: 0xf124220b => crc64f728827fec74e9c3/TapWindowTracker_GestureListener
	i32 4051772911, ; 956: 0xf18125ef => android/content/Context
	i32 4058436930, ; 957: 0xf1e6d542 => android/view/GestureDetector
	i32 4060380528, ; 958: 0xf2047d70 => android/view/WindowInsetsAnimation
	i32 4063030113, ; 959: 0xf22ceb61 => crc64e1fb321c08285b90/TextCellRenderer_TextCellView
	i32 4066255456, ; 960: 0xf25e2260 => android/util/SparseArray
	i32 4066716669, ; 961: 0xf2652bfd => com/google/android/material/shape/ShapePath
	i32 4082636076, ; 962: 0xf358152c => androidx/fragment/app/FragmentHostCallback
	i32 4087518402, ; 963: 0xf3a294c2 => mono/android/view/View_OnTouchListenerImplementor
	i32 4088038176, ; 964: 0xf3aa8320 => java/io/Reader
	i32 4094719362, ; 965: 0xf4107582 => androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments
	i32 4096216012, ; 966: 0xf4274bcc => crc6452ffdc5b34af3a0f/MauiHorizontalScrollView
	i32 4098107575, ; 967: 0xf44428b7 => mono/android/view/View_OnClickListenerImplementor
	i32 4099031450, ; 968: 0xf452419a => androidx/core/view/DisplayCutoutCompat
	i32 4101363546, ; 969: 0xf475d75a => java/io/Writer
	i32 4101882262, ; 970: 0xf47dc196 => androidx/viewpager/widget/PagerAdapter
	i32 4103358926, ; 971: 0xf49449ce => crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView
	i32 4104288849, ; 972: 0xf4a27a51 => android/text/TextUtils$TruncateAt
	i32 4108451858, ; 973: 0xf4e20012 => crc64ed1888fb4925e3b7/AuthenticationAgentActivity_CoreWebViewClient
	i32 4112982215, ; 974: 0xf52720c7 => androidx/loader/content/Loader$OnLoadCanceledListener
	i32 4115120460, ; 975: 0xf547c14c => crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout
	i32 4116628111, ; 976: 0xf55ec28f => androidx/lifecycle/LifecycleObserver
	i32 4118683314, ; 977: 0xf57e1eb2 => androidx/navigation/ui/AppBarConfiguration$Builder
	i32 4118831524, ; 978: 0xf58061a4 => androidx/viewpager/widget/ViewPager$OnPageChangeListener
	i32 4118878202, ; 979: 0xf58117fa => android/os/Looper
	i32 4127266501, ; 980: 0xf60116c5 => mono/android/widget/AdapterView_OnItemClickListenerImplementor
	i32 4128216147, ; 981: 0xf60f9453 => crc64e1fb321c08285b90/VisualElementRenderer_1
	i32 4129306385, ; 982: 0xf6203711 => com/google/android/material/internal/StaticLayoutBuilderConfigurer
	i32 4134800831, ; 983: 0xf6740dbf => mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor
	i32 4137330413, ; 984: 0xf69aa6ed => android/content/pm/ShortcutInfo$Builder
	i32 4138958204, ; 985: 0xf6b37d7c => androidx/loader/app/LoaderManager$LoaderCallbacks
	i32 4142301000, ; 986: 0xf6e67f48 => androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
	i32 4143999052, ; 987: 0xf700684c => crc6452ffdc5b34af3a0f/MauiWebViewClient
	i32 4148577720, ; 988: 0xf74645b8 => androidx/core/app/ComponentActivity
	i32 4148593869, ; 989: 0xf74684cd => javax/net/ssl/TrustManagerFactory
	i32 4157808693, ; 990: 0xf7d32035 => java/io/IOException
	i32 4166165970, ; 991: 0xf852a5d2 => android/text/TextWatcher
	i32 4167305683, ; 992: 0xf86409d3 => androidx/activity/result/contract/ActivityResultContract$SynchronousResult
	i32 4180441522, ; 993: 0xf92c79b2 => androidx/appcompat/app/AlertDialog
	i32 4184365991, ; 994: 0xf9685ba7 => crc640ec207abc449b2ca/ShellContentFragment
	i32 4195364970, ; 995: 0xfa10306a => android/graphics/Region$Op
	i32 4200099307, ; 996: 0xfa586deb => crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks
	i32 4203502565, ; 997: 0xfa8c5be5 => android/graphics/Bitmap$CompressFormat
	i32 4209385953, ; 998: 0xfae621e1 => com/google/android/material/bottomnavigation/BottomNavigationView
	i32 4210334537, ; 999: 0xfaf49b49 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener
	i32 4211567724, ; 1000: 0xfb076c6c => android/view/ScaleGestureDetector$OnScaleGestureListener
	i32 4219996554, ; 1001: 0xfb88098a => androidx/recyclerview/widget/RecyclerView$ItemAnimator
	i32 4223518113, ; 1002: 0xfbbdc5a1 => android/text/style/StrikethroughSpan
	i32 4224328081, ; 1003: 0xfbca2191 => mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor
	i32 4232707919, ; 1004: 0xfc49ff4f => java/util/HashSet
	i32 4236355936, ; 1005: 0xfc81a960 => android/view/ViewTreeObserver$OnGlobalLayoutListener
	i32 4236724582, ; 1006: 0xfc874966 => android/os/Parcelable
	i32 4237386260, ; 1007: 0xfc916214 => android/view/MenuItem$OnMenuItemClickListener
	i32 4238854579, ; 1008: 0xfca7c9b3 => androidx/browser/customtabs/CustomTabsSession
	i32 4248811056, ; 1009: 0xfd3fb630 => android/view/Menu
	i32 4250389251, ; 1010: 0xfd57cb03 => android/text/style/BackgroundColorSpan
	i32 4257868140, ; 1011: 0xfdc9e96c => crc6452ffdc5b34af3a0f/MauiTextView
	i32 4268216374, ; 1012: 0xfe67d036 => androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks
	i32 4271127433, ; 1013: 0xfe943b89 => android/graphics/PorterDuff
	i32 4272821305, ; 1014: 0xfeae1439 => androidx/lifecycle/ViewModelProvider$Factory
	i32 4274067371, ; 1015: 0xfec117ab => androidx/core/view/accessibility/AccessibilityNodeInfoCompat
	i32 4275615380, ; 1016: 0xfed8b694 => crc64338477404e88479c/GenericGlobalLayoutListener
	i32 4277523103, ; 1017: 0xfef5d29f => java/io/Closeable
	i32 4278949669, ; 1018: 0xff0b9725 => android/widget/CompoundButton$OnCheckedChangeListener
	i32 4282423861, ; 1019: 0xff409a35 => com/microsoft/maui/MauiViewGroup
	i32 4285233142, ; 1020: 0xff6b77f6 => androidx/core/view/accessibility/AccessibilityNodeProviderCompat
	i32 4290775940 ; 1021: 0xffc00b84 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener
], align 4

@module0_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 219; uint32_t java_map_index (0xdb)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 213; uint32_t java_map_index (0xd5)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 50; uint32_t java_map_index (0x32)
	} ; 2
], align 4

@module0_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 219; uint32_t java_map_index (0xdb)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 213; uint32_t java_map_index (0xd5)
	} ; 1
], align 4

@module1_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 970; uint32_t java_map_index (0x3ca)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 234; uint32_t java_map_index (0xea)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 702; uint32_t java_map_index (0x2be)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 66; uint32_t java_map_index (0x42)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 978; uint32_t java_map_index (0x3d2)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 491; uint32_t java_map_index (0x1eb)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 201; uint32_t java_map_index (0xc9)
	} ; 6
], align 4

@module1_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 970; uint32_t java_map_index (0x3ca)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 702; uint32_t java_map_index (0x2be)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 978; uint32_t java_map_index (0x3d2)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 201; uint32_t java_map_index (0xc9)
	} ; 3
], align 4

@module2_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 780; uint32_t java_map_index (0x30c)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 856; uint32_t java_map_index (0x358)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 510; uint32_t java_map_index (0x1fe)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 206; uint32_t java_map_index (0xce)
	} ; 3
], align 4

@module2_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 780; uint32_t java_map_index (0x30c)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 856; uint32_t java_map_index (0x358)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 510; uint32_t java_map_index (0x1fe)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 206; uint32_t java_map_index (0xce)
	} ; 3
], align 4

@module3_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 718; uint32_t java_map_index (0x2ce)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 85; uint32_t java_map_index (0x55)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 184; uint32_t java_map_index (0xb8)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 776; uint32_t java_map_index (0x308)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 444; uint32_t java_map_index (0x1bc)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 293; uint32_t java_map_index (0x125)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 508; uint32_t java_map_index (0x1fc)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 398; uint32_t java_map_index (0x18e)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 918; uint32_t java_map_index (0x396)
	} ; 8
], align 4

@module3_managed_to_java_duplicates = internal dso_local constant [8 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 718; uint32_t java_map_index (0x2ce)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 85; uint32_t java_map_index (0x55)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 776; uint32_t java_map_index (0x308)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 444; uint32_t java_map_index (0x1bc)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 293; uint32_t java_map_index (0x125)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 508; uint32_t java_map_index (0x1fc)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 398; uint32_t java_map_index (0x18e)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 918; uint32_t java_map_index (0x396)
	} ; 7
], align 4

@module4_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 865; uint32_t java_map_index (0x361)
	} ; 0
], align 4

@module5_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 145; uint32_t java_map_index (0x91)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 974; uint32_t java_map_index (0x3ce)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 63; uint32_t java_map_index (0x3f)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 509; uint32_t java_map_index (0x1fd)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 985; uint32_t java_map_index (0x3d9)
	} ; 4
], align 4

@module5_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 974; uint32_t java_map_index (0x3ce)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 63; uint32_t java_map_index (0x3f)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 985; uint32_t java_map_index (0x3d9)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 509; uint32_t java_map_index (0x1fd)
	} ; 3
], align 4

@module6_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 256; uint32_t java_map_index (0x100)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 884; uint32_t java_map_index (0x374)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 755; uint32_t java_map_index (0x2f3)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 223; uint32_t java_map_index (0xdf)
	} ; 3
], align 4

@module6_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 884; uint32_t java_map_index (0x374)
	} ; 0
], align 4

@module7_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 573; uint32_t java_map_index (0x23d)
	} ; 0
], align 4

@module7_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 573; uint32_t java_map_index (0x23d)
	} ; 0
], align 4

@module8_managed_to_java = internal dso_local constant [12 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 125; uint32_t java_map_index (0x7d)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 866; uint32_t java_map_index (0x362)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 785; uint32_t java_map_index (0x311)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 26; uint32_t java_map_index (0x1a)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 885; uint32_t java_map_index (0x375)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 33; uint32_t java_map_index (0x21)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 870; uint32_t java_map_index (0x366)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 254; uint32_t java_map_index (0xfe)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 661; uint32_t java_map_index (0x295)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 553; uint32_t java_map_index (0x229)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 36; uint32_t java_map_index (0x24)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 992; uint32_t java_map_index (0x3e0)
	} ; 11
], align 4

@module8_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 26; uint32_t java_map_index (0x1a)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 33; uint32_t java_map_index (0x21)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 254; uint32_t java_map_index (0xfe)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 661; uint32_t java_map_index (0x295)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 553; uint32_t java_map_index (0x229)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 36; uint32_t java_map_index (0x24)
	} ; 5
], align 4

@module9_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 522; uint32_t java_map_index (0x20a)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 454; uint32_t java_map_index (0x1c6)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 525; uint32_t java_map_index (0x20d)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 976; uint32_t java_map_index (0x3d0)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 80; uint32_t java_map_index (0x50)
	} ; 4
], align 4

@module9_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 976; uint32_t java_map_index (0x3d0)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 80; uint32_t java_map_index (0x50)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 522; uint32_t java_map_index (0x20a)
	} ; 2
], align 4

@module10_managed_to_java = internal dso_local constant [56 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 180; uint32_t java_map_index (0xb4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 993; uint32_t java_map_index (0x3e1)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 464; uint32_t java_map_index (0x1d0)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 355; uint32_t java_map_index (0x163)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 215; uint32_t java_map_index (0xd7)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 434; uint32_t java_map_index (0x1b2)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 701; uint32_t java_map_index (0x2bd)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 716; uint32_t java_map_index (0x2cc)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 253; uint32_t java_map_index (0xfd)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 818; uint32_t java_map_index (0x332)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 133; uint32_t java_map_index (0x85)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 853; uint32_t java_map_index (0x355)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 854; uint32_t java_map_index (0x356)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 735; uint32_t java_map_index (0x2df)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 210; uint32_t java_map_index (0xd2)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 138; uint32_t java_map_index (0x8a)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 628; uint32_t java_map_index (0x274)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 823; uint32_t java_map_index (0x337)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 302; uint32_t java_map_index (0x12e)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 150; uint32_t java_map_index (0x96)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 445; uint32_t java_map_index (0x1bd)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 314; uint32_t java_map_index (0x13a)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 766; uint32_t java_map_index (0x2fe)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 368; uint32_t java_map_index (0x170)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 269; uint32_t java_map_index (0x10d)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 673; uint32_t java_map_index (0x2a1)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 926; uint32_t java_map_index (0x39e)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 613; uint32_t java_map_index (0x265)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 544; uint32_t java_map_index (0x220)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 478; uint32_t java_map_index (0x1de)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 75; uint32_t java_map_index (0x4b)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 372; uint32_t java_map_index (0x174)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 18; uint32_t java_map_index (0x12)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 761; uint32_t java_map_index (0x2f9)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 986; uint32_t java_map_index (0x3da)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 535; uint32_t java_map_index (0x217)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 96; uint32_t java_map_index (0x60)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 159; uint32_t java_map_index (0x9f)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 423; uint32_t java_map_index (0x1a7)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 10; uint32_t java_map_index (0xa)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 506; uint32_t java_map_index (0x1fa)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 171; uint32_t java_map_index (0xab)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 666; uint32_t java_map_index (0x29a)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 751; uint32_t java_map_index (0x2ef)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 654; uint32_t java_map_index (0x28e)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 932; uint32_t java_map_index (0x3a4)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 531; uint32_t java_map_index (0x213)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 899; uint32_t java_map_index (0x383)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 286; uint32_t java_map_index (0x11e)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 844; uint32_t java_map_index (0x34c)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 753; uint32_t java_map_index (0x2f1)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 353; uint32_t java_map_index (0x161)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 312; uint32_t java_map_index (0x138)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 333; uint32_t java_map_index (0x14d)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 752; uint32_t java_map_index (0x2f0)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 424; uint32_t java_map_index (0x1a8)
	} ; 55
], align 4

@module10_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 253; uint32_t java_map_index (0xfd)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 133; uint32_t java_map_index (0x85)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 853; uint32_t java_map_index (0x355)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 854; uint32_t java_map_index (0x356)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 701; uint32_t java_map_index (0x2bd)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 210; uint32_t java_map_index (0xd2)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 628; uint32_t java_map_index (0x274)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 302; uint32_t java_map_index (0x12e)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 766; uint32_t java_map_index (0x2fe)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 18; uint32_t java_map_index (0x12)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 423; uint32_t java_map_index (0x1a7)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 506; uint32_t java_map_index (0x1fa)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 666; uint32_t java_map_index (0x29a)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 286; uint32_t java_map_index (0x11e)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 899; uint32_t java_map_index (0x383)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 753; uint32_t java_map_index (0x2f1)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 353; uint32_t java_map_index (0x161)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 312; uint32_t java_map_index (0x138)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 333; uint32_t java_map_index (0x14d)
	} ; 18
], align 4

@module11_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 311; uint32_t java_map_index (0x137)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 852; uint32_t java_map_index (0x354)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 898; uint32_t java_map_index (0x382)
	} ; 2
], align 4

@module12_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 287; uint32_t java_map_index (0x11f)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 526; uint32_t java_map_index (0x20e)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 730; uint32_t java_map_index (0x2da)
	} ; 2
], align 4

@module12_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 526; uint32_t java_map_index (0x20e)
	} ; 0
], align 4

@module13_managed_to_java = internal dso_local constant [67 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 711; uint32_t java_map_index (0x2c7)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 25; uint32_t java_map_index (0x19)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 77; uint32_t java_map_index (0x4d)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 804; uint32_t java_map_index (0x324)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 299; uint32_t java_map_index (0x12b)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 819; uint32_t java_map_index (0x333)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 376; uint32_t java_map_index (0x178)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 1019; uint32_t java_map_index (0x3fb)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 722; uint32_t java_map_index (0x2d2)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 603; uint32_t java_map_index (0x25b)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 166; uint32_t java_map_index (0xa6)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 46; uint32_t java_map_index (0x2e)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 760; uint32_t java_map_index (0x2f8)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 390; uint32_t java_map_index (0x186)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554714, ; uint32_t type_token_id (0x200011a)
		i32 902; uint32_t java_map_index (0x386)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 554; uint32_t java_map_index (0x22a)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 40; uint32_t java_map_index (0x28)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554727, ; uint32_t type_token_id (0x2000127)
		i32 590; uint32_t java_map_index (0x24e)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554744, ; uint32_t type_token_id (0x2000138)
		i32 186; uint32_t java_map_index (0xba)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 294; uint32_t java_map_index (0x126)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 609; uint32_t java_map_index (0x261)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 641; uint32_t java_map_index (0x281)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 672; uint32_t java_map_index (0x2a0)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 452; uint32_t java_map_index (0x1c4)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 625; uint32_t java_map_index (0x271)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 950; uint32_t java_map_index (0x3b6)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 430; uint32_t java_map_index (0x1ae)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554755, ; uint32_t type_token_id (0x2000143)
		i32 99; uint32_t java_map_index (0x63)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 387; uint32_t java_map_index (0x183)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554758, ; uint32_t type_token_id (0x2000146)
		i32 669; uint32_t java_map_index (0x29d)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 966; uint32_t java_map_index (0x3c6)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 135; uint32_t java_map_index (0x87)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 64; uint32_t java_map_index (0x40)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 101; uint32_t java_map_index (0x65)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 975; uint32_t java_map_index (0x3cf)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554765, ; uint32_t type_token_id (0x200014d)
		i32 1; uint32_t java_map_index (0x1)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 1011; uint32_t java_map_index (0x3f3)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 410; uint32_t java_map_index (0x19a)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 204; uint32_t java_map_index (0xcc)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554770, ; uint32_t type_token_id (0x2000152)
		i32 538; uint32_t java_map_index (0x21a)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 987; uint32_t java_map_index (0x3db)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 228; uint32_t java_map_index (0xe4)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554776, ; uint32_t type_token_id (0x2000158)
		i32 930; uint32_t java_map_index (0x3a2)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554777, ; uint32_t type_token_id (0x2000159)
		i32 12; uint32_t java_map_index (0xc)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554779, ; uint32_t type_token_id (0x200015b)
		i32 359; uint32_t java_map_index (0x167)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554782, ; uint32_t type_token_id (0x200015e)
		i32 120; uint32_t java_map_index (0x78)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554794, ; uint32_t type_token_id (0x200016a)
		i32 462; uint32_t java_map_index (0x1ce)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554797, ; uint32_t type_token_id (0x200016d)
		i32 588; uint32_t java_map_index (0x24c)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554809, ; uint32_t type_token_id (0x2000179)
		i32 537; uint32_t java_map_index (0x219)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554983, ; uint32_t type_token_id (0x2000227)
		i32 365; uint32_t java_map_index (0x16d)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554984, ; uint32_t type_token_id (0x2000228)
		i32 648; uint32_t java_map_index (0x288)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554990, ; uint32_t type_token_id (0x200022e)
		i32 497; uint32_t java_map_index (0x1f1)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33555061, ; uint32_t type_token_id (0x2000275)
		i32 615; uint32_t java_map_index (0x267)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33555103, ; uint32_t type_token_id (0x200029f)
		i32 996; uint32_t java_map_index (0x3e4)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33555108, ; uint32_t type_token_id (0x20002a4)
		i32 746; uint32_t java_map_index (0x2ea)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33555109, ; uint32_t type_token_id (0x20002a5)
		i32 471; uint32_t java_map_index (0x1d7)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 181; uint32_t java_map_index (0xb5)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33555117, ; uint32_t type_token_id (0x20002ad)
		i32 745; uint32_t java_map_index (0x2e9)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33555122, ; uint32_t type_token_id (0x20002b2)
		i32 942; uint32_t java_map_index (0x3ae)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33555133, ; uint32_t type_token_id (0x20002bd)
		i32 572; uint32_t java_map_index (0x23c)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 656; uint32_t java_map_index (0x290)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 301; uint32_t java_map_index (0x12d)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 502; uint32_t java_map_index (0x1f6)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 428; uint32_t java_map_index (0x1ac)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 146; uint32_t java_map_index (0x92)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 779; uint32_t java_map_index (0x30b)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33555236, ; uint32_t type_token_id (0x2000324)
		i32 153; uint32_t java_map_index (0x99)
	} ; 66
], align 4

@module13_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 376; uint32_t java_map_index (0x178)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 603; uint32_t java_map_index (0x25b)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554709, ; uint32_t type_token_id (0x2000115)
		i32 390; uint32_t java_map_index (0x186)
	} ; 2
], align 4

@module14_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 551; uint32_t java_map_index (0x227)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 869; uint32_t java_map_index (0x365)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 450; uint32_t java_map_index (0x1c2)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 111; uint32_t java_map_index (0x6f)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 1014; uint32_t java_map_index (0x3f6)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 401; uint32_t java_map_index (0x191)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 813; uint32_t java_map_index (0x32d)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 364; uint32_t java_map_index (0x16c)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 653; uint32_t java_map_index (0x28d)
	} ; 8
], align 4

@module14_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 551; uint32_t java_map_index (0x227)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 869; uint32_t java_map_index (0x365)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 1014; uint32_t java_map_index (0x3f6)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 364; uint32_t java_map_index (0x16c)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 813; uint32_t java_map_index (0x32d)
	} ; 4
], align 4

@module15_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 931; uint32_t java_map_index (0x3a3)
	} ; 0
], align 4

@module16_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 676; uint32_t java_map_index (0x2a4)
	} ; 0
], align 4

@module17_managed_to_java = internal dso_local constant [67 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 677; uint32_t java_map_index (0x2a5)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 467; uint32_t java_map_index (0x1d3)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 726; uint32_t java_map_index (0x2d6)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 123; uint32_t java_map_index (0x7b)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 220; uint32_t java_map_index (0xdc)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 768; uint32_t java_map_index (0x300)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 16; uint32_t java_map_index (0x10)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 22; uint32_t java_map_index (0x16)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 961; uint32_t java_map_index (0x3c1)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 164; uint32_t java_map_index (0xa4)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 941; uint32_t java_map_index (0x3ad)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 476; uint32_t java_map_index (0x1dc)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 546; uint32_t java_map_index (0x222)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 488; uint32_t java_map_index (0x1e8)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 167; uint32_t java_map_index (0xa7)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 451; uint32_t java_map_index (0x1c3)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 983; uint32_t java_map_index (0x3d7)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 420; uint32_t java_map_index (0x1a4)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 44; uint32_t java_map_index (0x2c)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 39; uint32_t java_map_index (0x27)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 920; uint32_t java_map_index (0x398)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 734; uint32_t java_map_index (0x2de)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 468; uint32_t java_map_index (0x1d4)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 433; uint32_t java_map_index (0x1b1)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 904; uint32_t java_map_index (0x388)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 100; uint32_t java_map_index (0x64)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 581; uint32_t java_map_index (0x245)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 284; uint32_t java_map_index (0x11c)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 895; uint32_t java_map_index (0x37f)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 188; uint32_t java_map_index (0xbc)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 781; uint32_t java_map_index (0x30d)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 203; uint32_t java_map_index (0xcb)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 630; uint32_t java_map_index (0x276)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 793; uint32_t java_map_index (0x319)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 249; uint32_t java_map_index (0xf9)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 519; uint32_t java_map_index (0x207)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 239; uint32_t java_map_index (0xef)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 521; uint32_t java_map_index (0x209)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 275; uint32_t java_map_index (0x113)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 607; uint32_t java_map_index (0x25f)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 815; uint32_t java_map_index (0x32f)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 835; uint32_t java_map_index (0x343)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 340; uint32_t java_map_index (0x154)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 982; uint32_t java_map_index (0x3d6)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 141; uint32_t java_map_index (0x8d)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 828; uint32_t java_map_index (0x33c)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 266; uint32_t java_map_index (0x10a)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 998; uint32_t java_map_index (0x3e6)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554588, ; uint32_t type_token_id (0x200009c)
		i32 999; uint32_t java_map_index (0x3e7)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554590, ; uint32_t type_token_id (0x200009e)
		i32 1021; uint32_t java_map_index (0x3fd)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 72; uint32_t java_map_index (0x48)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 209; uint32_t java_map_index (0xd1)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 516; uint32_t java_map_index (0x204)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 374; uint32_t java_map_index (0x176)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 308; uint32_t java_map_index (0x134)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 431; uint32_t java_map_index (0x1af)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 585; uint32_t java_map_index (0x249)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 58; uint32_t java_map_index (0x3a)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554603, ; uint32_t type_token_id (0x20000ab)
		i32 405; uint32_t java_map_index (0x195)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 461; uint32_t java_map_index (0x1cd)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 845; uint32_t java_map_index (0x34d)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 496; uint32_t java_map_index (0x1f0)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 49; uint32_t java_map_index (0x31)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 295; uint32_t java_map_index (0x127)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 598; uint32_t java_map_index (0x256)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 909; uint32_t java_map_index (0x38d)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 550; uint32_t java_map_index (0x226)
	} ; 66
], align 4

@module17_managed_to_java_duplicates = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 726; uint32_t java_map_index (0x2d6)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 22; uint32_t java_map_index (0x16)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 488; uint32_t java_map_index (0x1e8)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 451; uint32_t java_map_index (0x1c3)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 44; uint32_t java_map_index (0x2c)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 734; uint32_t java_map_index (0x2de)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 100; uint32_t java_map_index (0x64)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 284; uint32_t java_map_index (0x11c)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 188; uint32_t java_map_index (0xbc)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 781; uint32_t java_map_index (0x30d)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 904; uint32_t java_map_index (0x388)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 793; uint32_t java_map_index (0x319)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 521; uint32_t java_map_index (0x209)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 607; uint32_t java_map_index (0x25f)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 340; uint32_t java_map_index (0x154)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 982; uint32_t java_map_index (0x3d6)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554589, ; uint32_t type_token_id (0x200009d)
		i32 999; uint32_t java_map_index (0x3e7)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554591, ; uint32_t type_token_id (0x200009f)
		i32 1021; uint32_t java_map_index (0x3fd)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 209; uint32_t java_map_index (0xd1)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554598, ; uint32_t type_token_id (0x20000a6)
		i32 308; uint32_t java_map_index (0x134)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 585; uint32_t java_map_index (0x249)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 405; uint32_t java_map_index (0x195)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 845; uint32_t java_map_index (0x34d)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 295; uint32_t java_map_index (0x127)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 598; uint32_t java_map_index (0x256)
	} ; 24
], align 4

@module18_managed_to_java = internal dso_local constant [17 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 395; uint32_t java_map_index (0x18b)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 377; uint32_t java_map_index (0x179)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 427; uint32_t java_map_index (0x1ab)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 460; uint32_t java_map_index (0x1cc)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 792; uint32_t java_map_index (0x318)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 47; uint32_t java_map_index (0x2f)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 624; uint32_t java_map_index (0x270)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 520; uint32_t java_map_index (0x208)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 392; uint32_t java_map_index (0x188)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 515; uint32_t java_map_index (0x203)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 499; uint32_t java_map_index (0x1f3)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 54; uint32_t java_map_index (0x36)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 536; uint32_t java_map_index (0x218)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 19; uint32_t java_map_index (0x13)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 764; uint32_t java_map_index (0x2fc)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 371; uint32_t java_map_index (0x173)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 774; uint32_t java_map_index (0x306)
	} ; 16
], align 4

@module18_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 395; uint32_t java_map_index (0x18b)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 377; uint32_t java_map_index (0x179)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 536; uint32_t java_map_index (0x218)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 54; uint32_t java_map_index (0x36)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554464, ; uint32_t type_token_id (0x2000020)
		i32 764; uint32_t java_map_index (0x2fc)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 774; uint32_t java_map_index (0x306)
	} ; 5
], align 4

@module19_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 336; uint32_t java_map_index (0x150)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 514; uint32_t java_map_index (0x202)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 282; uint32_t java_map_index (0x11a)
	} ; 2
], align 4

@module20_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 935; uint32_t java_map_index (0x3a7)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 265; uint32_t java_map_index (0x109)
	} ; 1
], align 4

@module21_managed_to_java = internal dso_local constant [477 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 165; uint32_t java_map_index (0xa5)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 245; uint32_t java_map_index (0xf5)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 422; uint32_t java_map_index (0x1a6)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 527; uint32_t java_map_index (0x20f)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 587; uint32_t java_map_index (0x24b)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 283; uint32_t java_map_index (0x11b)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 56; uint32_t java_map_index (0x38)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 348; uint32_t java_map_index (0x15c)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 877; uint32_t java_map_index (0x36d)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 812; uint32_t java_map_index (0x32c)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554613, ; uint32_t type_token_id (0x20000b5)
		i32 640; uint32_t java_map_index (0x280)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554615, ; uint32_t type_token_id (0x20000b7)
		i32 318; uint32_t java_map_index (0x13e)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554617, ; uint32_t type_token_id (0x20000b9)
		i32 790; uint32_t java_map_index (0x316)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554619, ; uint32_t type_token_id (0x20000bb)
		i32 28; uint32_t java_map_index (0x1c)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 191; uint32_t java_map_index (0xbf)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554623, ; uint32_t type_token_id (0x20000bf)
		i32 897; uint32_t java_map_index (0x381)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554625, ; uint32_t type_token_id (0x20000c1)
		i32 246; uint32_t java_map_index (0xf6)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554626, ; uint32_t type_token_id (0x20000c2)
		i32 304; uint32_t java_map_index (0x130)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554627, ; uint32_t type_token_id (0x20000c3)
		i32 530; uint32_t java_map_index (0x212)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554629, ; uint32_t type_token_id (0x20000c5)
		i32 937; uint32_t java_map_index (0x3a9)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554631, ; uint32_t type_token_id (0x20000c7)
		i32 989; uint32_t java_map_index (0x3dd)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 889; uint32_t java_map_index (0x379)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554634, ; uint32_t type_token_id (0x20000ca)
		i32 42; uint32_t java_map_index (0x2a)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554636, ; uint32_t type_token_id (0x20000cc)
		i32 589; uint32_t java_map_index (0x24d)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 848; uint32_t java_map_index (0x350)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554639, ; uint32_t type_token_id (0x20000cf)
		i32 73; uint32_t java_map_index (0x49)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554643, ; uint32_t type_token_id (0x20000d3)
		i32 233; uint32_t java_map_index (0xe9)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554644, ; uint32_t type_token_id (0x20000d4)
		i32 504; uint32_t java_map_index (0x1f8)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554646, ; uint32_t type_token_id (0x20000d6)
		i32 482; uint32_t java_map_index (0x1e2)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554647, ; uint32_t type_token_id (0x20000d7)
		i32 472; uint32_t java_map_index (0x1d8)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 980; uint32_t java_map_index (0x3d4)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554651, ; uint32_t type_token_id (0x20000db)
		i32 255; uint32_t java_map_index (0xff)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554653, ; uint32_t type_token_id (0x20000dd)
		i32 455; uint32_t java_map_index (0x1c7)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554656, ; uint32_t type_token_id (0x20000e0)
		i32 366; uint32_t java_map_index (0x16e)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554660, ; uint32_t type_token_id (0x20000e4)
		i32 622; uint32_t java_map_index (0x26e)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 357; uint32_t java_map_index (0x165)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554663, ; uint32_t type_token_id (0x20000e7)
		i32 389; uint32_t java_map_index (0x185)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554664, ; uint32_t type_token_id (0x20000e8)
		i32 393; uint32_t java_map_index (0x189)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554665, ; uint32_t type_token_id (0x20000e9)
		i32 1018; uint32_t java_map_index (0x3fa)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 523; uint32_t java_map_index (0x20b)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554673, ; uint32_t type_token_id (0x20000f1)
		i32 52; uint32_t java_map_index (0x34)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554674, ; uint32_t type_token_id (0x20000f2)
		i32 391; uint32_t java_map_index (0x187)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554675, ; uint32_t type_token_id (0x20000f3)
		i32 222; uint32_t java_map_index (0xde)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554676, ; uint32_t type_token_id (0x20000f4)
		i32 121; uint32_t java_map_index (0x79)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554677, ; uint32_t type_token_id (0x20000f5)
		i32 292; uint32_t java_map_index (0x124)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554679, ; uint32_t type_token_id (0x20000f7)
		i32 402; uint32_t java_map_index (0x192)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554680, ; uint32_t type_token_id (0x20000f8)
		i32 480; uint32_t java_map_index (0x1e0)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554681, ; uint32_t type_token_id (0x20000f9)
		i32 212; uint32_t java_map_index (0xd4)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554682, ; uint32_t type_token_id (0x20000fa)
		i32 644; uint32_t java_map_index (0x284)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554684, ; uint32_t type_token_id (0x20000fc)
		i32 303; uint32_t java_map_index (0x12f)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554686, ; uint32_t type_token_id (0x20000fe)
		i32 947; uint32_t java_map_index (0x3b3)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554688, ; uint32_t type_token_id (0x2000100)
		i32 7; uint32_t java_map_index (0x7)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554690, ; uint32_t type_token_id (0x2000102)
		i32 638; uint32_t java_map_index (0x27e)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554691, ; uint32_t type_token_id (0x2000103)
		i32 911; uint32_t java_map_index (0x38f)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 616; uint32_t java_map_index (0x268)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554693, ; uint32_t type_token_id (0x2000105)
		i32 117; uint32_t java_map_index (0x75)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554695, ; uint32_t type_token_id (0x2000107)
		i32 495; uint32_t java_map_index (0x1ef)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 436; uint32_t java_map_index (0x1b4)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 337; uint32_t java_map_index (0x151)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 699; uint32_t java_map_index (0x2bb)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 343; uint32_t java_map_index (0x157)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 263; uint32_t java_map_index (0x107)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 161; uint32_t java_map_index (0xa1)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 448; uint32_t java_map_index (0x1c0)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 185; uint32_t java_map_index (0xb9)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 559; uint32_t java_map_index (0x22f)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 770; uint32_t java_map_index (0x302)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 291; uint32_t java_map_index (0x123)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554709, ; uint32_t type_token_id (0x2000115)
		i32 560; uint32_t java_map_index (0x230)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554710, ; uint32_t type_token_id (0x2000116)
		i32 647; uint32_t java_map_index (0x287)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554711, ; uint32_t type_token_id (0x2000117)
		i32 894; uint32_t java_map_index (0x37e)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554712, ; uint32_t type_token_id (0x2000118)
		i32 248; uint32_t java_map_index (0xf8)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554715, ; uint32_t type_token_id (0x200011b)
		i32 571; uint32_t java_map_index (0x23b)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554719, ; uint32_t type_token_id (0x200011f)
		i32 484; uint32_t java_map_index (0x1e4)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 375; uint32_t java_map_index (0x177)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554727, ; uint32_t type_token_id (0x2000127)
		i32 915; uint32_t java_map_index (0x393)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554729, ; uint32_t type_token_id (0x2000129)
		i32 652; uint32_t java_map_index (0x28c)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554731, ; uint32_t type_token_id (0x200012b)
		i32 881; uint32_t java_map_index (0x371)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554732, ; uint32_t type_token_id (0x200012c)
		i32 490; uint32_t java_map_index (0x1ea)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554734, ; uint32_t type_token_id (0x200012e)
		i32 737; uint32_t java_map_index (0x2e1)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554736, ; uint32_t type_token_id (0x2000130)
		i32 595; uint32_t java_map_index (0x253)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554738, ; uint32_t type_token_id (0x2000132)
		i32 907; uint32_t java_map_index (0x38b)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554739, ; uint32_t type_token_id (0x2000133)
		i32 642; uint32_t java_map_index (0x282)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554742, ; uint32_t type_token_id (0x2000136)
		i32 576; uint32_t java_map_index (0x240)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 512; uint32_t java_map_index (0x200)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554744, ; uint32_t type_token_id (0x2000138)
		i32 21; uint32_t java_map_index (0x15)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554745, ; uint32_t type_token_id (0x2000139)
		i32 693; uint32_t java_map_index (0x2b5)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 650; uint32_t java_map_index (0x28a)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 733; uint32_t java_map_index (0x2dd)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 840; uint32_t java_map_index (0x348)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33554750, ; uint32_t type_token_id (0x200013e)
		i32 960; uint32_t java_map_index (0x3c0)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 84; uint32_t java_map_index (0x54)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 568; uint32_t java_map_index (0x238)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 908; uint32_t java_map_index (0x38c)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33554757, ; uint32_t type_token_id (0x2000145)
		i32 807; uint32_t java_map_index (0x327)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33554760, ; uint32_t type_token_id (0x2000148)
		i32 31; uint32_t java_map_index (0x1f)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 229; uint32_t java_map_index (0xe5)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 914; uint32_t java_map_index (0x392)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 876; uint32_t java_map_index (0x36c)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 663; uint32_t java_map_index (0x297)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 419; uint32_t java_map_index (0x1a3)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 836; uint32_t java_map_index (0x344)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33554776, ; uint32_t type_token_id (0x2000158)
		i32 991; uint32_t java_map_index (0x3df)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33554778, ; uint32_t type_token_id (0x200015a)
		i32 408; uint32_t java_map_index (0x198)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33554779, ; uint32_t type_token_id (0x200015b)
		i32 252; uint32_t java_map_index (0xfc)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33554781, ; uint32_t type_token_id (0x200015d)
		i32 721; uint32_t java_map_index (0x2d1)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33554783, ; uint32_t type_token_id (0x200015f)
		i32 871; uint32_t java_map_index (0x367)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33554785, ; uint32_t type_token_id (0x2000161)
		i32 342; uint32_t java_map_index (0x156)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33554787, ; uint32_t type_token_id (0x2000163)
		i32 596; uint32_t java_map_index (0x254)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33554788, ; uint32_t type_token_id (0x2000164)
		i32 260; uint32_t java_map_index (0x104)
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 33554789, ; uint32_t type_token_id (0x2000165)
		i32 208; uint32_t java_map_index (0xd0)
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 33554790, ; uint32_t type_token_id (0x2000166)
		i32 207; uint32_t java_map_index (0xcf)
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 33554791, ; uint32_t type_token_id (0x2000167)
		i32 972; uint32_t java_map_index (0x3cc)
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 33554797, ; uint32_t type_token_id (0x200016d)
		i32 435; uint32_t java_map_index (0x1b3)
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 33554798, ; uint32_t type_token_id (0x200016e)
		i32 1010; uint32_t java_map_index (0x3f2)
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 33554799, ; uint32_t type_token_id (0x200016f)
		i32 485; uint32_t java_map_index (0x1e5)
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 33554800, ; uint32_t type_token_id (0x2000170)
		i32 74; uint32_t java_map_index (0x4a)
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 33554802, ; uint32_t type_token_id (0x2000172)
		i32 767; uint32_t java_map_index (0x2ff)
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 33554804, ; uint32_t type_token_id (0x2000174)
		i32 449; uint32_t java_map_index (0x1c1)
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 33554805, ; uint32_t type_token_id (0x2000175)
		i32 4; uint32_t java_map_index (0x4)
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 33554807, ; uint32_t type_token_id (0x2000177)
		i32 688; uint32_t java_map_index (0x2b0)
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 33554809, ; uint32_t type_token_id (0x2000179)
		i32 832; uint32_t java_map_index (0x340)
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 33554811, ; uint32_t type_token_id (0x200017b)
		i32 874; uint32_t java_map_index (0x36a)
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 33554813, ; uint32_t type_token_id (0x200017d)
		i32 1002; uint32_t java_map_index (0x3ea)
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 33554814, ; uint32_t type_token_id (0x200017e)
		i32 276; uint32_t java_map_index (0x114)
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 33554815, ; uint32_t type_token_id (0x200017f)
		i32 30; uint32_t java_map_index (0x1e)
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 33554816, ; uint32_t type_token_id (0x2000180)
		i32 163; uint32_t java_map_index (0xa3)
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 33554817, ; uint32_t type_token_id (0x2000181)
		i32 882; uint32_t java_map_index (0x372)
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 33554818, ; uint32_t type_token_id (0x2000182)
		i32 952; uint32_t java_map_index (0x3b8)
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 33554819, ; uint32_t type_token_id (0x2000183)
		i32 217; uint32_t java_map_index (0xd9)
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 33554821, ; uint32_t type_token_id (0x2000185)
		i32 706; uint32_t java_map_index (0x2c2)
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 33554822, ; uint32_t type_token_id (0x2000186)
		i32 139; uint32_t java_map_index (0x8b)
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 33554824, ; uint32_t type_token_id (0x2000188)
		i32 922; uint32_t java_map_index (0x39a)
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 33554826, ; uint32_t type_token_id (0x200018a)
		i32 878; uint32_t java_map_index (0x36e)
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 33554828, ; uint32_t type_token_id (0x200018c)
		i32 668; uint32_t java_map_index (0x29c)
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 33554829, ; uint32_t type_token_id (0x200018d)
		i32 837; uint32_t java_map_index (0x345)
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 33554830, ; uint32_t type_token_id (0x200018e)
		i32 251; uint32_t java_map_index (0xfb)
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 33554831, ; uint32_t type_token_id (0x200018f)
		i32 2; uint32_t java_map_index (0x2)
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 33554832, ; uint32_t type_token_id (0x2000190)
		i32 736; uint32_t java_map_index (0x2e0)
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 33554833, ; uint32_t type_token_id (0x2000191)
		i32 411; uint32_t java_map_index (0x19b)
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 33554834, ; uint32_t type_token_id (0x2000192)
		i32 300; uint32_t java_map_index (0x12c)
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 33554835, ; uint32_t type_token_id (0x2000193)
		i32 670; uint32_t java_map_index (0x29e)
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 33554836, ; uint32_t type_token_id (0x2000194)
		i32 875; uint32_t java_map_index (0x36b)
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 33554837, ; uint32_t type_token_id (0x2000195)
		i32 128; uint32_t java_map_index (0x80)
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 33554838, ; uint32_t type_token_id (0x2000196)
		i32 851; uint32_t java_map_index (0x353)
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 33554839, ; uint32_t type_token_id (0x2000197)
		i32 370; uint32_t java_map_index (0x172)
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 33554840, ; uint32_t type_token_id (0x2000198)
		i32 175; uint32_t java_map_index (0xaf)
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 33554842, ; uint32_t type_token_id (0x200019a)
		i32 757; uint32_t java_map_index (0x2f5)
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 33554844, ; uint32_t type_token_id (0x200019c)
		i32 403; uint32_t java_map_index (0x193)
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 33554846, ; uint32_t type_token_id (0x200019e)
		i32 486; uint32_t java_map_index (0x1e6)
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 33554848, ; uint32_t type_token_id (0x20001a0)
		i32 1006; uint32_t java_map_index (0x3ee)
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 33554850, ; uint32_t type_token_id (0x20001a2)
		i32 772; uint32_t java_map_index (0x304)
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 33554851, ; uint32_t type_token_id (0x20001a3)
		i32 979; uint32_t java_map_index (0x3d3)
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 33554852, ; uint32_t type_token_id (0x20001a4)
		i32 320; uint32_t java_map_index (0x140)
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 33554853, ; uint32_t type_token_id (0x20001a5)
		i32 110; uint32_t java_map_index (0x6e)
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 33554854, ; uint32_t type_token_id (0x20001a6)
		i32 442; uint32_t java_map_index (0x1ba)
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 33554855, ; uint32_t type_token_id (0x20001a7)
		i32 584; uint32_t java_map_index (0x248)
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 33554859, ; uint32_t type_token_id (0x20001ab)
		i32 115; uint32_t java_map_index (0x73)
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 33554860, ; uint32_t type_token_id (0x20001ac)
		i32 891; uint32_t java_map_index (0x37b)
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 33554862, ; uint32_t type_token_id (0x20001ae)
		i32 493; uint32_t java_map_index (0x1ed)
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 33554863, ; uint32_t type_token_id (0x20001af)
		i32 236; uint32_t java_map_index (0xec)
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 33554865, ; uint32_t type_token_id (0x20001b1)
		i32 226; uint32_t java_map_index (0xe2)
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 33554867, ; uint32_t type_token_id (0x20001b3)
		i32 196; uint32_t java_map_index (0xc4)
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 33554870, ; uint32_t type_token_id (0x20001b6)
		i32 70; uint32_t java_map_index (0x46)
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 33554871, ; uint32_t type_token_id (0x20001b7)
		i32 0; uint32_t java_map_index (0x0)
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 33554874, ; uint32_t type_token_id (0x20001ba)
		i32 511; uint32_t java_map_index (0x1ff)
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 33554876, ; uint32_t type_token_id (0x20001bc)
		i32 82; uint32_t java_map_index (0x52)
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 33554878, ; uint32_t type_token_id (0x20001be)
		i32 277; uint32_t java_map_index (0x115)
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 33554879, ; uint32_t type_token_id (0x20001bf)
		i32 750; uint32_t java_map_index (0x2ee)
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 33554882, ; uint32_t type_token_id (0x20001c2)
		i32 238; uint32_t java_map_index (0xee)
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 33554883, ; uint32_t type_token_id (0x20001c3)
		i32 178; uint32_t java_map_index (0xb2)
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 33554888, ; uint32_t type_token_id (0x20001c8)
		i32 619; uint32_t java_map_index (0x26b)
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 33554889, ; uint32_t type_token_id (0x20001c9)
		i32 257; uint32_t java_map_index (0x101)
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 33554890, ; uint32_t type_token_id (0x20001ca)
		i32 71; uint32_t java_map_index (0x47)
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 33554891, ; uint32_t type_token_id (0x20001cb)
		i32 617; uint32_t java_map_index (0x269)
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 33554893, ; uint32_t type_token_id (0x20001cd)
		i32 242; uint32_t java_map_index (0xf2)
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 33554899, ; uint32_t type_token_id (0x20001d3)
		i32 469; uint32_t java_map_index (0x1d5)
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 33554900, ; uint32_t type_token_id (0x20001d4)
		i32 367; uint32_t java_map_index (0x16f)
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 33554901, ; uint32_t type_token_id (0x20001d5)
		i32 498; uint32_t java_map_index (0x1f2)
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 33554902, ; uint32_t type_token_id (0x20001d6)
		i32 545; uint32_t java_map_index (0x221)
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 33554903, ; uint32_t type_token_id (0x20001d7)
		i32 404; uint32_t java_map_index (0x194)
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 33554905, ; uint32_t type_token_id (0x20001d9)
		i32 278; uint32_t java_map_index (0x116)
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 33554906, ; uint32_t type_token_id (0x20001da)
		i32 612; uint32_t java_map_index (0x264)
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 33554909, ; uint32_t type_token_id (0x20001dd)
		i32 17; uint32_t java_map_index (0x11)
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 33554910, ; uint32_t type_token_id (0x20001de)
		i32 948; uint32_t java_map_index (0x3b4)
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 33554918, ; uint32_t type_token_id (0x20001e6)
		i32 566; uint32_t java_map_index (0x236)
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 33554919, ; uint32_t type_token_id (0x20001e7)
		i32 112; uint32_t java_map_index (0x70)
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 33554920, ; uint32_t type_token_id (0x20001e8)
		i32 140; uint32_t java_map_index (0x8c)
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 33554921, ; uint32_t type_token_id (0x20001e9)
		i32 923; uint32_t java_map_index (0x39b)
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 33554924, ; uint32_t type_token_id (0x20001ec)
		i32 190; uint32_t java_map_index (0xbe)
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 33554925, ; uint32_t type_token_id (0x20001ed)
		i32 94; uint32_t java_map_index (0x5e)
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 33554930, ; uint32_t type_token_id (0x20001f2)
		i32 362; uint32_t java_map_index (0x16a)
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 33554931, ; uint32_t type_token_id (0x20001f3)
		i32 683; uint32_t java_map_index (0x2ab)
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 33554932, ; uint32_t type_token_id (0x20001f4)
		i32 762; uint32_t java_map_index (0x2fa)
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 33554935, ; uint32_t type_token_id (0x20001f7)
		i32 868; uint32_t java_map_index (0x364)
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 33554937, ; uint32_t type_token_id (0x20001f9)
		i32 394; uint32_t java_map_index (0x18a)
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 33554938, ; uint32_t type_token_id (0x20001fa)
		i32 481; uint32_t java_map_index (0x1e1)
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 33554939, ; uint32_t type_token_id (0x20001fb)
		i32 369; uint32_t java_map_index (0x171)
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 33554940, ; uint32_t type_token_id (0x20001fc)
		i32 674; uint32_t java_map_index (0x2a2)
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 33554941, ; uint32_t type_token_id (0x20001fd)
		i32 957; uint32_t java_map_index (0x3bd)
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 33554942, ; uint32_t type_token_id (0x20001fe)
		i32 231; uint32_t java_map_index (0xe7)
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 33554944, ; uint32_t type_token_id (0x2000200)
		i32 143; uint32_t java_map_index (0x8f)
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 33554946, ; uint32_t type_token_id (0x2000202)
		i32 601; uint32_t java_map_index (0x259)
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 33554948, ; uint32_t type_token_id (0x2000204)
		i32 919; uint32_t java_map_index (0x397)
	}, ; 203
	%struct.TypeMapModuleEntry {
		i32 33554950, ; uint32_t type_token_id (0x2000206)
		i32 1009; uint32_t java_map_index (0x3f1)
	}, ; 204
	%struct.TypeMapModuleEntry {
		i32 33554953, ; uint32_t type_token_id (0x2000209)
		i32 69; uint32_t java_map_index (0x45)
	}, ; 205
	%struct.TypeMapModuleEntry {
		i32 33554955, ; uint32_t type_token_id (0x200020b)
		i32 1007; uint32_t java_map_index (0x3ef)
	}, ; 206
	%struct.TypeMapModuleEntry {
		i32 33554957, ; uint32_t type_token_id (0x200020d)
		i32 784; uint32_t java_map_index (0x310)
	}, ; 207
	%struct.TypeMapModuleEntry {
		i32 33554960, ; uint32_t type_token_id (0x2000210)
		i32 692; uint32_t java_map_index (0x2b4)
	}, ; 208
	%struct.TypeMapModuleEntry {
		i32 33554962, ; uint32_t type_token_id (0x2000212)
		i32 271; uint32_t java_map_index (0x10f)
	}, ; 209
	%struct.TypeMapModuleEntry {
		i32 33554964, ; uint32_t type_token_id (0x2000214)
		i32 331; uint32_t java_map_index (0x14b)
	}, ; 210
	%struct.TypeMapModuleEntry {
		i32 33554966, ; uint32_t type_token_id (0x2000216)
		i32 108; uint32_t java_map_index (0x6c)
	}, ; 211
	%struct.TypeMapModuleEntry {
		i32 33554968, ; uint32_t type_token_id (0x2000218)
		i32 687; uint32_t java_map_index (0x2af)
	}, ; 212
	%struct.TypeMapModuleEntry {
		i32 33554970, ; uint32_t type_token_id (0x200021a)
		i32 583; uint32_t java_map_index (0x247)
	}, ; 213
	%struct.TypeMapModuleEntry {
		i32 33554972, ; uint32_t type_token_id (0x200021c)
		i32 700; uint32_t java_map_index (0x2bc)
	}, ; 214
	%struct.TypeMapModuleEntry {
		i32 33554973, ; uint32_t type_token_id (0x200021d)
		i32 614; uint32_t java_map_index (0x266)
	}, ; 215
	%struct.TypeMapModuleEntry {
		i32 33554976, ; uint32_t type_token_id (0x2000220)
		i32 773; uint32_t java_map_index (0x305)
	}, ; 216
	%struct.TypeMapModuleEntry {
		i32 33554978, ; uint32_t type_token_id (0x2000222)
		i32 771; uint32_t java_map_index (0x303)
	}, ; 217
	%struct.TypeMapModuleEntry {
		i32 33554979, ; uint32_t type_token_id (0x2000223)
		i32 29; uint32_t java_map_index (0x1d)
	}, ; 218
	%struct.TypeMapModuleEntry {
		i32 33554980, ; uint32_t type_token_id (0x2000224)
		i32 859; uint32_t java_map_index (0x35b)
	}, ; 219
	%struct.TypeMapModuleEntry {
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 399; uint32_t java_map_index (0x18f)
	}, ; 220
	%struct.TypeMapModuleEntry {
		i32 33554983, ; uint32_t type_token_id (0x2000227)
		i32 646; uint32_t java_map_index (0x286)
	}, ; 221
	%struct.TypeMapModuleEntry {
		i32 33554984, ; uint32_t type_token_id (0x2000228)
		i32 43; uint32_t java_map_index (0x2b)
	}, ; 222
	%struct.TypeMapModuleEntry {
		i32 33554986, ; uint32_t type_token_id (0x200022a)
		i32 747; uint32_t java_map_index (0x2eb)
	}, ; 223
	%struct.TypeMapModuleEntry {
		i32 33554987, ; uint32_t type_token_id (0x200022b)
		i32 1000; uint32_t java_map_index (0x3e8)
	}, ; 224
	%struct.TypeMapModuleEntry {
		i32 33554989, ; uint32_t type_token_id (0x200022d)
		i32 810; uint32_t java_map_index (0x32a)
	}, ; 225
	%struct.TypeMapModuleEntry {
		i32 33554990, ; uint32_t type_token_id (0x200022e)
		i32 439; uint32_t java_map_index (0x1b7)
	}, ; 226
	%struct.TypeMapModuleEntry {
		i32 33554991, ; uint32_t type_token_id (0x200022f)
		i32 381; uint32_t java_map_index (0x17d)
	}, ; 227
	%struct.TypeMapModuleEntry {
		i32 33554992, ; uint32_t type_token_id (0x2000230)
		i32 742; uint32_t java_map_index (0x2e6)
	}, ; 228
	%struct.TypeMapModuleEntry {
		i32 33554993, ; uint32_t type_token_id (0x2000231)
		i32 137; uint32_t java_map_index (0x89)
	}, ; 229
	%struct.TypeMapModuleEntry {
		i32 33554994, ; uint32_t type_token_id (0x2000232)
		i32 658; uint32_t java_map_index (0x292)
	}, ; 230
	%struct.TypeMapModuleEntry {
		i32 33554995, ; uint32_t type_token_id (0x2000233)
		i32 334; uint32_t java_map_index (0x14e)
	}, ; 231
	%struct.TypeMapModuleEntry {
		i32 33554999, ; uint32_t type_token_id (0x2000237)
		i32 388; uint32_t java_map_index (0x184)
	}, ; 232
	%struct.TypeMapModuleEntry {
		i32 33555000, ; uint32_t type_token_id (0x2000238)
		i32 421; uint32_t java_map_index (0x1a5)
	}, ; 233
	%struct.TypeMapModuleEntry {
		i32 33555002, ; uint32_t type_token_id (0x200023a)
		i32 967; uint32_t java_map_index (0x3c7)
	}, ; 234
	%struct.TypeMapModuleEntry {
		i32 33555003, ; uint32_t type_token_id (0x200023b)
		i32 951; uint32_t java_map_index (0x3b7)
	}, ; 235
	%struct.TypeMapModuleEntry {
		i32 33555005, ; uint32_t type_token_id (0x200023d)
		i32 809; uint32_t java_map_index (0x329)
	}, ; 236
	%struct.TypeMapModuleEntry {
		i32 33555008, ; uint32_t type_token_id (0x2000240)
		i32 250; uint32_t java_map_index (0xfa)
	}, ; 237
	%struct.TypeMapModuleEntry {
		i32 33555009, ; uint32_t type_token_id (0x2000241)
		i32 350; uint32_t java_map_index (0x15e)
	}, ; 238
	%struct.TypeMapModuleEntry {
		i32 33555011, ; uint32_t type_token_id (0x2000243)
		i32 649; uint32_t java_map_index (0x289)
	}, ; 239
	%struct.TypeMapModuleEntry {
		i32 33555014, ; uint32_t type_token_id (0x2000246)
		i32 678; uint32_t java_map_index (0x2a6)
	}, ; 240
	%struct.TypeMapModuleEntry {
		i32 33555015, ; uint32_t type_token_id (0x2000247)
		i32 563; uint32_t java_map_index (0x233)
	}, ; 241
	%struct.TypeMapModuleEntry {
		i32 33555018, ; uint32_t type_token_id (0x200024a)
		i32 783; uint32_t java_map_index (0x30f)
	}, ; 242
	%struct.TypeMapModuleEntry {
		i32 33555019, ; uint32_t type_token_id (0x200024b)
		i32 814; uint32_t java_map_index (0x32e)
	}, ; 243
	%struct.TypeMapModuleEntry {
		i32 33555022, ; uint32_t type_token_id (0x200024e)
		i32 827; uint32_t java_map_index (0x33b)
	}, ; 244
	%struct.TypeMapModuleEntry {
		i32 33555023, ; uint32_t type_token_id (0x200024f)
		i32 384; uint32_t java_map_index (0x180)
	}, ; 245
	%struct.TypeMapModuleEntry {
		i32 33555026, ; uint32_t type_token_id (0x2000252)
		i32 963; uint32_t java_map_index (0x3c3)
	}, ; 246
	%struct.TypeMapModuleEntry {
		i32 33555044, ; uint32_t type_token_id (0x2000264)
		i32 438; uint32_t java_map_index (0x1b6)
	}, ; 247
	%struct.TypeMapModuleEntry {
		i32 33555045, ; uint32_t type_token_id (0x2000265)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 248
	%struct.TypeMapModuleEntry {
		i32 33555046, ; uint32_t type_token_id (0x2000266)
		i32 76; uint32_t java_map_index (0x4c)
	}, ; 249
	%struct.TypeMapModuleEntry {
		i32 33555047, ; uint32_t type_token_id (0x2000267)
		i32 106; uint32_t java_map_index (0x6a)
	}, ; 250
	%struct.TypeMapModuleEntry {
		i32 33555048, ; uint32_t type_token_id (0x2000268)
		i32 59; uint32_t java_map_index (0x3b)
	}, ; 251
	%struct.TypeMapModuleEntry {
		i32 33555052, ; uint32_t type_token_id (0x200026c)
		i32 643; uint32_t java_map_index (0x283)
	}, ; 252
	%struct.TypeMapModuleEntry {
		i32 33555057, ; uint32_t type_token_id (0x2000271)
		i32 787; uint32_t java_map_index (0x313)
	}, ; 253
	%struct.TypeMapModuleEntry {
		i32 33555058, ; uint32_t type_token_id (0x2000272)
		i32 126; uint32_t java_map_index (0x7e)
	}, ; 254
	%struct.TypeMapModuleEntry {
		i32 33555059, ; uint32_t type_token_id (0x2000273)
		i32 1005; uint32_t java_map_index (0x3ed)
	}, ; 255
	%struct.TypeMapModuleEntry {
		i32 33555061, ; uint32_t type_token_id (0x2000275)
		i32 886; uint32_t java_map_index (0x376)
	}, ; 256
	%struct.TypeMapModuleEntry {
		i32 33555062, ; uint32_t type_token_id (0x2000276)
		i32 288; uint32_t java_map_index (0x120)
	}, ; 257
	%struct.TypeMapModuleEntry {
		i32 33555065, ; uint32_t type_token_id (0x2000279)
		i32 55; uint32_t java_map_index (0x37)
	}, ; 258
	%struct.TypeMapModuleEntry {
		i32 33555066, ; uint32_t type_token_id (0x200027a)
		i32 958; uint32_t java_map_index (0x3be)
	}, ; 259
	%struct.TypeMapModuleEntry {
		i32 33555067, ; uint32_t type_token_id (0x200027b)
		i32 679; uint32_t java_map_index (0x2a7)
	}, ; 260
	%struct.TypeMapModuleEntry {
		i32 33555068, ; uint32_t type_token_id (0x200027c)
		i32 224; uint32_t java_map_index (0xe0)
	}, ; 261
	%struct.TypeMapModuleEntry {
		i32 33555097, ; uint32_t type_token_id (0x2000299)
		i32 759; uint32_t java_map_index (0x2f7)
	}, ; 262
	%struct.TypeMapModuleEntry {
		i32 33555101, ; uint32_t type_token_id (0x200029d)
		i32 338; uint32_t java_map_index (0x152)
	}, ; 263
	%struct.TypeMapModuleEntry {
		i32 33555102, ; uint32_t type_token_id (0x200029e)
		i32 494; uint32_t java_map_index (0x1ee)
	}, ; 264
	%struct.TypeMapModuleEntry {
		i32 33555103, ; uint32_t type_token_id (0x200029f)
		i32 397; uint32_t java_map_index (0x18d)
	}, ; 265
	%struct.TypeMapModuleEntry {
		i32 33555106, ; uint32_t type_token_id (0x20002a2)
		i32 518; uint32_t java_map_index (0x206)
	}, ; 266
	%struct.TypeMapModuleEntry {
		i32 33555107, ; uint32_t type_token_id (0x20002a3)
		i32 346; uint32_t java_map_index (0x15a)
	}, ; 267
	%struct.TypeMapModuleEntry {
		i32 33555108, ; uint32_t type_token_id (0x20002a4)
		i32 903; uint32_t java_map_index (0x387)
	}, ; 268
	%struct.TypeMapModuleEntry {
		i32 33555110, ; uint32_t type_token_id (0x20002a6)
		i32 725; uint32_t java_map_index (0x2d5)
	}, ; 269
	%struct.TypeMapModuleEntry {
		i32 33555111, ; uint32_t type_token_id (0x20002a7)
		i32 949; uint32_t java_map_index (0x3b5)
	}, ; 270
	%struct.TypeMapModuleEntry {
		i32 33555113, ; uint32_t type_token_id (0x20002a9)
		i32 130; uint32_t java_map_index (0x82)
	}, ; 271
	%struct.TypeMapModuleEntry {
		i32 33555114, ; uint32_t type_token_id (0x20002aa)
		i32 864; uint32_t java_map_index (0x360)
	}, ; 272
	%struct.TypeMapModuleEntry {
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 547; uint32_t java_map_index (0x223)
	}, ; 273
	%struct.TypeMapModuleEntry {
		i32 33555116, ; uint32_t type_token_id (0x20002ac)
		i32 270; uint32_t java_map_index (0x10e)
	}, ; 274
	%struct.TypeMapModuleEntry {
		i32 33555117, ; uint32_t type_token_id (0x20002ad)
		i32 479; uint32_t java_map_index (0x1df)
	}, ; 275
	%struct.TypeMapModuleEntry {
		i32 33555118, ; uint32_t type_token_id (0x20002ae)
		i32 820; uint32_t java_map_index (0x334)
	}, ; 276
	%struct.TypeMapModuleEntry {
		i32 33555143, ; uint32_t type_token_id (0x20002c7)
		i32 934; uint32_t java_map_index (0x3a6)
	}, ; 277
	%struct.TypeMapModuleEntry {
		i32 33555146, ; uint32_t type_token_id (0x20002ca)
		i32 704; uint32_t java_map_index (0x2c0)
	}, ; 278
	%struct.TypeMapModuleEntry {
		i32 33555148, ; uint32_t type_token_id (0x20002cc)
		i32 307; uint32_t java_map_index (0x133)
	}, ; 279
	%struct.TypeMapModuleEntry {
		i32 33555150, ; uint32_t type_token_id (0x20002ce)
		i32 347; uint32_t java_map_index (0x15b)
	}, ; 280
	%struct.TypeMapModuleEntry {
		i32 33555159, ; uint32_t type_token_id (0x20002d7)
		i32 152; uint32_t java_map_index (0x98)
	}, ; 281
	%struct.TypeMapModuleEntry {
		i32 33555161, ; uint32_t type_token_id (0x20002d9)
		i32 867; uint32_t java_map_index (0x363)
	}, ; 282
	%struct.TypeMapModuleEntry {
		i32 33555162, ; uint32_t type_token_id (0x20002da)
		i32 846; uint32_t java_map_index (0x34e)
	}, ; 283
	%struct.TypeMapModuleEntry {
		i32 33555163, ; uint32_t type_token_id (0x20002db)
		i32 1004; uint32_t java_map_index (0x3ec)
	}, ; 284
	%struct.TypeMapModuleEntry {
		i32 33555175, ; uint32_t type_token_id (0x20002e7)
		i32 113; uint32_t java_map_index (0x71)
	}, ; 285
	%struct.TypeMapModuleEntry {
		i32 33555187, ; uint32_t type_token_id (0x20002f3)
		i32 92; uint32_t java_map_index (0x5c)
	}, ; 286
	%struct.TypeMapModuleEntry {
		i32 33555188, ; uint32_t type_token_id (0x20002f4)
		i32 883; uint32_t java_map_index (0x373)
	}, ; 287
	%struct.TypeMapModuleEntry {
		i32 33555189, ; uint32_t type_token_id (0x20002f5)
		i32 997; uint32_t java_map_index (0x3e5)
	}, ; 288
	%struct.TypeMapModuleEntry {
		i32 33555190, ; uint32_t type_token_id (0x20002f6)
		i32 189; uint32_t java_map_index (0xbd)
	}, ; 289
	%struct.TypeMapModuleEntry {
		i32 33555192, ; uint32_t type_token_id (0x20002f8)
		i32 200; uint32_t java_map_index (0xc8)
	}, ; 290
	%struct.TypeMapModuleEntry {
		i32 33555193, ; uint32_t type_token_id (0x20002f9)
		i32 936; uint32_t java_map_index (0x3a8)
	}, ; 291
	%struct.TypeMapModuleEntry {
		i32 33555194, ; uint32_t type_token_id (0x20002fa)
		i32 691; uint32_t java_map_index (0x2b3)
	}, ; 292
	%struct.TypeMapModuleEntry {
		i32 33555195, ; uint32_t type_token_id (0x20002fb)
		i32 20; uint32_t java_map_index (0x14)
	}, ; 293
	%struct.TypeMapModuleEntry {
		i32 33555196, ; uint32_t type_token_id (0x20002fc)
		i32 782; uint32_t java_map_index (0x30e)
	}, ; 294
	%struct.TypeMapModuleEntry {
		i32 33555197, ; uint32_t type_token_id (0x20002fd)
		i32 940; uint32_t java_map_index (0x3ac)
	}, ; 295
	%struct.TypeMapModuleEntry {
		i32 33555198, ; uint32_t type_token_id (0x20002fe)
		i32 905; uint32_t java_map_index (0x389)
	}, ; 296
	%struct.TypeMapModuleEntry {
		i32 33555199, ; uint32_t type_token_id (0x20002ff)
		i32 801; uint32_t java_map_index (0x321)
	}, ; 297
	%struct.TypeMapModuleEntry {
		i32 33555200, ; uint32_t type_token_id (0x2000300)
		i32 800; uint32_t java_map_index (0x320)
	}, ; 298
	%struct.TypeMapModuleEntry {
		i32 33555201, ; uint32_t type_token_id (0x2000301)
		i32 363; uint32_t java_map_index (0x16b)
	}, ; 299
	%struct.TypeMapModuleEntry {
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 765; uint32_t java_map_index (0x2fd)
	}, ; 300
	%struct.TypeMapModuleEntry {
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 379; uint32_t java_map_index (0x17b)
	}, ; 301
	%struct.TypeMapModuleEntry {
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 310; uint32_t java_map_index (0x136)
	}, ; 302
	%struct.TypeMapModuleEntry {
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 833; uint32_t java_map_index (0x341)
	}, ; 303
	%struct.TypeMapModuleEntry {
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 524; uint32_t java_map_index (0x20c)
	}, ; 304
	%struct.TypeMapModuleEntry {
		i32 33555207, ; uint32_t type_token_id (0x2000307)
		i32 824; uint32_t java_map_index (0x338)
	}, ; 305
	%struct.TypeMapModuleEntry {
		i32 33555208, ; uint32_t type_token_id (0x2000308)
		i32 162; uint32_t java_map_index (0xa2)
	}, ; 306
	%struct.TypeMapModuleEntry {
		i32 33555209, ; uint32_t type_token_id (0x2000309)
		i32 872; uint32_t java_map_index (0x368)
	}, ; 307
	%struct.TypeMapModuleEntry {
		i32 33555210, ; uint32_t type_token_id (0x200030a)
		i32 505; uint32_t java_map_index (0x1f9)
	}, ; 308
	%struct.TypeMapModuleEntry {
		i32 33555211, ; uint32_t type_token_id (0x200030b)
		i32 758; uint32_t java_map_index (0x2f6)
	}, ; 309
	%struct.TypeMapModuleEntry {
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 896; uint32_t java_map_index (0x380)
	}, ; 310
	%struct.TypeMapModuleEntry {
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 578; uint32_t java_map_index (0x242)
	}, ; 311
	%struct.TypeMapModuleEntry {
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 414; uint32_t java_map_index (0x19e)
	}, ; 312
	%struct.TypeMapModuleEntry {
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 214; uint32_t java_map_index (0xd6)
	}, ; 313
	%struct.TypeMapModuleEntry {
		i32 33555216, ; uint32_t type_token_id (0x2000310)
		i32 1013; uint32_t java_map_index (0x3f5)
	}, ; 314
	%struct.TypeMapModuleEntry {
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 316; uint32_t java_map_index (0x13c)
	}, ; 315
	%struct.TypeMapModuleEntry {
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 24; uint32_t java_map_index (0x18)
	}, ; 316
	%struct.TypeMapModuleEntry {
		i32 33555219, ; uint32_t type_token_id (0x2000313)
		i32 53; uint32_t java_map_index (0x35)
	}, ; 317
	%struct.TypeMapModuleEntry {
		i32 33555220, ; uint32_t type_token_id (0x2000314)
		i32 925; uint32_t java_map_index (0x39d)
	}, ; 318
	%struct.TypeMapModuleEntry {
		i32 33555221, ; uint32_t type_token_id (0x2000315)
		i32 330; uint32_t java_map_index (0x14a)
	}, ; 319
	%struct.TypeMapModuleEntry {
		i32 33555222, ; uint32_t type_token_id (0x2000316)
		i32 927; uint32_t java_map_index (0x39f)
	}, ; 320
	%struct.TypeMapModuleEntry {
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 995; uint32_t java_map_index (0x3e3)
	}, ; 321
	%struct.TypeMapModuleEntry {
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 567; uint32_t java_map_index (0x237)
	}, ; 322
	%struct.TypeMapModuleEntry {
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 788; uint32_t java_map_index (0x314)
	}, ; 323
	%struct.TypeMapModuleEntry {
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 912; uint32_t java_map_index (0x390)
	}, ; 324
	%struct.TypeMapModuleEntry {
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 279; uint32_t java_map_index (0x117)
	}, ; 325
	%struct.TypeMapModuleEntry {
		i32 33555232, ; uint32_t type_token_id (0x2000320)
		i32 855; uint32_t java_map_index (0x357)
	}, ; 326
	%struct.TypeMapModuleEntry {
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 114; uint32_t java_map_index (0x72)
	}, ; 327
	%struct.TypeMapModuleEntry {
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 657; uint32_t java_map_index (0x291)
	}, ; 328
	%struct.TypeMapModuleEntry {
		i32 33555235, ; uint32_t type_token_id (0x2000323)
		i32 440; uint32_t java_map_index (0x1b8)
	}, ; 329
	%struct.TypeMapModuleEntry {
		i32 33555238, ; uint32_t type_token_id (0x2000326)
		i32 944; uint32_t java_map_index (0x3b0)
	}, ; 330
	%struct.TypeMapModuleEntry {
		i32 33555239, ; uint32_t type_token_id (0x2000327)
		i32 892; uint32_t java_map_index (0x37c)
	}, ; 331
	%struct.TypeMapModuleEntry {
		i32 33555241, ; uint32_t type_token_id (0x2000329)
		i32 474; uint32_t java_map_index (0x1da)
	}, ; 332
	%struct.TypeMapModuleEntry {
		i32 33555242, ; uint32_t type_token_id (0x200032a)
		i32 155; uint32_t java_map_index (0x9b)
	}, ; 333
	%struct.TypeMapModuleEntry {
		i32 33555243, ; uint32_t type_token_id (0x200032b)
		i32 349; uint32_t java_map_index (0x15d)
	}, ; 334
	%struct.TypeMapModuleEntry {
		i32 33555245, ; uint32_t type_token_id (0x200032d)
		i32 610; uint32_t java_map_index (0x262)
	}, ; 335
	%struct.TypeMapModuleEntry {
		i32 33555246, ; uint32_t type_token_id (0x200032e)
		i32 446; uint32_t java_map_index (0x1be)
	}, ; 336
	%struct.TypeMapModuleEntry {
		i32 33555247, ; uint32_t type_token_id (0x200032f)
		i32 665; uint32_t java_map_index (0x299)
	}, ; 337
	%struct.TypeMapModuleEntry {
		i32 33555248, ; uint32_t type_token_id (0x2000330)
		i32 170; uint32_t java_map_index (0xaa)
	}, ; 338
	%struct.TypeMapModuleEntry {
		i32 33555249, ; uint32_t type_token_id (0x2000331)
		i32 953; uint32_t java_map_index (0x3b9)
	}, ; 339
	%struct.TypeMapModuleEntry {
		i32 33555250, ; uint32_t type_token_id (0x2000332)
		i32 426; uint32_t java_map_index (0x1aa)
	}, ; 340
	%struct.TypeMapModuleEntry {
		i32 33555251, ; uint32_t type_token_id (0x2000333)
		i32 655; uint32_t java_map_index (0x28f)
	}, ; 341
	%struct.TypeMapModuleEntry {
		i32 33555253, ; uint32_t type_token_id (0x2000335)
		i32 945; uint32_t java_map_index (0x3b1)
	}, ; 342
	%struct.TypeMapModuleEntry {
		i32 33555256, ; uint32_t type_token_id (0x2000338)
		i32 232; uint32_t java_map_index (0xe8)
	}, ; 343
	%struct.TypeMapModuleEntry {
		i32 33555257, ; uint32_t type_token_id (0x2000339)
		i32 409; uint32_t java_map_index (0x199)
	}, ; 344
	%struct.TypeMapModuleEntry {
		i32 33555258, ; uint32_t type_token_id (0x200033a)
		i32 803; uint32_t java_map_index (0x323)
	}, ; 345
	%struct.TypeMapModuleEntry {
		i32 33555261, ; uint32_t type_token_id (0x200033d)
		i32 843; uint32_t java_map_index (0x34b)
	}, ; 346
	%struct.TypeMapModuleEntry {
		i32 33555262, ; uint32_t type_token_id (0x200033e)
		i32 458; uint32_t java_map_index (0x1ca)
	}, ; 347
	%struct.TypeMapModuleEntry {
		i32 33555264, ; uint32_t type_token_id (0x2000340)
		i32 412; uint32_t java_map_index (0x19c)
	}, ; 348
	%struct.TypeMapModuleEntry {
		i32 33555265, ; uint32_t type_token_id (0x2000341)
		i32 400; uint32_t java_map_index (0x190)
	}, ; 349
	%struct.TypeMapModuleEntry {
		i32 33555266, ; uint32_t type_token_id (0x2000342)
		i32 769; uint32_t java_map_index (0x301)
	}, ; 350
	%struct.TypeMapModuleEntry {
		i32 33555267, ; uint32_t type_token_id (0x2000343)
		i32 322; uint32_t java_map_index (0x142)
	}, ; 351
	%struct.TypeMapModuleEntry {
		i32 33555268, ; uint32_t type_token_id (0x2000344)
		i32 192; uint32_t java_map_index (0xc0)
	}, ; 352
	%struct.TypeMapModuleEntry {
		i32 33555270, ; uint32_t type_token_id (0x2000346)
		i32 956; uint32_t java_map_index (0x3bc)
	}, ; 353
	%struct.TypeMapModuleEntry {
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 939; uint32_t java_map_index (0x3ab)
	}, ; 354
	%struct.TypeMapModuleEntry {
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 626; uint32_t java_map_index (0x272)
	}, ; 355
	%struct.TypeMapModuleEntry {
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 341; uint32_t java_map_index (0x155)
	}, ; 356
	%struct.TypeMapModuleEntry {
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 690; uint32_t java_map_index (0x2b2)
	}, ; 357
	%struct.TypeMapModuleEntry {
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 924; uint32_t java_map_index (0x39c)
	}, ; 358
	%struct.TypeMapModuleEntry {
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 116; uint32_t java_map_index (0x74)
	}, ; 359
	%struct.TypeMapModuleEntry {
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 457; uint32_t java_map_index (0x1c9)
	}, ; 360
	%struct.TypeMapModuleEntry {
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 621; uint32_t java_map_index (0x26d)
	}, ; 361
	%struct.TypeMapModuleEntry {
		i32 33555285, ; uint32_t type_token_id (0x2000355)
		i32 443; uint32_t java_map_index (0x1bb)
	}, ; 362
	%struct.TypeMapModuleEntry {
		i32 33555288, ; uint32_t type_token_id (0x2000358)
		i32 93; uint32_t java_map_index (0x5d)
	}, ; 363
	%struct.TypeMapModuleEntry {
		i32 33555290, ; uint32_t type_token_id (0x200035a)
		i32 528; uint32_t java_map_index (0x210)
	}, ; 364
	%struct.TypeMapModuleEntry {
		i32 33555291, ; uint32_t type_token_id (0x200035b)
		i32 483; uint32_t java_map_index (0x1e3)
	}, ; 365
	%struct.TypeMapModuleEntry {
		i32 33555293, ; uint32_t type_token_id (0x200035d)
		i32 475; uint32_t java_map_index (0x1db)
	}, ; 366
	%struct.TypeMapModuleEntry {
		i32 33555294, ; uint32_t type_token_id (0x200035e)
		i32 549; uint32_t java_map_index (0x225)
	}, ; 367
	%struct.TypeMapModuleEntry {
		i32 33555295, ; uint32_t type_token_id (0x200035f)
		i32 500; uint32_t java_map_index (0x1f4)
	}, ; 368
	%struct.TypeMapModuleEntry {
		i32 33555296, ; uint32_t type_token_id (0x2000360)
		i32 61; uint32_t java_map_index (0x3d)
	}, ; 369
	%struct.TypeMapModuleEntry {
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 600; uint32_t java_map_index (0x258)
	}, ; 370
	%struct.TypeMapModuleEntry {
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 817; uint32_t java_map_index (0x331)
	}, ; 371
	%struct.TypeMapModuleEntry {
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 187; uint32_t java_map_index (0xbb)
	}, ; 372
	%struct.TypeMapModuleEntry {
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 416; uint32_t java_map_index (0x1a0)
	}, ; 373
	%struct.TypeMapModuleEntry {
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 507; uint32_t java_map_index (0x1fb)
	}, ; 374
	%struct.TypeMapModuleEntry {
		i32 33555309, ; uint32_t type_token_id (0x200036d)
		i32 901; uint32_t java_map_index (0x385)
	}, ; 375
	%struct.TypeMapModuleEntry {
		i32 33555311, ; uint32_t type_token_id (0x200036f)
		i32 227; uint32_t java_map_index (0xe3)
	}, ; 376
	%struct.TypeMapModuleEntry {
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 570; uint32_t java_map_index (0x23a)
	}, ; 377
	%struct.TypeMapModuleEntry {
		i32 33555313, ; uint32_t type_token_id (0x2000371)
		i32 890; uint32_t java_map_index (0x37a)
	}, ; 378
	%struct.TypeMapModuleEntry {
		i32 33555316, ; uint32_t type_token_id (0x2000374)
		i32 627; uint32_t java_map_index (0x273)
	}, ; 379
	%struct.TypeMapModuleEntry {
		i32 33555317, ; uint32_t type_token_id (0x2000375)
		i32 839; uint32_t java_map_index (0x347)
	}, ; 380
	%struct.TypeMapModuleEntry {
		i32 33555318, ; uint32_t type_token_id (0x2000376)
		i32 326; uint32_t java_map_index (0x146)
	}, ; 381
	%struct.TypeMapModuleEntry {
		i32 33555319, ; uint32_t type_token_id (0x2000377)
		i32 453; uint32_t java_map_index (0x1c5)
	}, ; 382
	%struct.TypeMapModuleEntry {
		i32 33555320, ; uint32_t type_token_id (0x2000378)
		i32 684; uint32_t java_map_index (0x2ac)
	}, ; 383
	%struct.TypeMapModuleEntry {
		i32 33555321, ; uint32_t type_token_id (0x2000379)
		i32 9; uint32_t java_map_index (0x9)
	}, ; 384
	%struct.TypeMapModuleEntry {
		i32 33555323, ; uint32_t type_token_id (0x200037b)
		i32 81; uint32_t java_map_index (0x51)
	}, ; 385
	%struct.TypeMapModuleEntry {
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 543; uint32_t java_map_index (0x21f)
	}, ; 386
	%struct.TypeMapModuleEntry {
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 756; uint32_t java_map_index (0x2f4)
	}, ; 387
	%struct.TypeMapModuleEntry {
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 984; uint32_t java_map_index (0x3d8)
	}, ; 388
	%struct.TypeMapModuleEntry {
		i32 33555327, ; uint32_t type_token_id (0x200037f)
		i32 928; uint32_t java_map_index (0x3a0)
	}, ; 389
	%struct.TypeMapModuleEntry {
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 631; uint32_t java_map_index (0x277)
	}, ; 390
	%struct.TypeMapModuleEntry {
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 261; uint32_t java_map_index (0x105)
	}, ; 391
	%struct.TypeMapModuleEntry {
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 86; uint32_t java_map_index (0x56)
	}, ; 392
	%struct.TypeMapModuleEntry {
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 489; uint32_t java_map_index (0x1e9)
	}, ; 393
	%struct.TypeMapModuleEntry {
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 406; uint32_t java_map_index (0x196)
	}, ; 394
	%struct.TypeMapModuleEntry {
		i32 33555340, ; uint32_t type_token_id (0x200038c)
		i32 240; uint32_t java_map_index (0xf0)
	}, ; 395
	%struct.TypeMapModuleEntry {
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 829; uint32_t java_map_index (0x33d)
	}, ; 396
	%struct.TypeMapModuleEntry {
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 335; uint32_t java_map_index (0x14f)
	}, ; 397
	%struct.TypeMapModuleEntry {
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 352; uint32_t java_map_index (0x160)
	}, ; 398
	%struct.TypeMapModuleEntry {
		i32 33555348, ; uint32_t type_token_id (0x2000394)
		i32 728; uint32_t java_map_index (0x2d8)
	}, ; 399
	%struct.TypeMapModuleEntry {
		i32 33555350, ; uint32_t type_token_id (0x2000396)
		i32 103; uint32_t java_map_index (0x67)
	}, ; 400
	%struct.TypeMapModuleEntry {
		i32 33555351, ; uint32_t type_token_id (0x2000397)
		i32 149; uint32_t java_map_index (0x95)
	}, ; 401
	%struct.TypeMapModuleEntry {
		i32 33555352, ; uint32_t type_token_id (0x2000398)
		i32 38; uint32_t java_map_index (0x26)
	}, ; 402
	%struct.TypeMapModuleEntry {
		i32 33555353, ; uint32_t type_token_id (0x2000399)
		i32 177; uint32_t java_map_index (0xb1)
	}, ; 403
	%struct.TypeMapModuleEntry {
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 620; uint32_t java_map_index (0x26c)
	}, ; 404
	%struct.TypeMapModuleEntry {
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 703; uint32_t java_map_index (0x2bf)
	}, ; 405
	%struct.TypeMapModuleEntry {
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 629; uint32_t java_map_index (0x275)
	}, ; 406
	%struct.TypeMapModuleEntry {
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 378; uint32_t java_map_index (0x17a)
	}, ; 407
	%struct.TypeMapModuleEntry {
		i32 33555361, ; uint32_t type_token_id (0x20003a1)
		i32 917; uint32_t java_map_index (0x395)
	}, ; 408
	%struct.TypeMapModuleEntry {
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 473; uint32_t java_map_index (0x1d9)
	}, ; 409
	%struct.TypeMapModuleEntry {
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 811; uint32_t java_map_index (0x32b)
	}, ; 410
	%struct.TypeMapModuleEntry {
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 842; uint32_t java_map_index (0x34a)
	}, ; 411
	%struct.TypeMapModuleEntry {
		i32 33555367, ; uint32_t type_token_id (0x20003a7)
		i32 501; uint32_t java_map_index (0x1f5)
	}, ; 412
	%struct.TypeMapModuleEntry {
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 8; uint32_t java_map_index (0x8)
	}, ; 413
	%struct.TypeMapModuleEntry {
		i32 33555370, ; uint32_t type_token_id (0x20003aa)
		i32 714; uint32_t java_map_index (0x2ca)
	}, ; 414
	%struct.TypeMapModuleEntry {
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 611; uint32_t java_map_index (0x263)
	}, ; 415
	%struct.TypeMapModuleEntry {
		i32 33555373, ; uint32_t type_token_id (0x20003ad)
		i32 119; uint32_t java_map_index (0x77)
	}, ; 416
	%struct.TypeMapModuleEntry {
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 351; uint32_t java_map_index (0x15f)
	}, ; 417
	%struct.TypeMapModuleEntry {
		i32 33555377, ; uint32_t type_token_id (0x20003b1)
		i32 87; uint32_t java_map_index (0x57)
	}, ; 418
	%struct.TypeMapModuleEntry {
		i32 33555378, ; uint32_t type_token_id (0x20003b2)
		i32 329; uint32_t java_map_index (0x149)
	}, ; 419
	%struct.TypeMapModuleEntry {
		i32 33555380, ; uint32_t type_token_id (0x20003b4)
		i32 863; uint32_t java_map_index (0x35f)
	}, ; 420
	%struct.TypeMapModuleEntry {
		i32 33555381, ; uint32_t type_token_id (0x20003b5)
		i32 880; uint32_t java_map_index (0x370)
	}, ; 421
	%struct.TypeMapModuleEntry {
		i32 33555382, ; uint32_t type_token_id (0x20003b6)
		i32 794; uint32_t java_map_index (0x31a)
	}, ; 422
	%struct.TypeMapModuleEntry {
		i32 33555383, ; uint32_t type_token_id (0x20003b7)
		i32 541; uint32_t java_map_index (0x21d)
	}, ; 423
	%struct.TypeMapModuleEntry {
		i32 33555384, ; uint32_t type_token_id (0x20003b8)
		i32 660; uint32_t java_map_index (0x294)
	}, ; 424
	%struct.TypeMapModuleEntry {
		i32 33555385, ; uint32_t type_token_id (0x20003b9)
		i32 225; uint32_t java_map_index (0xe1)
	}, ; 425
	%struct.TypeMapModuleEntry {
		i32 33555387, ; uint32_t type_token_id (0x20003bb)
		i32 577; uint32_t java_map_index (0x241)
	}, ; 426
	%struct.TypeMapModuleEntry {
		i32 33555388, ; uint32_t type_token_id (0x20003bc)
		i32 289; uint32_t java_map_index (0x121)
	}, ; 427
	%struct.TypeMapModuleEntry {
		i32 33555389, ; uint32_t type_token_id (0x20003bd)
		i32 540; uint32_t java_map_index (0x21c)
	}, ; 428
	%struct.TypeMapModuleEntry {
		i32 33555390, ; uint32_t type_token_id (0x20003be)
		i32 134; uint32_t java_map_index (0x86)
	}, ; 429
	%struct.TypeMapModuleEntry {
		i32 33555391, ; uint32_t type_token_id (0x20003bf)
		i32 830; uint32_t java_map_index (0x33e)
	}, ; 430
	%struct.TypeMapModuleEntry {
		i32 33555394, ; uint32_t type_token_id (0x20003c2)
		i32 361; uint32_t java_map_index (0x169)
	}, ; 431
	%struct.TypeMapModuleEntry {
		i32 33555395, ; uint32_t type_token_id (0x20003c3)
		i32 218; uint32_t java_map_index (0xda)
	}, ; 432
	%struct.TypeMapModuleEntry {
		i32 33555396, ; uint32_t type_token_id (0x20003c4)
		i32 608; uint32_t java_map_index (0x260)
	}, ; 433
	%struct.TypeMapModuleEntry {
		i32 33555397, ; uint32_t type_token_id (0x20003c5)
		i32 1017; uint32_t java_map_index (0x3f9)
	}, ; 434
	%struct.TypeMapModuleEntry {
		i32 33555399, ; uint32_t type_token_id (0x20003c7)
		i32 913; uint32_t java_map_index (0x391)
	}, ; 435
	%struct.TypeMapModuleEntry {
		i32 33555401, ; uint32_t type_token_id (0x20003c9)
		i32 637; uint32_t java_map_index (0x27d)
	}, ; 436
	%struct.TypeMapModuleEntry {
		i32 33555402, ; uint32_t type_token_id (0x20003ca)
		i32 990; uint32_t java_map_index (0x3de)
	}, ; 437
	%struct.TypeMapModuleEntry {
		i32 33555403, ; uint32_t type_token_id (0x20003cb)
		i32 456; uint32_t java_map_index (0x1c8)
	}, ; 438
	%struct.TypeMapModuleEntry {
		i32 33555405, ; uint32_t type_token_id (0x20003cd)
		i32 169; uint32_t java_map_index (0xa9)
	}, ; 439
	%struct.TypeMapModuleEntry {
		i32 33555406, ; uint32_t type_token_id (0x20003ce)
		i32 582; uint32_t java_map_index (0x246)
	}, ; 440
	%struct.TypeMapModuleEntry {
		i32 33555407, ; uint32_t type_token_id (0x20003cf)
		i32 964; uint32_t java_map_index (0x3c4)
	}, ; 441
	%struct.TypeMapModuleEntry {
		i32 33555409, ; uint32_t type_token_id (0x20003d1)
		i32 724; uint32_t java_map_index (0x2d4)
	}, ; 442
	%struct.TypeMapModuleEntry {
		i32 33555410, ; uint32_t type_token_id (0x20003d2)
		i32 969; uint32_t java_map_index (0x3c9)
	}, ; 443
	%struct.TypeMapModuleEntry {
		i32 33555412, ; uint32_t type_token_id (0x20003d4)
		i32 470; uint32_t java_map_index (0x1d6)
	}, ; 444
	%struct.TypeMapModuleEntry {
		i32 33555413, ; uint32_t type_token_id (0x20003d5)
		i32 386; uint32_t java_map_index (0x182)
	}, ; 445
	%struct.TypeMapModuleEntry {
		i32 33555414, ; uint32_t type_token_id (0x20003d6)
		i32 396; uint32_t java_map_index (0x18c)
	}, ; 446
	%struct.TypeMapModuleEntry {
		i32 33555415, ; uint32_t type_token_id (0x20003d7)
		i32 906; uint32_t java_map_index (0x38a)
	}, ; 447
	%struct.TypeMapModuleEntry {
		i32 33555416, ; uint32_t type_token_id (0x20003d8)
		i32 315; uint32_t java_map_index (0x13b)
	}, ; 448
	%struct.TypeMapModuleEntry {
		i32 33555417, ; uint32_t type_token_id (0x20003d9)
		i32 89; uint32_t java_map_index (0x59)
	}, ; 449
	%struct.TypeMapModuleEntry {
		i32 33555419, ; uint32_t type_token_id (0x20003db)
		i32 873; uint32_t java_map_index (0x369)
	}, ; 450
	%struct.TypeMapModuleEntry {
		i32 33555420, ; uint32_t type_token_id (0x20003dc)
		i32 558; uint32_t java_map_index (0x22e)
	}, ; 451
	%struct.TypeMapModuleEntry {
		i32 33555422, ; uint32_t type_token_id (0x20003de)
		i32 943; uint32_t java_map_index (0x3af)
	}, ; 452
	%struct.TypeMapModuleEntry {
		i32 33555423, ; uint32_t type_token_id (0x20003df)
		i32 697; uint32_t java_map_index (0x2b9)
	}, ; 453
	%struct.TypeMapModuleEntry {
		i32 33555424, ; uint32_t type_token_id (0x20003e0)
		i32 664; uint32_t java_map_index (0x298)
	}, ; 454
	%struct.TypeMapModuleEntry {
		i32 33555425, ; uint32_t type_token_id (0x20003e1)
		i32 274; uint32_t java_map_index (0x112)
	}, ; 455
	%struct.TypeMapModuleEntry {
		i32 33555427, ; uint32_t type_token_id (0x20003e3)
		i32 168; uint32_t java_map_index (0xa8)
	}, ; 456
	%struct.TypeMapModuleEntry {
		i32 33555430, ; uint32_t type_token_id (0x20003e6)
		i32 41; uint32_t java_map_index (0x29)
	}, ; 457
	%struct.TypeMapModuleEntry {
		i32 33555431, ; uint32_t type_token_id (0x20003e7)
		i32 122; uint32_t java_map_index (0x7a)
	}, ; 458
	%struct.TypeMapModuleEntry {
		i32 33555432, ; uint32_t type_token_id (0x20003e8)
		i32 383; uint32_t java_map_index (0x17f)
	}, ; 459
	%struct.TypeMapModuleEntry {
		i32 33555433, ; uint32_t type_token_id (0x20003e9)
		i32 173; uint32_t java_map_index (0xad)
	}, ; 460
	%struct.TypeMapModuleEntry {
		i32 33555434, ; uint32_t type_token_id (0x20003ea)
		i32 432; uint32_t java_map_index (0x1b0)
	}, ; 461
	%struct.TypeMapModuleEntry {
		i32 33555436, ; uint32_t type_token_id (0x20003ec)
		i32 83; uint32_t java_map_index (0x53)
	}, ; 462
	%struct.TypeMapModuleEntry {
		i32 33555437, ; uint32_t type_token_id (0x20003ed)
		i32 183; uint32_t java_map_index (0xb7)
	}, ; 463
	%struct.TypeMapModuleEntry {
		i32 33555438, ; uint32_t type_token_id (0x20003ee)
		i32 816; uint32_t java_map_index (0x330)
	}, ; 464
	%struct.TypeMapModuleEntry {
		i32 33555440, ; uint32_t type_token_id (0x20003f0)
		i32 3; uint32_t java_map_index (0x3)
	}, ; 465
	%struct.TypeMapModuleEntry {
		i32 33555441, ; uint32_t type_token_id (0x20003f1)
		i32 382; uint32_t java_map_index (0x17e)
	}, ; 466
	%struct.TypeMapModuleEntry {
		i32 33555442, ; uint32_t type_token_id (0x20003f2)
		i32 328; uint32_t java_map_index (0x148)
	}, ; 467
	%struct.TypeMapModuleEntry {
		i32 33555443, ; uint32_t type_token_id (0x20003f3)
		i32 193; uint32_t java_map_index (0xc1)
	}, ; 468
	%struct.TypeMapModuleEntry {
		i32 33555444, ; uint32_t type_token_id (0x20003f4)
		i32 685; uint32_t java_map_index (0x2ad)
	}, ; 469
	%struct.TypeMapModuleEntry {
		i32 33555445, ; uint32_t type_token_id (0x20003f5)
		i32 860; uint32_t java_map_index (0x35c)
	}, ; 470
	%struct.TypeMapModuleEntry {
		i32 33555447, ; uint32_t type_token_id (0x20003f7)
		i32 176; uint32_t java_map_index (0xb0)
	}, ; 471
	%struct.TypeMapModuleEntry {
		i32 33555448, ; uint32_t type_token_id (0x20003f8)
		i32 79; uint32_t java_map_index (0x4f)
	}, ; 472
	%struct.TypeMapModuleEntry {
		i32 33555449, ; uint32_t type_token_id (0x20003f9)
		i32 296; uint32_t java_map_index (0x128)
	}, ; 473
	%struct.TypeMapModuleEntry {
		i32 33555450, ; uint32_t type_token_id (0x20003fa)
		i32 569; uint32_t java_map_index (0x239)
	}, ; 474
	%struct.TypeMapModuleEntry {
		i32 33555451, ; uint32_t type_token_id (0x20003fb)
		i32 639; uint32_t java_map_index (0x27f)
	}, ; 475
	%struct.TypeMapModuleEntry {
		i32 33555466, ; uint32_t type_token_id (0x200040a)
		i32 705; uint32_t java_map_index (0x2c1)
	} ; 476
], align 4

@module21_managed_to_java_duplicates = internal dso_local constant [180 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554601, ; uint32_t type_token_id (0x20000a9)
		i32 527; uint32_t java_map_index (0x20f)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554605, ; uint32_t type_token_id (0x20000ad)
		i32 283; uint32_t java_map_index (0x11b)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554607, ; uint32_t type_token_id (0x20000af)
		i32 56; uint32_t java_map_index (0x38)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 877; uint32_t java_map_index (0x36d)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554612, ; uint32_t type_token_id (0x20000b4)
		i32 812; uint32_t java_map_index (0x32c)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554614, ; uint32_t type_token_id (0x20000b6)
		i32 640; uint32_t java_map_index (0x280)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 318; uint32_t java_map_index (0x13e)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 790; uint32_t java_map_index (0x316)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 28; uint32_t java_map_index (0x1c)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554622, ; uint32_t type_token_id (0x20000be)
		i32 191; uint32_t java_map_index (0xbf)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554624, ; uint32_t type_token_id (0x20000c0)
		i32 897; uint32_t java_map_index (0x381)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554628, ; uint32_t type_token_id (0x20000c4)
		i32 530; uint32_t java_map_index (0x212)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554630, ; uint32_t type_token_id (0x20000c6)
		i32 937; uint32_t java_map_index (0x3a9)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554633, ; uint32_t type_token_id (0x20000c9)
		i32 889; uint32_t java_map_index (0x379)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554635, ; uint32_t type_token_id (0x20000cb)
		i32 42; uint32_t java_map_index (0x2a)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554637, ; uint32_t type_token_id (0x20000cd)
		i32 589; uint32_t java_map_index (0x24d)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554640, ; uint32_t type_token_id (0x20000d0)
		i32 73; uint32_t java_map_index (0x49)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554642, ; uint32_t type_token_id (0x20000d2)
		i32 848; uint32_t java_map_index (0x350)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554645, ; uint32_t type_token_id (0x20000d5)
		i32 504; uint32_t java_map_index (0x1f8)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554648, ; uint32_t type_token_id (0x20000d8)
		i32 472; uint32_t java_map_index (0x1d8)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554652, ; uint32_t type_token_id (0x20000dc)
		i32 255; uint32_t java_map_index (0xff)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554654, ; uint32_t type_token_id (0x20000de)
		i32 455; uint32_t java_map_index (0x1c7)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554655, ; uint32_t type_token_id (0x20000df)
		i32 482; uint32_t java_map_index (0x1e2)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554661, ; uint32_t type_token_id (0x20000e5)
		i32 622; uint32_t java_map_index (0x26e)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554666, ; uint32_t type_token_id (0x20000ea)
		i32 1018; uint32_t java_map_index (0x3fa)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554672, ; uint32_t type_token_id (0x20000f0)
		i32 393; uint32_t java_map_index (0x189)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554678, ; uint32_t type_token_id (0x20000f6)
		i32 121; uint32_t java_map_index (0x79)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554683, ; uint32_t type_token_id (0x20000fb)
		i32 644; uint32_t java_map_index (0x284)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554685, ; uint32_t type_token_id (0x20000fd)
		i32 303; uint32_t java_map_index (0x12f)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554687, ; uint32_t type_token_id (0x20000ff)
		i32 947; uint32_t java_map_index (0x3b3)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554689, ; uint32_t type_token_id (0x2000101)
		i32 7; uint32_t java_map_index (0x7)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554694, ; uint32_t type_token_id (0x2000106)
		i32 117; uint32_t java_map_index (0x75)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554696, ; uint32_t type_token_id (0x2000108)
		i32 495; uint32_t java_map_index (0x1ef)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 291; uint32_t java_map_index (0x123)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554713, ; uint32_t type_token_id (0x2000119)
		i32 248; uint32_t java_map_index (0xf8)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554723, ; uint32_t type_token_id (0x2000123)
		i32 482; uint32_t java_map_index (0x1e2)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554724, ; uint32_t type_token_id (0x2000124)
		i32 622; uint32_t java_map_index (0x26e)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 375; uint32_t java_map_index (0x177)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554728, ; uint32_t type_token_id (0x2000128)
		i32 915; uint32_t java_map_index (0x393)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554730, ; uint32_t type_token_id (0x200012a)
		i32 652; uint32_t java_map_index (0x28c)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554733, ; uint32_t type_token_id (0x200012d)
		i32 490; uint32_t java_map_index (0x1ea)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554735, ; uint32_t type_token_id (0x200012f)
		i32 737; uint32_t java_map_index (0x2e1)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554737, ; uint32_t type_token_id (0x2000131)
		i32 595; uint32_t java_map_index (0x253)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 693; uint32_t java_map_index (0x2b5)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554758, ; uint32_t type_token_id (0x2000146)
		i32 807; uint32_t java_map_index (0x327)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 31; uint32_t java_map_index (0x1f)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554765, ; uint32_t type_token_id (0x200014d)
		i32 914; uint32_t java_map_index (0x392)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554767, ; uint32_t type_token_id (0x200014f)
		i32 876; uint32_t java_map_index (0x36c)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 663; uint32_t java_map_index (0x297)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554772, ; uint32_t type_token_id (0x2000154)
		i32 419; uint32_t java_map_index (0x1a3)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554775, ; uint32_t type_token_id (0x2000157)
		i32 836; uint32_t java_map_index (0x344)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554777, ; uint32_t type_token_id (0x2000159)
		i32 991; uint32_t java_map_index (0x3df)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554780, ; uint32_t type_token_id (0x200015c)
		i32 408; uint32_t java_map_index (0x198)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554786, ; uint32_t type_token_id (0x2000162)
		i32 342; uint32_t java_map_index (0x156)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554801, ; uint32_t type_token_id (0x2000171)
		i32 74; uint32_t java_map_index (0x4a)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554803, ; uint32_t type_token_id (0x2000173)
		i32 767; uint32_t java_map_index (0x2ff)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554806, ; uint32_t type_token_id (0x2000176)
		i32 4; uint32_t java_map_index (0x4)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554808, ; uint32_t type_token_id (0x2000178)
		i32 688; uint32_t java_map_index (0x2b0)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554810, ; uint32_t type_token_id (0x200017a)
		i32 832; uint32_t java_map_index (0x340)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554812, ; uint32_t type_token_id (0x200017c)
		i32 874; uint32_t java_map_index (0x36a)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554820, ; uint32_t type_token_id (0x2000184)
		i32 217; uint32_t java_map_index (0xd9)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554823, ; uint32_t type_token_id (0x2000187)
		i32 139; uint32_t java_map_index (0x8b)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554825, ; uint32_t type_token_id (0x2000189)
		i32 922; uint32_t java_map_index (0x39a)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554827, ; uint32_t type_token_id (0x200018b)
		i32 878; uint32_t java_map_index (0x36e)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554841, ; uint32_t type_token_id (0x2000199)
		i32 175; uint32_t java_map_index (0xaf)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33554843, ; uint32_t type_token_id (0x200019b)
		i32 757; uint32_t java_map_index (0x2f5)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33554845, ; uint32_t type_token_id (0x200019d)
		i32 403; uint32_t java_map_index (0x193)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33554847, ; uint32_t type_token_id (0x200019f)
		i32 486; uint32_t java_map_index (0x1e6)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33554849, ; uint32_t type_token_id (0x20001a1)
		i32 1006; uint32_t java_map_index (0x3ee)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33554861, ; uint32_t type_token_id (0x20001ad)
		i32 891; uint32_t java_map_index (0x37b)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33554864, ; uint32_t type_token_id (0x20001b0)
		i32 236; uint32_t java_map_index (0xec)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33554866, ; uint32_t type_token_id (0x20001b2)
		i32 226; uint32_t java_map_index (0xe2)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33554868, ; uint32_t type_token_id (0x20001b4)
		i32 196; uint32_t java_map_index (0xc4)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33554872, ; uint32_t type_token_id (0x20001b8)
		i32 0; uint32_t java_map_index (0x0)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33554873, ; uint32_t type_token_id (0x20001b9)
		i32 70; uint32_t java_map_index (0x46)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33554875, ; uint32_t type_token_id (0x20001bb)
		i32 511; uint32_t java_map_index (0x1ff)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33554877, ; uint32_t type_token_id (0x20001bd)
		i32 82; uint32_t java_map_index (0x52)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33554880, ; uint32_t type_token_id (0x20001c0)
		i32 750; uint32_t java_map_index (0x2ee)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33554884, ; uint32_t type_token_id (0x20001c4)
		i32 178; uint32_t java_map_index (0xb2)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33554892, ; uint32_t type_token_id (0x20001cc)
		i32 617; uint32_t java_map_index (0x269)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33554896, ; uint32_t type_token_id (0x20001d0)
		i32 242; uint32_t java_map_index (0xf2)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33554904, ; uint32_t type_token_id (0x20001d8)
		i32 404; uint32_t java_map_index (0x194)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33554907, ; uint32_t type_token_id (0x20001db)
		i32 612; uint32_t java_map_index (0x264)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33554922, ; uint32_t type_token_id (0x20001ea)
		i32 923; uint32_t java_map_index (0x39b)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33554933, ; uint32_t type_token_id (0x20001f5)
		i32 762; uint32_t java_map_index (0x2fa)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33554934, ; uint32_t type_token_id (0x20001f6)
		i32 683; uint32_t java_map_index (0x2ab)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33554936, ; uint32_t type_token_id (0x20001f8)
		i32 868; uint32_t java_map_index (0x364)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33554943, ; uint32_t type_token_id (0x20001ff)
		i32 231; uint32_t java_map_index (0xe7)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33554945, ; uint32_t type_token_id (0x2000201)
		i32 143; uint32_t java_map_index (0x8f)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33554947, ; uint32_t type_token_id (0x2000203)
		i32 601; uint32_t java_map_index (0x259)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33554949, ; uint32_t type_token_id (0x2000205)
		i32 919; uint32_t java_map_index (0x397)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33554952, ; uint32_t type_token_id (0x2000208)
		i32 1009; uint32_t java_map_index (0x3f1)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33554954, ; uint32_t type_token_id (0x200020a)
		i32 69; uint32_t java_map_index (0x45)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33554956, ; uint32_t type_token_id (0x200020c)
		i32 1007; uint32_t java_map_index (0x3ef)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33554959, ; uint32_t type_token_id (0x200020f)
		i32 784; uint32_t java_map_index (0x310)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33554961, ; uint32_t type_token_id (0x2000211)
		i32 692; uint32_t java_map_index (0x2b4)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33554963, ; uint32_t type_token_id (0x2000213)
		i32 271; uint32_t java_map_index (0x10f)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33554965, ; uint32_t type_token_id (0x2000215)
		i32 331; uint32_t java_map_index (0x14b)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33554967, ; uint32_t type_token_id (0x2000217)
		i32 108; uint32_t java_map_index (0x6c)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33554969, ; uint32_t type_token_id (0x2000219)
		i32 687; uint32_t java_map_index (0x2af)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33554971, ; uint32_t type_token_id (0x200021b)
		i32 583; uint32_t java_map_index (0x247)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33554974, ; uint32_t type_token_id (0x200021e)
		i32 614; uint32_t java_map_index (0x266)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33554975, ; uint32_t type_token_id (0x200021f)
		i32 700; uint32_t java_map_index (0x2bc)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33554977, ; uint32_t type_token_id (0x2000221)
		i32 773; uint32_t java_map_index (0x305)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33554981, ; uint32_t type_token_id (0x2000225)
		i32 859; uint32_t java_map_index (0x35b)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33554985, ; uint32_t type_token_id (0x2000229)
		i32 43; uint32_t java_map_index (0x2b)
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 33554988, ; uint32_t type_token_id (0x200022c)
		i32 1000; uint32_t java_map_index (0x3e8)
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 33554996, ; uint32_t type_token_id (0x2000234)
		i32 334; uint32_t java_map_index (0x14e)
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 33555001, ; uint32_t type_token_id (0x2000239)
		i32 421; uint32_t java_map_index (0x1a5)
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 33555004, ; uint32_t type_token_id (0x200023c)
		i32 951; uint32_t java_map_index (0x3b7)
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 33555006, ; uint32_t type_token_id (0x200023e)
		i32 809; uint32_t java_map_index (0x329)
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 33555010, ; uint32_t type_token_id (0x2000242)
		i32 350; uint32_t java_map_index (0x15e)
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 33555012, ; uint32_t type_token_id (0x2000244)
		i32 649; uint32_t java_map_index (0x289)
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 33555016, ; uint32_t type_token_id (0x2000248)
		i32 563; uint32_t java_map_index (0x233)
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 33555020, ; uint32_t type_token_id (0x200024c)
		i32 814; uint32_t java_map_index (0x32e)
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 33555024, ; uint32_t type_token_id (0x2000250)
		i32 384; uint32_t java_map_index (0x180)
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 33555049, ; uint32_t type_token_id (0x2000269)
		i32 59; uint32_t java_map_index (0x3b)
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 33555056, ; uint32_t type_token_id (0x2000270)
		i32 14; uint32_t java_map_index (0xe)
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 33555060, ; uint32_t type_token_id (0x2000274)
		i32 1005; uint32_t java_map_index (0x3ed)
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 33555063, ; uint32_t type_token_id (0x2000277)
		i32 288; uint32_t java_map_index (0x120)
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 33555064, ; uint32_t type_token_id (0x2000278)
		i32 886; uint32_t java_map_index (0x376)
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 33555104, ; uint32_t type_token_id (0x20002a0)
		i32 397; uint32_t java_map_index (0x18d)
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 33555105, ; uint32_t type_token_id (0x20002a1)
		i32 494; uint32_t java_map_index (0x1ee)
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 33555109, ; uint32_t type_token_id (0x20002a5)
		i32 903; uint32_t java_map_index (0x387)
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 33555112, ; uint32_t type_token_id (0x20002a8)
		i32 949; uint32_t java_map_index (0x3b5)
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 33555149, ; uint32_t type_token_id (0x20002cd)
		i32 307; uint32_t java_map_index (0x133)
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 33555155, ; uint32_t type_token_id (0x20002d3)
		i32 347; uint32_t java_map_index (0x15b)
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 33555160, ; uint32_t type_token_id (0x20002d8)
		i32 152; uint32_t java_map_index (0x98)
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 33555164, ; uint32_t type_token_id (0x20002dc)
		i32 1004; uint32_t java_map_index (0x3ec)
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 33555236, ; uint32_t type_token_id (0x2000324)
		i32 440; uint32_t java_map_index (0x1b8)
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 657; uint32_t java_map_index (0x291)
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 892; uint32_t java_map_index (0x37c)
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 33555244, ; uint32_t type_token_id (0x200032c)
		i32 349; uint32_t java_map_index (0x15d)
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 33555252, ; uint32_t type_token_id (0x2000334)
		i32 655; uint32_t java_map_index (0x28f)
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 33555259, ; uint32_t type_token_id (0x200033b)
		i32 803; uint32_t java_map_index (0x323)
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 33555263, ; uint32_t type_token_id (0x200033f)
		i32 458; uint32_t java_map_index (0x1ca)
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 192; uint32_t java_map_index (0xc0)
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 956; uint32_t java_map_index (0x3bc)
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 626; uint32_t java_map_index (0x272)
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 690; uint32_t java_map_index (0x2b2)
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 116; uint32_t java_map_index (0x74)
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 621; uint32_t java_map_index (0x26d)
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 33555286, ; uint32_t type_token_id (0x2000356)
		i32 443; uint32_t java_map_index (0x1bb)
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 33555289, ; uint32_t type_token_id (0x2000359)
		i32 93; uint32_t java_map_index (0x5d)
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 33555292, ; uint32_t type_token_id (0x200035c)
		i32 483; uint32_t java_map_index (0x1e3)
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 61; uint32_t java_map_index (0x3d)
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 33555299, ; uint32_t type_token_id (0x2000363)
		i32 600; uint32_t java_map_index (0x258)
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 817; uint32_t java_map_index (0x331)
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 33555310, ; uint32_t type_token_id (0x200036e)
		i32 901; uint32_t java_map_index (0x385)
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 33555322, ; uint32_t type_token_id (0x200037a)
		i32 627; uint32_t java_map_index (0x273)
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 261; uint32_t java_map_index (0x105)
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 86; uint32_t java_map_index (0x56)
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 240; uint32_t java_map_index (0xf0)
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 829; uint32_t java_map_index (0x33d)
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 33555345, ; uint32_t type_token_id (0x2000391)
		i32 335; uint32_t java_map_index (0x14f)
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 33555347, ; uint32_t type_token_id (0x2000393)
		i32 352; uint32_t java_map_index (0x160)
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 33555349, ; uint32_t type_token_id (0x2000395)
		i32 728; uint32_t java_map_index (0x2d8)
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 620; uint32_t java_map_index (0x26c)
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 703; uint32_t java_map_index (0x2bf)
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 33555360, ; uint32_t type_token_id (0x20003a0)
		i32 378; uint32_t java_map_index (0x17a)
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 473; uint32_t java_map_index (0x1d9)
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 811; uint32_t java_map_index (0x32b)
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 8; uint32_t java_map_index (0x8)
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 33555372, ; uint32_t type_token_id (0x20003ac)
		i32 611; uint32_t java_map_index (0x263)
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 33555374, ; uint32_t type_token_id (0x20003ae)
		i32 119; uint32_t java_map_index (0x77)
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 351; uint32_t java_map_index (0x15f)
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 33555379, ; uint32_t type_token_id (0x20003b3)
		i32 329; uint32_t java_map_index (0x149)
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 33555386, ; uint32_t type_token_id (0x20003ba)
		i32 225; uint32_t java_map_index (0xe1)
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 33555392, ; uint32_t type_token_id (0x20003c0)
		i32 830; uint32_t java_map_index (0x33e)
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 33555398, ; uint32_t type_token_id (0x20003c6)
		i32 1017; uint32_t java_map_index (0x3f9)
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 33555400, ; uint32_t type_token_id (0x20003c8)
		i32 913; uint32_t java_map_index (0x391)
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 33555404, ; uint32_t type_token_id (0x20003cc)
		i32 456; uint32_t java_map_index (0x1c8)
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 33555408, ; uint32_t type_token_id (0x20003d0)
		i32 964; uint32_t java_map_index (0x3c4)
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 33555411, ; uint32_t type_token_id (0x20003d3)
		i32 969; uint32_t java_map_index (0x3c9)
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 33555418, ; uint32_t type_token_id (0x20003da)
		i32 89; uint32_t java_map_index (0x59)
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 33555421, ; uint32_t type_token_id (0x20003dd)
		i32 558; uint32_t java_map_index (0x22e)
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 33555426, ; uint32_t type_token_id (0x20003e2)
		i32 274; uint32_t java_map_index (0x112)
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 33555428, ; uint32_t type_token_id (0x20003e4)
		i32 168; uint32_t java_map_index (0xa8)
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 33555435, ; uint32_t type_token_id (0x20003eb)
		i32 432; uint32_t java_map_index (0x1b0)
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 33555439, ; uint32_t type_token_id (0x20003ef)
		i32 816; uint32_t java_map_index (0x330)
	} ; 179
], align 4

@module22_managed_to_java = internal dso_local constant [65 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 806; uint32_t java_map_index (0x326)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554488, ; uint32_t type_token_id (0x2000038)
		i32 796; uint32_t java_map_index (0x31c)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 319; uint32_t java_map_index (0x13f)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 309; uint32_t java_map_index (0x135)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 179; uint32_t java_map_index (0xb3)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 805; uint32_t java_map_index (0x325)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 634; uint32_t java_map_index (0x27a)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 216; uint32_t java_map_index (0xd8)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 599; uint32_t java_map_index (0x257)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 623; uint32_t java_map_index (0x26f)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 808; uint32_t java_map_index (0x328)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 533; uint32_t java_map_index (0x215)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 988; uint32_t java_map_index (0x3dc)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 633; uint32_t java_map_index (0x279)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 910; uint32_t java_map_index (0x38e)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 148; uint32_t java_map_index (0x94)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 285; uint32_t java_map_index (0x11d)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 632; uint32_t java_map_index (0x278)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 659; uint32_t java_map_index (0x293)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 154; uint32_t java_map_index (0x9a)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 182; uint32_t java_map_index (0xb6)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 933; uint32_t java_map_index (0x3a5)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 345; uint32_t java_map_index (0x159)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 681; uint32_t java_map_index (0x2a9)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 534; uint32_t java_map_index (0x216)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 323; uint32_t java_map_index (0x143)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 407; uint32_t java_map_index (0x197)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 195; uint32_t java_map_index (0xc3)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 709; uint32_t java_map_index (0x2c5)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 968; uint32_t java_map_index (0x3c8)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 298; uint32_t java_map_index (0x12a)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 151; uint32_t java_map_index (0x97)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 243; uint32_t java_map_index (0xf3)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 604; uint32_t java_map_index (0x25c)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 259; uint32_t java_map_index (0x103)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554545, ; uint32_t type_token_id (0x2000071)
		i32 841; uint32_t java_map_index (0x349)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 417; uint32_t java_map_index (0x1a1)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 602; uint32_t java_map_index (0x25a)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 542; uint32_t java_map_index (0x21e)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 946; uint32_t java_map_index (0x3b2)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 789; uint32_t java_map_index (0x315)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 831; uint32_t java_map_index (0x33f)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 477; uint32_t java_map_index (0x1dd)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 202; uint32_t java_map_index (0xca)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 727; uint32_t java_map_index (0x2d7)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 708; uint32_t java_map_index (0x2c4)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 174; uint32_t java_map_index (0xae)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 593; uint32_t java_map_index (0x251)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 13; uint32_t java_map_index (0xd)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 356; uint32_t java_map_index (0x164)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 887; uint32_t java_map_index (0x377)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 575; uint32_t java_map_index (0x23f)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 1003; uint32_t java_map_index (0x3eb)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 1015; uint32_t java_map_index (0x3f7)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 791; uint32_t java_map_index (0x317)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 636; uint32_t java_map_index (0x27c)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 373; uint32_t java_map_index (0x175)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 743; uint32_t java_map_index (0x2e7)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 487; uint32_t java_map_index (0x1e7)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 1020; uint32_t java_map_index (0x3fc)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 272; uint32_t java_map_index (0x110)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 965; uint32_t java_map_index (0x3c5)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 131; uint32_t java_map_index (0x83)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 160; uint32_t java_map_index (0xa0)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 358; uint32_t java_map_index (0x166)
	} ; 64
], align 4

@module22_managed_to_java_duplicates = internal dso_local constant [23 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554487, ; uint32_t type_token_id (0x2000037)
		i32 806; uint32_t java_map_index (0x326)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554489, ; uint32_t type_token_id (0x2000039)
		i32 796; uint32_t java_map_index (0x31c)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 179; uint32_t java_map_index (0xb3)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 623; uint32_t java_map_index (0x26f)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554506, ; uint32_t type_token_id (0x200004a)
		i32 148; uint32_t java_map_index (0x94)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 910; uint32_t java_map_index (0x38e)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 659; uint32_t java_map_index (0x293)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 534; uint32_t java_map_index (0x216)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 407; uint32_t java_map_index (0x197)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 681; uint32_t java_map_index (0x2a9)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 298; uint32_t java_map_index (0x12a)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 151; uint32_t java_map_index (0x97)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 243; uint32_t java_map_index (0xf3)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 604; uint32_t java_map_index (0x25c)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 259; uint32_t java_map_index (0x103)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554546, ; uint32_t type_token_id (0x2000072)
		i32 841; uint32_t java_map_index (0x349)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 417; uint32_t java_map_index (0x1a1)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 542; uint32_t java_map_index (0x21e)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 477; uint32_t java_map_index (0x1dd)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 174; uint32_t java_map_index (0xae)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 575; uint32_t java_map_index (0x23f)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 965; uint32_t java_map_index (0x3c5)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554583, ; uint32_t type_token_id (0x2000097)
		i32 131; uint32_t java_map_index (0x83)
	} ; 22
], align 4

@module23_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 321; uint32_t java_map_index (0x141)
	} ; 0
], align 4

@module24_managed_to_java = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 447; uint32_t java_map_index (0x1bf)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 6; uint32_t java_map_index (0x6)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 921; uint32_t java_map_index (0x399)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 144; uint32_t java_map_index (0x90)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 230; uint32_t java_map_index (0xe6)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 95; uint32_t java_map_index (0x5f)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 962; uint32_t java_map_index (0x3c2)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 459; uint32_t java_map_index (0x1cb)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554476, ; uint32_t type_token_id (0x200002c)
		i32 503; uint32_t java_map_index (0x1f7)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 1012; uint32_t java_map_index (0x3f4)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554480, ; uint32_t type_token_id (0x2000030)
		i32 548; uint32_t java_map_index (0x224)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 35; uint32_t java_map_index (0x23)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 147; uint32_t java_map_index (0x93)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 532; uint32_t java_map_index (0x214)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 594; uint32_t java_map_index (0x252)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 91; uint32_t java_map_index (0x5b)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 797; uint32_t java_map_index (0x31d)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 23; uint32_t java_map_index (0x17)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 695; uint32_t java_map_index (0x2b7)
	} ; 18
], align 4

@module24_managed_to_java_duplicates = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554470, ; uint32_t type_token_id (0x2000026)
		i32 144; uint32_t java_map_index (0x90)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 962; uint32_t java_map_index (0x3c2)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554477, ; uint32_t type_token_id (0x200002d)
		i32 503; uint32_t java_map_index (0x1f7)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554479, ; uint32_t type_token_id (0x200002f)
		i32 1012; uint32_t java_map_index (0x3f4)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554481, ; uint32_t type_token_id (0x2000031)
		i32 548; uint32_t java_map_index (0x224)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 459; uint32_t java_map_index (0x1cb)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 147; uint32_t java_map_index (0x93)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 532; uint32_t java_map_index (0x214)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 91; uint32_t java_map_index (0x5b)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554505, ; uint32_t type_token_id (0x2000049)
		i32 695; uint32_t java_map_index (0x2b7)
	} ; 9
], align 4

@module25_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 888; uint32_t java_map_index (0x378)
	} ; 0
], align 4

@module25_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 888; uint32_t java_map_index (0x378)
	} ; 0
], align 4

@module26_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 258; uint32_t java_map_index (0x102)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 977; uint32_t java_map_index (0x3d1)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 290; uint32_t java_map_index (0x122)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 197; uint32_t java_map_index (0xc5)
	} ; 3
], align 4

@module26_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 290; uint32_t java_map_index (0x122)
	} ; 0
], align 4

@module27_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 605; uint32_t java_map_index (0x25d)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 834; uint32_t java_map_index (0x342)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 562; uint32_t java_map_index (0x232)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 1008; uint32_t java_map_index (0x3f0)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 418; uint32_t java_map_index (0x1a2)
	} ; 4
], align 4

@module28_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 244; uint32_t java_map_index (0xf4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 618; uint32_t java_map_index (0x26a)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 90; uint32_t java_map_index (0x5a)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 237; uint32_t java_map_index (0xed)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 51; uint32_t java_map_index (0x33)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 667; uint32_t java_map_index (0x29b)
	} ; 5
], align 4

@module28_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 618; uint32_t java_map_index (0x26a)
	} ; 0
], align 4

@module29_managed_to_java = internal dso_local constant [41 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 954; uint32_t java_map_index (0x3ba)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 862; uint32_t java_map_index (0x35e)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 586; uint32_t java_map_index (0x24a)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 221; uint32_t java_map_index (0xdd)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 775; uint32_t java_map_index (0x307)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 5; uint32_t java_map_index (0x5)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 696; uint32_t java_map_index (0x2b8)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 798; uint32_t java_map_index (0x31e)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 98; uint32_t java_map_index (0x62)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 555; uint32_t java_map_index (0x22b)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 565; uint32_t java_map_index (0x235)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 861; uint32_t java_map_index (0x35d)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 635; uint32_t java_map_index (0x27b)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 97; uint32_t java_map_index (0x61)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 579; uint32_t java_map_index (0x243)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 437; uint32_t java_map_index (0x1b5)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 1001; uint32_t java_map_index (0x3e9)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 324; uint32_t java_map_index (0x144)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 689; uint32_t java_map_index (0x2b1)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 241; uint32_t java_map_index (0xf1)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 102; uint32_t java_map_index (0x66)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33554538, ; uint32_t type_token_id (0x200006a)
		i32 205; uint32_t java_map_index (0xcd)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 777; uint32_t java_map_index (0x309)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 327; uint32_t java_map_index (0x147)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 795; uint32_t java_map_index (0x31b)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 199; uint32_t java_map_index (0xc7)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 539; uint32_t java_map_index (0x21b)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33554550, ; uint32_t type_token_id (0x2000076)
		i32 15; uint32_t java_map_index (0xf)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 606; uint32_t java_map_index (0x25e)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 556; uint32_t java_map_index (0x22c)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 305; uint32_t java_map_index (0x131)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 492; uint32_t java_map_index (0x1ec)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 317; uint32_t java_map_index (0x13d)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 132; uint32_t java_map_index (0x84)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 297; uint32_t java_map_index (0x129)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 713; uint32_t java_map_index (0x2c9)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 850; uint32_t java_map_index (0x352)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 142; uint32_t java_map_index (0x8e)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 109; uint32_t java_map_index (0x6d)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 88; uint32_t java_map_index (0x58)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 682; uint32_t java_map_index (0x2aa)
	} ; 40
], align 4

@module29_managed_to_java_duplicates = internal dso_local constant [21 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 862; uint32_t java_map_index (0x35e)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 586; uint32_t java_map_index (0x24a)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 775; uint32_t java_map_index (0x307)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 98; uint32_t java_map_index (0x62)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 861; uint32_t java_map_index (0x35d)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33554526, ; uint32_t type_token_id (0x200005e)
		i32 97; uint32_t java_map_index (0x61)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 579; uint32_t java_map_index (0x243)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 324; uint32_t java_map_index (0x144)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 1001; uint32_t java_map_index (0x3e9)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 241; uint32_t java_map_index (0xf1)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33554539, ; uint32_t type_token_id (0x200006b)
		i32 205; uint32_t java_map_index (0xcd)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 102; uint32_t java_map_index (0x66)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 795; uint32_t java_map_index (0x31b)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 539; uint32_t java_map_index (0x21b)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 15; uint32_t java_map_index (0xf)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 556; uint32_t java_map_index (0x22c)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33554561, ; uint32_t type_token_id (0x2000081)
		i32 317; uint32_t java_map_index (0x13d)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33554566, ; uint32_t type_token_id (0x2000086)
		i32 297; uint32_t java_map_index (0x129)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 142; uint32_t java_map_index (0x8e)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 109; uint32_t java_map_index (0x6d)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 682; uint32_t java_map_index (0x2aa)
	} ; 20
], align 4

@module30_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 67; uint32_t java_map_index (0x43)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 715; uint32_t java_map_index (0x2cb)
	} ; 1
], align 4

@module30_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 715; uint32_t java_map_index (0x2cb)
	} ; 0
], align 4

@module31_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 564; uint32_t java_map_index (0x234)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 729; uint32_t java_map_index (0x2d9)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 124; uint32_t java_map_index (0x7c)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 11; uint32_t java_map_index (0xb)
	} ; 3
], align 4

@module31_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 729; uint32_t java_map_index (0x2d9)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 124; uint32_t java_map_index (0x7c)
	} ; 1
], align 4

@module32_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 740; uint32_t java_map_index (0x2e4)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 821; uint32_t java_map_index (0x335)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 360; uint32_t java_map_index (0x168)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 466; uint32_t java_map_index (0x1d2)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 900; uint32_t java_map_index (0x384)
	} ; 4
], align 4

@module32_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 821; uint32_t java_map_index (0x335)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 360; uint32_t java_map_index (0x168)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 466; uint32_t java_map_index (0x1d2)
	} ; 2
], align 4

@module33_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33555110, ; uint32_t type_token_id (0x20002a6)
		i32 429; uint32_t java_map_index (0x1ad)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33555122, ; uint32_t type_token_id (0x20002b2)
		i32 694; uint32_t java_map_index (0x2b6)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33555127, ; uint32_t type_token_id (0x20002b7)
		i32 738; uint32_t java_map_index (0x2e2)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33555128, ; uint32_t type_token_id (0x20002b8)
		i32 973; uint32_t java_map_index (0x3cd)
	} ; 3
], align 4

@module34_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 645; uint32_t java_map_index (0x285)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 754; uint32_t java_map_index (0x2f2)
	} ; 1
], align 4

@module35_managed_to_java = internal dso_local constant [106 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 129; uint32_t java_map_index (0x81)
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 720; uint32_t java_map_index (0x2d0)
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 198; uint32_t java_map_index (0xc6)
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 513; uint32_t java_map_index (0x201)
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 929; uint32_t java_map_index (0x3a1)
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 1016; uint32_t java_map_index (0x3f8)
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 136; uint32_t java_map_index (0x88)
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 211; uint32_t java_map_index (0xd3)
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 744; uint32_t java_map_index (0x2e8)
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 557; uint32_t java_map_index (0x22d)
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 552; uint32_t java_map_index (0x228)
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 32; uint32_t java_map_index (0x20)
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 264; uint32_t java_map_index (0x108)
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 339; uint32_t java_map_index (0x153)
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 325; uint32_t java_map_index (0x145)
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 235; uint32_t java_map_index (0xeb)
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 994; uint32_t java_map_index (0x3e2)
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 680; uint32_t java_map_index (0x2a8)
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 731; uint32_t java_map_index (0x2db)
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 280; uint32_t java_map_index (0x118)
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 65; uint32_t java_map_index (0x41)
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 893; uint32_t java_map_index (0x37d)
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 306; uint32_t java_map_index (0x132)
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 262; uint32_t java_map_index (0x106)
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 592; uint32_t java_map_index (0x250)
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 778; uint32_t java_map_index (0x30a)
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 847; uint32_t java_map_index (0x34f)
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 465; uint32_t java_map_index (0x1d1)
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 597; uint32_t java_map_index (0x255)
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 739; uint32_t java_map_index (0x2e3)
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 879; uint32_t java_map_index (0x36f)
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 344; uint32_t java_map_index (0x158)
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 33555297, ; uint32_t type_token_id (0x2000361)
		i32 741; uint32_t java_map_index (0x2e5)
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 849; uint32_t java_map_index (0x351)
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 33555299, ; uint32_t type_token_id (0x2000363)
		i32 822; uint32_t java_map_index (0x336)
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 33555300, ; uint32_t type_token_id (0x2000364)
		i32 156; uint32_t java_map_index (0x9c)
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 33555301, ; uint32_t type_token_id (0x2000365)
		i32 802; uint32_t java_map_index (0x322)
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 33555302, ; uint32_t type_token_id (0x2000366)
		i32 916; uint32_t java_map_index (0x394)
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 33555303, ; uint32_t type_token_id (0x2000367)
		i32 172; uint32_t java_map_index (0xac)
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 938; uint32_t java_map_index (0x3aa)
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 749; uint32_t java_map_index (0x2ed)
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 723; uint32_t java_map_index (0x2d3)
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 194; uint32_t java_map_index (0xc2)
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 748; uint32_t java_map_index (0x2ec)
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 698; uint32_t java_map_index (0x2ba)
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 413; uint32_t java_map_index (0x19d)
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 62; uint32_t java_map_index (0x3e)
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 332; uint32_t java_map_index (0x14c)
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 675; uint32_t java_map_index (0x2a3)
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 707; uint32_t java_map_index (0x2c3)
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 763; uint32_t java_map_index (0x2fb)
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 838; uint32_t java_map_index (0x346)
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 710; uint32_t java_map_index (0x2c6)
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 158; uint32_t java_map_index (0x9e)
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 786; uint32_t java_map_index (0x312)
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 826; uint32_t java_map_index (0x33a)
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 825; uint32_t java_map_index (0x339)
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 104; uint32_t java_map_index (0x68)
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 651; uint32_t java_map_index (0x28b)
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 127; uint32_t java_map_index (0x7f)
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 37; uint32_t java_map_index (0x25)
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 712; uint32_t java_map_index (0x2c8)
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 385; uint32_t java_map_index (0x181)
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 529; uint32_t java_map_index (0x211)
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 107; uint32_t java_map_index (0x6b)
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 858; uint32_t java_map_index (0x35a)
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 57; uint32_t java_map_index (0x39)
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 33555357, ; uint32_t type_token_id (0x200039d)
		i32 981; uint32_t java_map_index (0x3d5)
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 441; uint32_t java_map_index (0x1b9)
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 717; uint32_t java_map_index (0x2cd)
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 517; uint32_t java_map_index (0x205)
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 580; uint32_t java_map_index (0x244)
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 60; uint32_t java_map_index (0x3c)
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 118; uint32_t java_map_index (0x76)
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 732; uint32_t java_map_index (0x2dc)
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 48; uint32_t java_map_index (0x30)
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 425; uint32_t java_map_index (0x1a9)
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 662; uint32_t java_map_index (0x296)
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 267; uint32_t java_map_index (0x10b)
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 33555532, ; uint32_t type_token_id (0x200044c)
		i32 955; uint32_t java_map_index (0x3bb)
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 33555707, ; uint32_t type_token_id (0x20004fb)
		i32 415; uint32_t java_map_index (0x19f)
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 33555786, ; uint32_t type_token_id (0x200054a)
		i32 463; uint32_t java_map_index (0x1cf)
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 33555792, ; uint32_t type_token_id (0x2000550)
		i32 971; uint32_t java_map_index (0x3cb)
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 33555803, ; uint32_t type_token_id (0x200055b)
		i32 686; uint32_t java_map_index (0x2ae)
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 33555813, ; uint32_t type_token_id (0x2000565)
		i32 671; uint32_t java_map_index (0x29f)
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 33555815, ; uint32_t type_token_id (0x2000567)
		i32 380; uint32_t java_map_index (0x17c)
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 33555816, ; uint32_t type_token_id (0x2000568)
		i32 78; uint32_t java_map_index (0x4e)
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 33555823, ; uint32_t type_token_id (0x200056f)
		i32 273; uint32_t java_map_index (0x111)
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 33555826, ; uint32_t type_token_id (0x2000572)
		i32 591; uint32_t java_map_index (0x24f)
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 33555827, ; uint32_t type_token_id (0x2000573)
		i32 281; uint32_t java_map_index (0x119)
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 33555828, ; uint32_t type_token_id (0x2000574)
		i32 27; uint32_t java_map_index (0x1b)
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 33555831, ; uint32_t type_token_id (0x2000577)
		i32 574; uint32_t java_map_index (0x23e)
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 33555835, ; uint32_t type_token_id (0x200057b)
		i32 45; uint32_t java_map_index (0x2d)
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 33555836, ; uint32_t type_token_id (0x200057c)
		i32 34; uint32_t java_map_index (0x22)
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 33555845, ; uint32_t type_token_id (0x2000585)
		i32 561; uint32_t java_map_index (0x231)
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 33555848, ; uint32_t type_token_id (0x2000588)
		i32 354; uint32_t java_map_index (0x162)
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 33555851, ; uint32_t type_token_id (0x200058b)
		i32 68; uint32_t java_map_index (0x44)
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 33555856, ; uint32_t type_token_id (0x2000590)
		i32 247; uint32_t java_map_index (0xf7)
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 33555857, ; uint32_t type_token_id (0x2000591)
		i32 313; uint32_t java_map_index (0x139)
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 33555858, ; uint32_t type_token_id (0x2000592)
		i32 268; uint32_t java_map_index (0x10c)
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 33555859, ; uint32_t type_token_id (0x2000593)
		i32 105; uint32_t java_map_index (0x69)
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 33555861, ; uint32_t type_token_id (0x2000595)
		i32 959; uint32_t java_map_index (0x3bf)
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 33555862, ; uint32_t type_token_id (0x2000596)
		i32 719; uint32_t java_map_index (0x2cf)
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 33555955, ; uint32_t type_token_id (0x20005f3)
		i32 157; uint32_t java_map_index (0x9d)
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 33555957, ; uint32_t type_token_id (0x20005f5)
		i32 799; uint32_t java_map_index (0x31f)
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 33555958, ; uint32_t type_token_id (0x20005f6)
		i32 857; uint32_t java_map_index (0x359)
	} ; 105
], align 4

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [1022 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 444; uint32_t java_name_index (0x1bc)
	}, ; 0
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554765, ; uint32_t type_token_id (0x200014d)
		i32 152; uint32_t java_name_index (0x98)
	}, ; 1
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554831, ; uint32_t type_token_id (0x200018f)
		i32 417; uint32_t java_name_index (0x1a1)
	}, ; 2
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555440, ; uint32_t type_token_id (0x20003f0)
		i32 745; uint32_t java_name_index (0x2e9)
	}, ; 3
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 399; uint32_t java_name_index (0x18f)
	}, ; 4
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 863; uint32_t java_name_index (0x35f)
	}, ; 5
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554467, ; uint32_t type_token_id (0x2000023)
		i32 824; uint32_t java_name_index (0x338)
	}, ; 6
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 331; uint32_t java_name_index (0x14b)
	}, ; 7
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 693; uint32_t java_name_index (0x2b5)
	}, ; 8
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555321, ; uint32_t type_token_id (0x2000379)
		i32 664; uint32_t java_name_index (0x298)
	}, ; 9
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 90; uint32_t java_name_index (0x5a)
	}, ; 10
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 904; uint32_t java_name_index (0x388)
	}, ; 11
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554777, ; uint32_t type_token_id (0x2000159)
		i32 161; uint32_t java_name_index (0xa1)
	}, ; 12
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 805; uint32_t java_name_index (0x325)
	}, ; 13
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555045, ; uint32_t type_token_id (0x2000265)
		i32 528; uint32_t java_name_index (0x210)
	}, ; 14
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 885; uint32_t java_name_index (0x375)
	}, ; 15
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 197; uint32_t java_name_index (0xc5)
	}, ; 16
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554909, ; uint32_t type_token_id (0x20001dd)
		i32 463; uint32_t java_name_index (0x1cf)
	}, ; 17
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 83; uint32_t java_name_index (0x53)
	}, ; 18
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 271; uint32_t java_name_index (0x10f)
	}, ; 19
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555195, ; uint32_t type_token_id (0x20002fb)
		i32 573; uint32_t java_name_index (0x23d)
	}, ; 20
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554744, ; uint32_t type_token_id (0x2000138)
		i32 365; uint32_t java_name_index (0x16d)
	}, ; 21
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 198; uint32_t java_name_index (0xc6)
	}, ; 22
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 840; uint32_t java_name_index (0x348)
	}, ; 23
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 596; uint32_t java_name_index (0x254)
	}, ; 24
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554582, ; uint32_t type_token_id (0x2000096)
		i32 114; uint32_t java_name_index (0x72)
	}, ; 25
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554446, ; uint32_t type_token_id (0x200000e)
		i32 37; uint32_t java_name_index (0x25)
	}, ; 26
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555828, ; uint32_t type_token_id (0x2000574)
		i32 959; uint32_t java_name_index (0x3bf)
	}, ; 27
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 293; uint32_t java_name_index (0x125)
	}, ; 28
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554979, ; uint32_t type_token_id (0x2000223)
		i32 498; uint32_t java_name_index (0x1f2)
	}, ; 29
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554815, ; uint32_t type_token_id (0x200017f)
		i32 405; uint32_t java_name_index (0x195)
	}, ; 30
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 375; uint32_t java_name_index (0x177)
	}, ; 31
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 931; uint32_t java_name_index (0x3a3)
	}, ; 32
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 39; uint32_t java_name_index (0x27)
	}, ; 33
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555836, ; uint32_t type_token_id (0x200057c)
		i32 963; uint32_t java_name_index (0x3c3)
	}, ; 34
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554484, ; uint32_t type_token_id (0x2000034)
		i32 834; uint32_t java_name_index (0x342)
	}, ; 35
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554460, ; uint32_t type_token_id (0x200001c)
		i32 44; uint32_t java_name_index (0x2c)
	}, ; 36
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555342, ; uint32_t type_token_id (0x200038e)
		i32 994; uint32_t java_name_index (0x3e2)
	}, ; 37
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555352, ; uint32_t type_token_id (0x2000398)
		i32 682; uint32_t java_name_index (0x2aa)
	}, ; 38
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554528, ; uint32_t type_token_id (0x2000060)
		i32 210; uint32_t java_name_index (0xd2)
	}, ; 39
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554726, ; uint32_t type_token_id (0x2000126)
		i32 130; uint32_t java_name_index (0x82)
	}, ; 40
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555430, ; uint32_t type_token_id (0x20003e6)
		i32 737; uint32_t java_name_index (0x2e1)
	}, ; 41
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 302; uint32_t java_name_index (0x12e)
	}, ; 42
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554984, ; uint32_t type_token_id (0x2000228)
		i32 502; uint32_t java_name_index (0x1f6)
	}, ; 43
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 209; uint32_t java_name_index (0xd1)
	}, ; 44
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555835, ; uint32_t type_token_id (0x200057b)
		i32 962; uint32_t java_name_index (0x3c2)
	}, ; 45
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 125; uint32_t java_name_index (0x7d)
	}, ; 46
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 263; uint32_t java_name_index (0x107)
	}, ; 47
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555369, ; uint32_t type_token_id (0x20003a9)
		i32 1010; uint32_t java_name_index (0x3f2)
	}, ; 48
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 253; uint32_t java_name_index (0xfd)
	}, ; 49
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 2; uint32_t java_name_index (0x2)
	}, ; 50
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 856; uint32_t java_name_index (0x358)
	}, ; 51
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554673, ; uint32_t type_token_id (0x20000f1)
		i32 320; uint32_t java_name_index (0x140)
	}, ; 52
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555219, ; uint32_t type_token_id (0x2000313)
		i32 597; uint32_t java_name_index (0x255)
	}, ; 53
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554458, ; uint32_t type_token_id (0x200001a)
		i32 269; uint32_t java_name_index (0x10d)
	}, ; 54
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555065, ; uint32_t type_token_id (0x2000279)
		i32 538; uint32_t java_name_index (0x21a)
	}, ; 55
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 286; uint32_t java_name_index (0x11e)
	}, ; 56
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1000; uint32_t java_name_index (0x3e8)
	}, ; 57
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 248; uint32_t java_name_index (0xf8)
	}, ; 58
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 531; uint32_t java_name_index (0x213)
	}, ; 59
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555365, ; uint32_t type_token_id (0x20003a5)
		i32 1007; uint32_t java_name_index (0x3ef)
	}, ; 60
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 649; uint32_t java_name_index (0x289)
	}, ; 61
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 979; uint32_t java_name_index (0x3d3)
	}, ; 62
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 26; uint32_t java_name_index (0x1a)
	}, ; 63
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554762, ; uint32_t type_token_id (0x200014a)
		i32 149; uint32_t java_name_index (0x95)
	}, ; 64
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555274, ; uint32_t type_token_id (0x200034a)
		i32 944; uint32_t java_name_index (0x3b0)
	}, ; 65
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 6; uint32_t java_name_index (0x6)
	}, ; 66
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 899; uint32_t java_name_index (0x383)
	}, ; 67
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555851, ; uint32_t type_token_id (0x200058b)
		i32 1004; uint32_t java_name_index (0x3ec)
	}, ; 68
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 485; uint32_t java_name_index (0x1e5)
	}, ; 69
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554870, ; uint32_t type_token_id (0x20001b6)
		i32 443; uint32_t java_name_index (0x1bb)
	}, ; 70
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554890, ; uint32_t type_token_id (0x20001ca)
		i32 453; uint32_t java_name_index (0x1c5)
	}, ; 71
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554592, ; uint32_t type_token_id (0x20000a0)
		i32 241; uint32_t java_name_index (0xf1)
	}, ; 72
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 305; uint32_t java_name_index (0x131)
	}, ; 73
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554800, ; uint32_t type_token_id (0x2000170)
		i32 396; uint32_t java_name_index (0x18c)
	}, ; 74
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 81; uint32_t java_name_index (0x51)
	}, ; 75
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555046, ; uint32_t type_token_id (0x2000266)
		i32 529; uint32_t java_name_index (0x211)
	}, ; 76
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 115; uint32_t java_name_index (0x73)
	}, ; 77
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555816, ; uint32_t type_token_id (0x2000568)
		i32 945; uint32_t java_name_index (0x3b1)
	}, ; 78
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555448, ; uint32_t type_token_id (0x20003f8)
		i32 752; uint32_t java_name_index (0x2f0)
	}, ; 79
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 50; uint32_t java_name_index (0x32)
	}, ; 80
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555323, ; uint32_t type_token_id (0x200037b)
		i32 665; uint32_t java_name_index (0x299)
	}, ; 81
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 446; uint32_t java_name_index (0x1be)
	}, ; 82
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555436, ; uint32_t type_token_id (0x20003ec)
		i32 742; uint32_t java_name_index (0x2e6)
	}, ; 83
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 371; uint32_t java_name_index (0x173)
	}, ; 84
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 15; uint32_t java_name_index (0xf)
	}, ; 85
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 672; uint32_t java_name_index (0x2a0)
	}, ; 86
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555377, ; uint32_t type_token_id (0x20003b1)
		i32 698; uint32_t java_name_index (0x2ba)
	}, ; 87
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 897; uint32_t java_name_index (0x381)
	}, ; 88
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555417, ; uint32_t type_token_id (0x20003d9)
		i32 729; uint32_t java_name_index (0x2d9)
	}, ; 89
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 854; uint32_t java_name_index (0x356)
	}, ; 90
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 838; uint32_t java_name_index (0x346)
	}, ; 91
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555187, ; uint32_t type_token_id (0x20002f3)
		i32 566; uint32_t java_name_index (0x236)
	}, ; 92
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 643; uint32_t java_name_index (0x283)
	}, ; 93
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554925, ; uint32_t type_token_id (0x20001ed)
		i32 470; uint32_t java_name_index (0x1d6)
	}, ; 94
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 828; uint32_t java_name_index (0x33c)
	}, ; 95
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554543, ; uint32_t type_token_id (0x200006f)
		i32 87; uint32_t java_name_index (0x57)
	}, ; 96
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554525, ; uint32_t type_token_id (0x200005d)
		i32 871; uint32_t java_name_index (0x367)
	}, ; 97
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 866; uint32_t java_name_index (0x362)
	}, ; 98
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554755, ; uint32_t type_token_id (0x2000143)
		i32 144; uint32_t java_name_index (0x90)
	}, ; 99
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 216; uint32_t java_name_index (0xd8)
	}, ; 100
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 150; uint32_t java_name_index (0x96)
	}, ; 101
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 878; uint32_t java_name_index (0x36e)
	}, ; 102
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555350, ; uint32_t type_token_id (0x2000396)
		i32 680; uint32_t java_name_index (0x2a8)
	}, ; 103
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 990; uint32_t java_name_index (0x3de)
	}, ; 104
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555859, ; uint32_t type_token_id (0x2000593)
		i32 1014; uint32_t java_name_index (0x3f6)
	}, ; 105
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555047, ; uint32_t type_token_id (0x2000267)
		i32 530; uint32_t java_name_index (0x212)
	}, ; 106
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 998; uint32_t java_name_index (0x3e6)
	}, ; 107
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 491; uint32_t java_name_index (0x1eb)
	}, ; 108
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 896; uint32_t java_name_index (0x380)
	}, ; 109
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554853, ; uint32_t type_token_id (0x20001a5)
		i32 434; uint32_t java_name_index (0x1b2)
	}, ; 110
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 183; uint32_t java_name_index (0xb7)
	}, ; 111
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554919, ; uint32_t type_token_id (0x20001e7)
		i32 466; uint32_t java_name_index (0x1d2)
	}, ; 112
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555175, ; uint32_t type_token_id (0x20002e7)
		i32 565; uint32_t java_name_index (0x235)
	}, ; 113
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 607; uint32_t java_name_index (0x25f)
	}, ; 114
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554859, ; uint32_t type_token_id (0x20001ab)
		i32 437; uint32_t java_name_index (0x1b5)
	}, ; 115
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 639; uint32_t java_name_index (0x27f)
	}, ; 116
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 335; uint32_t java_name_index (0x14f)
	}, ; 117
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 1008; uint32_t java_name_index (0x3f0)
	}, ; 118
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555373, ; uint32_t type_token_id (0x20003ad)
		i32 696; uint32_t java_name_index (0x2b8)
	}, ; 119
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554782, ; uint32_t type_token_id (0x200015e)
		i32 164; uint32_t java_name_index (0xa4)
	}, ; 120
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554676, ; uint32_t type_token_id (0x20000f4)
		i32 323; uint32_t java_name_index (0x143)
	}, ; 121
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555431, ; uint32_t type_token_id (0x20003e7)
		i32 738; uint32_t java_name_index (0x2e2)
	}, ; 122
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 194; uint32_t java_name_index (0xc2)
	}, ; 123
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 903; uint32_t java_name_index (0x387)
	}, ; 124
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 34; uint32_t java_name_index (0x22)
	}, ; 125
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555058, ; uint32_t type_token_id (0x2000272)
		i32 534; uint32_t java_name_index (0x216)
	}, ; 126
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555341, ; uint32_t type_token_id (0x200038d)
		i32 993; uint32_t java_name_index (0x3e1)
	}, ; 127
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554837, ; uint32_t type_token_id (0x2000195)
		i32 423; uint32_t java_name_index (0x1a7)
	}, ; 128
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 918; uint32_t java_name_index (0x396)
	}, ; 129
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555113, ; uint32_t type_token_id (0x20002a9)
		i32 551; uint32_t java_name_index (0x227)
	}, ; 130
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 819; uint32_t java_name_index (0x333)
	}, ; 131
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 891; uint32_t java_name_index (0x37b)
	}, ; 132
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 61; uint32_t java_name_index (0x3d)
	}, ; 133
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555390, ; uint32_t type_token_id (0x20003be)
		i32 709; uint32_t java_name_index (0x2c5)
	}, ; 134
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554761, ; uint32_t type_token_id (0x2000149)
		i32 148; uint32_t java_name_index (0x94)
	}, ; 135
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 926; uint32_t java_name_index (0x39e)
	}, ; 136
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554993, ; uint32_t type_token_id (0x2000231)
		i32 509; uint32_t java_name_index (0x1fd)
	}, ; 137
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554514, ; uint32_t type_token_id (0x2000052)
		i32 66; uint32_t java_name_index (0x42)
	}, ; 138
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 411; uint32_t java_name_index (0x19b)
	}, ; 139
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554920, ; uint32_t type_token_id (0x20001e8)
		i32 467; uint32_t java_name_index (0x1d3)
	}, ; 140
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 235; uint32_t java_name_index (0xeb)
	}, ; 141
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554568, ; uint32_t type_token_id (0x2000088)
		i32 895; uint32_t java_name_index (0x37f)
	}, ; 142
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 481; uint32_t java_name_index (0x1e1)
	}, ; 143
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554469, ; uint32_t type_token_id (0x2000025)
		i32 826; uint32_t java_name_index (0x33a)
	}, ; 144
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 24; uint32_t java_name_index (0x18)
	}, ; 145
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 174; uint32_t java_name_index (0xae)
	}, ; 146
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 835; uint32_t java_name_index (0x343)
	}, ; 147
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 772; uint32_t java_name_index (0x304)
	}, ; 148
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555351, ; uint32_t type_token_id (0x2000397)
		i32 681; uint32_t java_name_index (0x2a9)
	}, ; 149
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 70; uint32_t java_name_index (0x46)
	}, ; 150
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 788; uint32_t java_name_index (0x314)
	}, ; 151
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555159, ; uint32_t type_token_id (0x20002d7)
		i32 561; uint32_t java_name_index (0x231)
	}, ; 152
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555236, ; uint32_t type_token_id (0x2000324)
		i32 179; uint32_t java_name_index (0xb3)
	}, ; 153
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 776; uint32_t java_name_index (0x308)
	}, ; 154
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555242, ; uint32_t type_token_id (0x200032a)
		i32 613; uint32_t java_name_index (0x265)
	}, ; 155
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 967; uint32_t java_name_index (0x3c7)
	}, ; 156
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555955, ; uint32_t type_token_id (0x20005f3)
		i32 935; uint32_t java_name_index (0x3a7)
	}, ; 157
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555334, ; uint32_t type_token_id (0x2000386)
		i32 986; uint32_t java_name_index (0x3da)
	}, ; 158
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 88; uint32_t java_name_index (0x58)
	}, ; 159
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554584, ; uint32_t type_token_id (0x2000098)
		i32 820; uint32_t java_name_index (0x334)
	}, ; 160
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 342; uint32_t java_name_index (0x156)
	}, ; 161
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555208, ; uint32_t type_token_id (0x2000308)
		i32 586; uint32_t java_name_index (0x24a)
	}, ; 162
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554816, ; uint32_t type_token_id (0x2000180)
		i32 406; uint32_t java_name_index (0x196)
	}, ; 163
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 200; uint32_t java_name_index (0xc8)
	}, ; 164
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554593, ; uint32_t type_token_id (0x20000a1)
		i32 280; uint32_t java_name_index (0x118)
	}, ; 165
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 124; uint32_t java_name_index (0x7c)
	}, ; 166
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 205; uint32_t java_name_index (0xcd)
	}, ; 167
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 736; uint32_t java_name_index (0x2e0)
	}, ; 168
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555405, ; uint32_t type_token_id (0x20003cd)
		i32 719; uint32_t java_name_index (0x2cf)
	}, ; 169
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555248, ; uint32_t type_token_id (0x2000330)
		i32 618; uint32_t java_name_index (0x26a)
	}, ; 170
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 92; uint32_t java_name_index (0x5c)
	}, ; 171
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 970; uint32_t java_name_index (0x3ca)
	}, ; 172
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555433, ; uint32_t type_token_id (0x20003e9)
		i32 740; uint32_t java_name_index (0x2e4)
	}, ; 173
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554560, ; uint32_t type_token_id (0x2000080)
		i32 803; uint32_t java_name_index (0x323)
	}, ; 174
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 426; uint32_t java_name_index (0x1aa)
	}, ; 175
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555447, ; uint32_t type_token_id (0x20003f7)
		i32 751; uint32_t java_name_index (0x2ef)
	}, ; 176
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555353, ; uint32_t type_token_id (0x2000399)
		i32 683; uint32_t java_name_index (0x2ab)
	}, ; 177
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 450; uint32_t java_name_index (0x1c2)
	}, ; 178
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 761; uint32_t java_name_index (0x2f9)
	}, ; 179
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 51; uint32_t java_name_index (0x33)
	}, ; 180
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 159; uint32_t java_name_index (0x9f)
	}, ; 181
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 777; uint32_t java_name_index (0x309)
	}, ; 182
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555437, ; uint32_t type_token_id (0x20003ed)
		i32 743; uint32_t java_name_index (0x2e7)
	}, ; 183
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 33554442, ; uint32_t type_token_id (0x200000a)
		i32 16; uint32_t java_name_index (0x10)
	}, ; 184
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554704, ; uint32_t type_token_id (0x2000110)
		i32 344; uint32_t java_name_index (0x158)
	}, ; 185
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554744, ; uint32_t type_token_id (0x2000138)
		i32 133; uint32_t java_name_index (0x85)
	}, ; 186
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 652; uint32_t java_name_index (0x28c)
	}, ; 187
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 220; uint32_t java_name_index (0xdc)
	}, ; 188
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555190, ; uint32_t type_token_id (0x20002f6)
		i32 569; uint32_t java_name_index (0x239)
	}, ; 189
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554924, ; uint32_t type_token_id (0x20001ec)
		i32 469; uint32_t java_name_index (0x1d5)
	}, ; 190
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 294; uint32_t java_name_index (0x126)
	}, ; 191
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555268, ; uint32_t type_token_id (0x2000344)
		i32 632; uint32_t java_name_index (0x278)
	}, ; 192
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555443, ; uint32_t type_token_id (0x20003f3)
		i32 748; uint32_t java_name_index (0x2ec)
	}, ; 193
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 974; uint32_t java_name_index (0x3ce)
	}, ; 194
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 784; uint32_t java_name_index (0x310)
	}, ; 195
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 442; uint32_t java_name_index (0x1ba)
	}, ; 196
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 846; uint32_t java_name_index (0x34e)
	}, ; 197
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 920; uint32_t java_name_index (0x398)
	}, ; 198
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554547, ; uint32_t type_token_id (0x2000073)
		i32 883; uint32_t java_name_index (0x373)
	}, ; 199
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555192, ; uint32_t type_token_id (0x20002f8)
		i32 570; uint32_t java_name_index (0x23a)
	}, ; 200
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 9; uint32_t java_name_index (0x9)
	}, ; 201
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554557, ; uint32_t type_token_id (0x200007d)
		i32 800; uint32_t java_name_index (0x320)
	}, ; 202
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 222; uint32_t java_name_index (0xde)
	}, ; 203
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554769, ; uint32_t type_token_id (0x2000151)
		i32 155; uint32_t java_name_index (0x9b)
	}, ; 204
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 879; uint32_t java_name_index (0x36f)
	}, ; 205
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 13; uint32_t java_name_index (0xd)
	}, ; 206
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554790, ; uint32_t type_token_id (0x2000166)
		i32 391; uint32_t java_name_index (0x187)
	}, ; 207
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554789, ; uint32_t type_token_id (0x2000165)
		i32 390; uint32_t java_name_index (0x186)
	}, ; 208
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 242; uint32_t java_name_index (0xf2)
	}, ; 209
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 65; uint32_t java_name_index (0x41)
	}, ; 210
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 927; uint32_t java_name_index (0x39f)
	}, ; 211
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554681, ; uint32_t type_token_id (0x20000f9)
		i32 327; uint32_t java_name_index (0x147)
	}, ; 212
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 1; uint32_t java_name_index (0x1)
	}, ; 213
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 593; uint32_t java_name_index (0x251)
	}, ; 214
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 55; uint32_t java_name_index (0x37)
	}, ; 215
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 764; uint32_t java_name_index (0x2fc)
	}, ; 216
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554819, ; uint32_t type_token_id (0x2000183)
		i32 409; uint32_t java_name_index (0x199)
	}, ; 217
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555395, ; uint32_t type_token_id (0x20003c3)
		i32 712; uint32_t java_name_index (0x2c8)
	}, ; 218
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index (0x0)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 0; uint32_t java_name_index (0x0)
	}, ; 219
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 195; uint32_t java_name_index (0xc3)
	}, ; 220
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554512, ; uint32_t type_token_id (0x2000050)
		i32 861; uint32_t java_name_index (0x35d)
	}, ; 221
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554675, ; uint32_t type_token_id (0x20000f3)
		i32 322; uint32_t java_name_index (0x142)
	}, ; 222
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554462, ; uint32_t type_token_id (0x200001e)
		i32 32; uint32_t java_name_index (0x20)
	}, ; 223
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555068, ; uint32_t type_token_id (0x200027c)
		i32 541; uint32_t java_name_index (0x21d)
	}, ; 224
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555385, ; uint32_t type_token_id (0x20003b9)
		i32 705; uint32_t java_name_index (0x2c1)
	}, ; 225
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554865, ; uint32_t type_token_id (0x20001b1)
		i32 441; uint32_t java_name_index (0x1b9)
	}, ; 226
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555311, ; uint32_t type_token_id (0x200036f)
		i32 656; uint32_t java_name_index (0x290)
	}, ; 227
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554774, ; uint32_t type_token_id (0x2000156)
		i32 158; uint32_t java_name_index (0x9e)
	}, ; 228
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554763, ; uint32_t type_token_id (0x200014b)
		i32 376; uint32_t java_name_index (0x178)
	}, ; 229
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 827; uint32_t java_name_index (0x33b)
	}, ; 230
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 480; uint32_t java_name_index (0x1e0)
	}, ; 231
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555256, ; uint32_t type_token_id (0x2000338)
		i32 623; uint32_t java_name_index (0x26f)
	}, ; 232
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554643, ; uint32_t type_token_id (0x20000d3)
		i32 306; uint32_t java_name_index (0x132)
	}, ; 233
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 4; uint32_t java_name_index (0x4)
	}, ; 234
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555255, ; uint32_t type_token_id (0x2000337)
		i32 937; uint32_t java_name_index (0x3a9)
	}, ; 235
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554863, ; uint32_t type_token_id (0x20001af)
		i32 440; uint32_t java_name_index (0x1b8)
	}, ; 236
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 855; uint32_t java_name_index (0x357)
	}, ; 237
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554882, ; uint32_t type_token_id (0x20001c2)
		i32 449; uint32_t java_name_index (0x1c1)
	}, ; 238
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554563, ; uint32_t type_token_id (0x2000083)
		i32 227; uint32_t java_name_index (0xe3)
	}, ; 239
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 675; uint32_t java_name_index (0x2a3)
	}, ; 240
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 877; uint32_t java_name_index (0x36d)
	}, ; 241
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 455; uint32_t java_name_index (0x1c7)
	}, ; 242
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 789; uint32_t java_name_index (0x315)
	}, ; 243
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 852; uint32_t java_name_index (0x354)
	}, ; 244
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554594, ; uint32_t type_token_id (0x20000a2)
		i32 281; uint32_t java_name_index (0x119)
	}, ; 245
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554625, ; uint32_t type_token_id (0x20000c1)
		i32 296; uint32_t java_name_index (0x128)
	}, ; 246
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555856, ; uint32_t type_token_id (0x2000590)
		i32 1011; uint32_t java_name_index (0x3f3)
	}, ; 247
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 351; uint32_t java_name_index (0x15f)
	}, ; 248
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 225; uint32_t java_name_index (0xe1)
	}, ; 249
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555008, ; uint32_t type_token_id (0x2000240)
		i32 517; uint32_t java_name_index (0x205)
	}, ; 250
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554830, ; uint32_t type_token_id (0x200018e)
		i32 416; uint32_t java_name_index (0x1a0)
	}, ; 251
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554779, ; uint32_t type_token_id (0x200015b)
		i32 384; uint32_t java_name_index (0x180)
	}, ; 252
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 59; uint32_t java_name_index (0x3b)
	}, ; 253
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 41; uint32_t java_name_index (0x29)
	}, ; 254
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 311; uint32_t java_name_index (0x137)
	}, ; 255
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 29; uint32_t java_name_index (0x1d)
	}, ; 256
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554889, ; uint32_t type_token_id (0x20001c9)
		i32 452; uint32_t java_name_index (0x1c4)
	}, ; 257
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 843; uint32_t java_name_index (0x34b)
	}, ; 258
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 791; uint32_t java_name_index (0x317)
	}, ; 259
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554788, ; uint32_t type_token_id (0x2000164)
		i32 389; uint32_t java_name_index (0x185)
	}, ; 260
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 671; uint32_t java_name_index (0x29f)
	}, ; 261
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555277, ; uint32_t type_token_id (0x200034d)
		i32 948; uint32_t java_name_index (0x3b4)
	}, ; 262
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 341; uint32_t java_name_index (0x155)
	}, ; 263
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555237, ; uint32_t type_token_id (0x2000325)
		i32 932; uint32_t java_name_index (0x3a4)
	}, ; 264
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 279; uint32_t java_name_index (0x117)
	}, ; 265
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 237; uint32_t java_name_index (0xed)
	}, ; 266
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555376, ; uint32_t type_token_id (0x20003b0)
		i32 1021; uint32_t java_name_index (0x3fd)
	}, ; 267
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555858, ; uint32_t type_token_id (0x2000592)
		i32 1013; uint32_t java_name_index (0x3f5)
	}, ; 268
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 75; uint32_t java_name_index (0x4b)
	}, ; 269
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555116, ; uint32_t type_token_id (0x20002ac)
		i32 554; uint32_t java_name_index (0x22a)
	}, ; 270
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 489; uint32_t java_name_index (0x1e9)
	}, ; 271
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 817; uint32_t java_name_index (0x331)
	}, ; 272
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555823, ; uint32_t type_token_id (0x200056f)
		i32 954; uint32_t java_name_index (0x3ba)
	}, ; 273
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 735; uint32_t java_name_index (0x2df)
	}, ; 274
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 229; uint32_t java_name_index (0xe5)
	}, ; 275
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554814, ; uint32_t type_token_id (0x200017e)
		i32 404; uint32_t java_name_index (0x194)
	}, ; 276
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554878, ; uint32_t type_token_id (0x20001be)
		i32 447; uint32_t java_name_index (0x1bf)
	}, ; 277
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554905, ; uint32_t type_token_id (0x20001d9)
		i32 461; uint32_t java_name_index (0x1cd)
	}, ; 278
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555227, ; uint32_t type_token_id (0x200031b)
		i32 605; uint32_t java_name_index (0x25d)
	}, ; 279
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555273, ; uint32_t type_token_id (0x2000349)
		i32 943; uint32_t java_name_index (0x3af)
	}, ; 280
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555827, ; uint32_t type_token_id (0x2000573)
		i32 957; uint32_t java_name_index (0x3bd)
	}, ; 281
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 277; uint32_t java_name_index (0x115)
	}, ; 282
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554604, ; uint32_t type_token_id (0x20000ac)
		i32 285; uint32_t java_name_index (0x11d)
	}, ; 283
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 218; uint32_t java_name_index (0xda)
	}, ; 284
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 773; uint32_t java_name_index (0x305)
	}, ; 285
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 99; uint32_t java_name_index (0x63)
	}, ; 286
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 110; uint32_t java_name_index (0x6e)
	}, ; 287
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 537; uint32_t java_name_index (0x219)
	}, ; 288
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555388, ; uint32_t type_token_id (0x20003bc)
		i32 707; uint32_t java_name_index (0x2c3)
	}, ; 289
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 845; uint32_t java_name_index (0x34d)
	}, ; 290
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 347; uint32_t java_name_index (0x15b)
	}, ; 291
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554677, ; uint32_t type_token_id (0x20000f5)
		i32 324; uint32_t java_name_index (0x144)
	}, ; 292
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 19; uint32_t java_name_index (0x13)
	}, ; 293
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554746, ; uint32_t type_token_id (0x200013a)
		i32 134; uint32_t java_name_index (0x86)
	}, ; 294
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554616, ; uint32_t type_token_id (0x20000b8)
		i32 254; uint32_t java_name_index (0xfe)
	}, ; 295
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555449, ; uint32_t type_token_id (0x20003f9)
		i32 753; uint32_t java_name_index (0x2f1)
	}, ; 296
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 892; uint32_t java_name_index (0x37c)
	}, ; 297
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 787; uint32_t java_name_index (0x313)
	}, ; 298
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 117; uint32_t java_name_index (0x75)
	}, ; 299
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554834, ; uint32_t type_token_id (0x2000192)
		i32 420; uint32_t java_name_index (0x1a4)
	}, ; 300
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 171; uint32_t java_name_index (0xab)
	}, ; 301
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 69; uint32_t java_name_index (0x45)
	}, ; 302
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 329; uint32_t java_name_index (0x149)
	}, ; 303
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554626, ; uint32_t type_token_id (0x20000c2)
		i32 297; uint32_t java_name_index (0x129)
	}, ; 304
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 888; uint32_t java_name_index (0x378)
	}, ; 305
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555276, ; uint32_t type_token_id (0x200034c)
		i32 947; uint32_t java_name_index (0x3b3)
	}, ; 306
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555148, ; uint32_t type_token_id (0x20002cc)
		i32 559; uint32_t java_name_index (0x22f)
	}, ; 307
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554597, ; uint32_t type_token_id (0x20000a5)
		i32 245; uint32_t java_name_index (0xf5)
	}, ; 308
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 760; uint32_t java_name_index (0x2f8)
	}, ; 309
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 582; uint32_t java_name_index (0x246)
	}, ; 310
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 107; uint32_t java_name_index (0x6b)
	}, ; 311
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 103; uint32_t java_name_index (0x67)
	}, ; 312
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555857, ; uint32_t type_token_id (0x2000591)
		i32 1012; uint32_t java_name_index (0x3f4)
	}, ; 313
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 72; uint32_t java_name_index (0x48)
	}, ; 314
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555416, ; uint32_t type_token_id (0x20003d8)
		i32 728; uint32_t java_name_index (0x2d8)
	}, ; 315
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555217, ; uint32_t type_token_id (0x2000311)
		i32 595; uint32_t java_name_index (0x253)
	}, ; 316
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 890; uint32_t java_name_index (0x37a)
	}, ; 317
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 291; uint32_t java_name_index (0x123)
	}, ; 318
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554490, ; uint32_t type_token_id (0x200003a)
		i32 759; uint32_t java_name_index (0x2f7)
	}, ; 319
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554852, ; uint32_t type_token_id (0x20001a4)
		i32 433; uint32_t java_name_index (0x1b1)
	}, ; 320
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index (0x17)
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 822; uint32_t java_name_index (0x336)
	}, ; 321
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555267, ; uint32_t type_token_id (0x2000343)
		i32 631; uint32_t java_name_index (0x277)
	}, ; 322
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 782; uint32_t java_name_index (0x30e)
	}, ; 323
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 875; uint32_t java_name_index (0x36b)
	}, ; 324
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555254, ; uint32_t type_token_id (0x2000336)
		i32 936; uint32_t java_name_index (0x3a8)
	}, ; 325
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555318, ; uint32_t type_token_id (0x2000376)
		i32 661; uint32_t java_name_index (0x295)
	}, ; 326
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 881; uint32_t java_name_index (0x371)
	}, ; 327
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555442, ; uint32_t type_token_id (0x20003f2)
		i32 747; uint32_t java_name_index (0x2eb)
	}, ; 328
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555378, ; uint32_t type_token_id (0x20003b2)
		i32 699; uint32_t java_name_index (0x2bb)
	}, ; 329
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555221, ; uint32_t type_token_id (0x2000315)
		i32 599; uint32_t java_name_index (0x257)
	}, ; 330
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 490; uint32_t java_name_index (0x1ea)
	}, ; 331
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 980; uint32_t java_name_index (0x3d4)
	}, ; 332
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 104; uint32_t java_name_index (0x68)
	}, ; 333
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 511; uint32_t java_name_index (0x1ff)
	}, ; 334
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 677; uint32_t java_name_index (0x2a5)
	}, ; 335
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 275; uint32_t java_name_index (0x113)
	}, ; 336
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 338; uint32_t java_name_index (0x152)
	}, ; 337
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555101, ; uint32_t type_token_id (0x200029d)
		i32 543; uint32_t java_name_index (0x21f)
	}, ; 338
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555240, ; uint32_t type_token_id (0x2000328)
		i32 933; uint32_t java_name_index (0x3a5)
	}, ; 339
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 233; uint32_t java_name_index (0xe9)
	}, ; 340
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 636; uint32_t java_name_index (0x27c)
	}, ; 341
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554785, ; uint32_t type_token_id (0x2000161)
		i32 387; uint32_t java_name_index (0x183)
	}, ; 342
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554700, ; uint32_t type_token_id (0x200010c)
		i32 340; uint32_t java_name_index (0x154)
	}, ; 343
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555287, ; uint32_t type_token_id (0x2000357)
		i32 960; uint32_t java_name_index (0x3c0)
	}, ; 344
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554518, ; uint32_t type_token_id (0x2000056)
		i32 779; uint32_t java_name_index (0x30b)
	}, ; 345
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555107, ; uint32_t type_token_id (0x20002a3)
		i32 547; uint32_t java_name_index (0x223)
	}, ; 346
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555150, ; uint32_t type_token_id (0x20002ce)
		i32 560; uint32_t java_name_index (0x230)
	}, ; 347
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554608, ; uint32_t type_token_id (0x20000b0)
		i32 287; uint32_t java_name_index (0x11f)
	}, ; 348
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 614; uint32_t java_name_index (0x266)
	}, ; 349
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 518; uint32_t java_name_index (0x206)
	}, ; 350
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 697; uint32_t java_name_index (0x2b9)
	}, ; 351
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 678; uint32_t java_name_index (0x2a6)
	}, ; 352
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 102; uint32_t java_name_index (0x66)
	}, ; 353
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555848, ; uint32_t type_token_id (0x2000588)
		i32 991; uint32_t java_name_index (0x3df)
	}, ; 354
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554493, ; uint32_t type_token_id (0x200003d)
		i32 54; uint32_t java_name_index (0x36)
	}, ; 355
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554564, ; uint32_t type_token_id (0x2000084)
		i32 806; uint32_t java_name_index (0x326)
	}, ; 356
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554662, ; uint32_t type_token_id (0x20000e6)
		i32 315; uint32_t java_name_index (0x13b)
	}, ; 357
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 821; uint32_t java_name_index (0x335)
	}, ; 358
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554779, ; uint32_t type_token_id (0x200015b)
		i32 163; uint32_t java_name_index (0xa3)
	}, ; 359
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 907; uint32_t java_name_index (0x38b)
	}, ; 360
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555394, ; uint32_t type_token_id (0x20003c2)
		i32 711; uint32_t java_name_index (0x2c7)
	}, ; 361
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554930, ; uint32_t type_token_id (0x20001f2)
		i32 471; uint32_t java_name_index (0x1d7)
	}, ; 362
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555201, ; uint32_t type_token_id (0x2000301)
		i32 579; uint32_t java_name_index (0x243)
	}, ; 363
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 187; uint32_t java_name_index (0xbb)
	}, ; 364
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554983, ; uint32_t type_token_id (0x2000227)
		i32 176; uint32_t java_name_index (0xb0)
	}, ; 365
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554656, ; uint32_t type_token_id (0x20000e0)
		i32 313; uint32_t java_name_index (0x139)
	}, ; 366
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554900, ; uint32_t type_token_id (0x20001d4)
		i32 457; uint32_t java_name_index (0x1c9)
	}, ; 367
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554527, ; uint32_t type_token_id (0x200005f)
		i32 74; uint32_t java_name_index (0x4a)
	}, ; 368
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554939, ; uint32_t type_token_id (0x20001fb)
		i32 477; uint32_t java_name_index (0x1dd)
	}, ; 369
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554839, ; uint32_t type_token_id (0x2000197)
		i32 425; uint32_t java_name_index (0x1a9)
	}, ; 370
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554465, ; uint32_t type_token_id (0x2000021)
		i32 273; uint32_t java_name_index (0x111)
	}, ; 371
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554537, ; uint32_t type_token_id (0x2000069)
		i32 82; uint32_t java_name_index (0x52)
	}, ; 372
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554575, ; uint32_t type_token_id (0x200008f)
		i32 813; uint32_t java_name_index (0x32d)
	}, ; 373
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554596, ; uint32_t type_token_id (0x20000a4)
		i32 244; uint32_t java_name_index (0xf4)
	}, ; 374
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554725, ; uint32_t type_token_id (0x2000125)
		i32 354; uint32_t java_name_index (0x162)
	}, ; 375
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 120; uint32_t java_name_index (0x78)
	}, ; 376
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 259; uint32_t java_name_index (0x103)
	}, ; 377
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 687; uint32_t java_name_index (0x2af)
	}, ; 378
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555203, ; uint32_t type_token_id (0x2000303)
		i32 581; uint32_t java_name_index (0x245)
	}, ; 379
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555815, ; uint32_t type_token_id (0x2000567)
		i32 942; uint32_t java_name_index (0x3ae)
	}, ; 380
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554991, ; uint32_t type_token_id (0x200022f)
		i32 507; uint32_t java_name_index (0x1fb)
	}, ; 381
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555441, ; uint32_t type_token_id (0x20003f1)
		i32 746; uint32_t java_name_index (0x2ea)
	}, ; 382
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555432, ; uint32_t type_token_id (0x20003e8)
		i32 739; uint32_t java_name_index (0x2e3)
	}, ; 383
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 525; uint32_t java_name_index (0x20d)
	}, ; 384
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555344, ; uint32_t type_token_id (0x2000390)
		i32 996; uint32_t java_name_index (0x3e4)
	}, ; 385
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555413, ; uint32_t type_token_id (0x20003d5)
		i32 725; uint32_t java_name_index (0x2d5)
	}, ; 386
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 145; uint32_t java_name_index (0x91)
	}, ; 387
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554999, ; uint32_t type_token_id (0x2000237)
		i32 512; uint32_t java_name_index (0x200)
	}, ; 388
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554663, ; uint32_t type_token_id (0x20000e7)
		i32 316; uint32_t java_name_index (0x13c)
	}, ; 389
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554708, ; uint32_t type_token_id (0x2000114)
		i32 127; uint32_t java_name_index (0x7f)
	}, ; 390
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554674, ; uint32_t type_token_id (0x20000f2)
		i32 321; uint32_t java_name_index (0x141)
	}, ; 391
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 266; uint32_t java_name_index (0x10a)
	}, ; 392
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554664, ; uint32_t type_token_id (0x20000e8)
		i32 317; uint32_t java_name_index (0x13d)
	}, ; 393
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554937, ; uint32_t type_token_id (0x20001f9)
		i32 475; uint32_t java_name_index (0x1db)
	}, ; 394
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 258; uint32_t java_name_index (0x102)
	}, ; 395
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555414, ; uint32_t type_token_id (0x20003d6)
		i32 726; uint32_t java_name_index (0x2d6)
	}, ; 396
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 545; uint32_t java_name_index (0x221)
	}, ; 397
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 21; uint32_t java_name_index (0x15)
	}, ; 398
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554982, ; uint32_t type_token_id (0x2000226)
		i32 500; uint32_t java_name_index (0x1f4)
	}, ; 399
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555265, ; uint32_t type_token_id (0x2000341)
		i32 629; uint32_t java_name_index (0x275)
	}, ; 400
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 185; uint32_t java_name_index (0xb9)
	}, ; 401
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554679, ; uint32_t type_token_id (0x20000f7)
		i32 325; uint32_t java_name_index (0x145)
	}, ; 402
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 428; uint32_t java_name_index (0x1ac)
	}, ; 403
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 460; uint32_t java_name_index (0x1cc)
	}, ; 404
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 249; uint32_t java_name_index (0xf9)
	}, ; 405
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 674; uint32_t java_name_index (0x2a2)
	}, ; 406
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 783; uint32_t java_name_index (0x30f)
	}, ; 407
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554778, ; uint32_t type_token_id (0x200015a)
		i32 383; uint32_t java_name_index (0x17f)
	}, ; 408
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555257, ; uint32_t type_token_id (0x2000339)
		i32 624; uint32_t java_name_index (0x270)
	}, ; 409
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554768, ; uint32_t type_token_id (0x2000150)
		i32 154; uint32_t java_name_index (0x9a)
	}, ; 410
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554833, ; uint32_t type_token_id (0x2000191)
		i32 419; uint32_t java_name_index (0x1a3)
	}, ; 411
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555264, ; uint32_t type_token_id (0x2000340)
		i32 628; uint32_t java_name_index (0x274)
	}, ; 412
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 978; uint32_t java_name_index (0x3d2)
	}, ; 413
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 592; uint32_t java_name_index (0x250)
	}, ; 414
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555707, ; uint32_t type_token_id (0x20004fb)
		i32 917; uint32_t java_name_index (0x395)
	}, ; 415
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 653; uint32_t java_name_index (0x28d)
	}, ; 416
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 793; uint32_t java_name_index (0x319)
	}, ; 417
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 851; uint32_t java_name_index (0x353)
	}, ; 418
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 380; uint32_t java_name_index (0x17c)
	}, ; 419
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554524, ; uint32_t type_token_id (0x200005c)
		i32 208; uint32_t java_name_index (0xd0)
	}, ; 420
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 513; uint32_t java_name_index (0x201)
	}, ; 421
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 282; uint32_t java_name_index (0x11a)
	}, ; 422
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 89; uint32_t java_name_index (0x59)
	}, ; 423
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554586, ; uint32_t type_token_id (0x200009a)
		i32 106; uint32_t java_name_index (0x6a)
	}, ; 424
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 1015; uint32_t java_name_index (0x3f7)
	}, ; 425
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555250, ; uint32_t type_token_id (0x2000332)
		i32 620; uint32_t java_name_index (0x26c)
	}, ; 426
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554449, ; uint32_t type_token_id (0x2000011)
		i32 260; uint32_t java_name_index (0x104)
	}, ; 427
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555215, ; uint32_t type_token_id (0x200030f)
		i32 173; uint32_t java_name_index (0xad)
	}, ; 428
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 33555110, ; uint32_t type_token_id (0x20002a6)
		i32 910; uint32_t java_name_index (0x38e)
	}, ; 429
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554754, ; uint32_t type_token_id (0x2000142)
		i32 142; uint32_t java_name_index (0x8e)
	}, ; 430
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554599, ; uint32_t type_token_id (0x20000a7)
		i32 246; uint32_t java_name_index (0xf6)
	}, ; 431
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 741; uint32_t java_name_index (0x2e5)
	}, ; 432
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 214; uint32_t java_name_index (0xd6)
	}, ; 433
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 56; uint32_t java_name_index (0x38)
	}, ; 434
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554797, ; uint32_t type_token_id (0x200016d)
		i32 393; uint32_t java_name_index (0x189)
	}, ; 435
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554697, ; uint32_t type_token_id (0x2000109)
		i32 337; uint32_t java_name_index (0x151)
	}, ; 436
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554529, ; uint32_t type_token_id (0x2000061)
		i32 873; uint32_t java_name_index (0x369)
	}, ; 437
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555044, ; uint32_t type_token_id (0x2000264)
		i32 527; uint32_t java_name_index (0x20f)
	}, ; 438
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554990, ; uint32_t type_token_id (0x200022e)
		i32 506; uint32_t java_name_index (0x1fa)
	}, ; 439
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555235, ; uint32_t type_token_id (0x2000323)
		i32 609; uint32_t java_name_index (0x261)
	}, ; 440
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 1002; uint32_t java_name_index (0x3ea)
	}, ; 441
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554854, ; uint32_t type_token_id (0x20001a6)
		i32 435; uint32_t java_name_index (0x1b3)
	}, ; 442
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 642; uint32_t java_name_index (0x282)
	}, ; 443
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 18; uint32_t java_name_index (0x12)
	}, ; 444
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 71; uint32_t java_name_index (0x47)
	}, ; 445
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555246, ; uint32_t type_token_id (0x200032e)
		i32 616; uint32_t java_name_index (0x268)
	}, ; 446
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 823; uint32_t java_name_index (0x337)
	}, ; 447
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 343; uint32_t java_name_index (0x157)
	}, ; 448
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554804, ; uint32_t type_token_id (0x2000174)
		i32 398; uint32_t java_name_index (0x18e)
	}, ; 449
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 182; uint32_t java_name_index (0xb6)
	}, ; 450
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 206; uint32_t java_name_index (0xce)
	}, ; 451
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554751, ; uint32_t type_token_id (0x200013f)
		i32 138; uint32_t java_name_index (0x8a)
	}, ; 452
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555319, ; uint32_t type_token_id (0x2000377)
		i32 662; uint32_t java_name_index (0x296)
	}, ; 453
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 47; uint32_t java_name_index (0x2f)
	}, ; 454
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 312; uint32_t java_name_index (0x138)
	}, ; 455
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555403, ; uint32_t type_token_id (0x20003cb)
		i32 718; uint32_t java_name_index (0x2ce)
	}, ; 456
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 640; uint32_t java_name_index (0x280)
	}, ; 457
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555262, ; uint32_t type_token_id (0x200033e)
		i32 627; uint32_t java_name_index (0x273)
	}, ; 458
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554475, ; uint32_t type_token_id (0x200002b)
		i32 830; uint32_t java_name_index (0x33e)
	}, ; 459
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 261; uint32_t java_name_index (0x105)
	}, ; 460
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554606, ; uint32_t type_token_id (0x20000ae)
		i32 250; uint32_t java_name_index (0xfa)
	}, ; 461
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554794, ; uint32_t type_token_id (0x200016a)
		i32 165; uint32_t java_name_index (0xa5)
	}, ; 462
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555786, ; uint32_t type_token_id (0x200054a)
		i32 921; uint32_t java_name_index (0x399)
	}, ; 463
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554492, ; uint32_t type_token_id (0x200003c)
		i32 53; uint32_t java_name_index (0x35)
	}, ; 464
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555281, ; uint32_t type_token_id (0x2000351)
		i32 952; uint32_t java_name_index (0x3b8)
	}, ; 465
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 908; uint32_t java_name_index (0x38c)
	}, ; 466
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 192; uint32_t java_name_index (0xc0)
	}, ; 467
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 213; uint32_t java_name_index (0xd5)
	}, ; 468
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554899, ; uint32_t type_token_id (0x20001d3)
		i32 456; uint32_t java_name_index (0x1c8)
	}, ; 469
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555412, ; uint32_t type_token_id (0x20003d4)
		i32 724; uint32_t java_name_index (0x2d4)
	}, ; 470
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555109, ; uint32_t type_token_id (0x20002a5)
		i32 143; uint32_t java_name_index (0x8f)
	}, ; 471
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 309; uint32_t java_name_index (0x135)
	}, ; 472
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 689; uint32_t java_name_index (0x2b1)
	}, ; 473
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555241, ; uint32_t type_token_id (0x2000329)
		i32 612; uint32_t java_name_index (0x264)
	}, ; 474
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555293, ; uint32_t type_token_id (0x200035d)
		i32 646; uint32_t java_name_index (0x286)
	}, ; 475
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554510, ; uint32_t type_token_id (0x200004e)
		i32 202; uint32_t java_name_index (0xca)
	}, ; 476
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 799; uint32_t java_name_index (0x31f)
	}, ; 477
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554535, ; uint32_t type_token_id (0x2000067)
		i32 80; uint32_t java_name_index (0x50)
	}, ; 478
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555117, ; uint32_t type_token_id (0x20002ad)
		i32 555; uint32_t java_name_index (0x22b)
	}, ; 479
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554680, ; uint32_t type_token_id (0x20000f8)
		i32 326; uint32_t java_name_index (0x146)
	}, ; 480
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554938, ; uint32_t type_token_id (0x20001fa)
		i32 476; uint32_t java_name_index (0x1dc)
	}, ; 481
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554646, ; uint32_t type_token_id (0x20000d6)
		i32 308; uint32_t java_name_index (0x134)
	}, ; 482
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 645; uint32_t java_name_index (0x285)
	}, ; 483
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554719, ; uint32_t type_token_id (0x200011f)
		i32 353; uint32_t java_name_index (0x161)
	}, ; 484
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554799, ; uint32_t type_token_id (0x200016f)
		i32 395; uint32_t java_name_index (0x18b)
	}, ; 485
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 429; uint32_t java_name_index (0x1ad)
	}, ; 486
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554577, ; uint32_t type_token_id (0x2000091)
		i32 815; uint32_t java_name_index (0x32f)
	}, ; 487
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 204; uint32_t java_name_index (0xcc)
	}, ; 488
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555338, ; uint32_t type_token_id (0x200038a)
		i32 673; uint32_t java_name_index (0x2a1)
	}, ; 489
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554732, ; uint32_t type_token_id (0x200012c)
		i32 358; uint32_t java_name_index (0x166)
	}, ; 490
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554471, ; uint32_t type_token_id (0x2000027)
		i32 8; uint32_t java_name_index (0x8)
	}, ; 491
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 889; uint32_t java_name_index (0x379)
	}, ; 492
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554862, ; uint32_t type_token_id (0x20001ae)
		i32 439; uint32_t java_name_index (0x1b7)
	}, ; 493
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555102, ; uint32_t type_token_id (0x200029e)
		i32 544; uint32_t java_name_index (0x220)
	}, ; 494
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 336; uint32_t java_name_index (0x150)
	}, ; 495
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554610, ; uint32_t type_token_id (0x20000b2)
		i32 252; uint32_t java_name_index (0xfc)
	}, ; 496
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554990, ; uint32_t type_token_id (0x200022e)
		i32 178; uint32_t java_name_index (0xb2)
	}, ; 497
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554901, ; uint32_t type_token_id (0x20001d5)
		i32 458; uint32_t java_name_index (0x1ca)
	}, ; 498
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 268; uint32_t java_name_index (0x10c)
	}, ; 499
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555295, ; uint32_t type_token_id (0x200035f)
		i32 648; uint32_t java_name_index (0x288)
	}, ; 500
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555367, ; uint32_t type_token_id (0x20003a7)
		i32 692; uint32_t java_name_index (0x2b4)
	}, ; 501
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555214, ; uint32_t type_token_id (0x200030e)
		i32 172; uint32_t java_name_index (0xac)
	}, ; 502
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 831; uint32_t java_name_index (0x33f)
	}, ; 503
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554644, ; uint32_t type_token_id (0x20000d4)
		i32 307; uint32_t java_name_index (0x133)
	}, ; 504
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555210, ; uint32_t type_token_id (0x200030a)
		i32 588; uint32_t java_name_index (0x24c)
	}, ; 505
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 91; uint32_t java_name_index (0x5b)
	}, ; 506
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555308, ; uint32_t type_token_id (0x200036c)
		i32 654; uint32_t java_name_index (0x28e)
	}, ; 507
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 20; uint32_t java_name_index (0x14)
	}, ; 508
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 27; uint32_t java_name_index (0x1b)
	}, ; 509
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 12; uint32_t java_name_index (0xc)
	}, ; 510
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554874, ; uint32_t type_token_id (0x20001ba)
		i32 445; uint32_t java_name_index (0x1bd)
	}, ; 511
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554743, ; uint32_t type_token_id (0x2000137)
		i32 364; uint32_t java_name_index (0x16c)
	}, ; 512
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 923; uint32_t java_name_index (0x39b)
	}, ; 513
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index (0x13)
		i32 33554486, ; uint32_t type_token_id (0x2000036)
		i32 276; uint32_t java_name_index (0x114)
	}, ; 514
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 267; uint32_t java_name_index (0x10b)
	}, ; 515
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554595, ; uint32_t type_token_id (0x20000a3)
		i32 243; uint32_t java_name_index (0xf3)
	}, ; 516
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555362, ; uint32_t type_token_id (0x20003a2)
		i32 1005; uint32_t java_name_index (0x3ed)
	}, ; 517
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555106, ; uint32_t type_token_id (0x20002a2)
		i32 546; uint32_t java_name_index (0x222)
	}, ; 518
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 226; uint32_t java_name_index (0xe2)
	}, ; 519
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554454, ; uint32_t type_token_id (0x2000016)
		i32 265; uint32_t java_name_index (0x109)
	}, ; 520
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 228; uint32_t java_name_index (0xe4)
	}, ; 521
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 46; uint32_t java_name_index (0x2e)
	}, ; 522
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554668, ; uint32_t type_token_id (0x20000ec)
		i32 319; uint32_t java_name_index (0x13f)
	}, ; 523
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555206, ; uint32_t type_token_id (0x2000306)
		i32 584; uint32_t java_name_index (0x248)
	}, ; 524
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 33554438, ; uint32_t type_token_id (0x2000006)
		i32 48; uint32_t java_name_index (0x30)
	}, ; 525
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554472, ; uint32_t type_token_id (0x2000028)
		i32 111; uint32_t java_name_index (0x6f)
	}, ; 526
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 283; uint32_t java_name_index (0x11b)
	}, ; 527
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555290, ; uint32_t type_token_id (0x200035a)
		i32 644; uint32_t java_name_index (0x284)
	}, ; 528
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555346, ; uint32_t type_token_id (0x2000392)
		i32 997; uint32_t java_name_index (0x3e5)
	}, ; 529
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554627, ; uint32_t type_token_id (0x20000c3)
		i32 298; uint32_t java_name_index (0x12a)
	}, ; 530
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554571, ; uint32_t type_token_id (0x200008b)
		i32 97; uint32_t java_name_index (0x61)
	}, ; 531
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 836; uint32_t java_name_index (0x344)
	}, ; 532
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 768; uint32_t java_name_index (0x300)
	}, ; 533
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 781; uint32_t java_name_index (0x30d)
	}, ; 534
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554542, ; uint32_t type_token_id (0x200006e)
		i32 86; uint32_t java_name_index (0x56)
	}, ; 535
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 270; uint32_t java_name_index (0x10e)
	}, ; 536
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554809, ; uint32_t type_token_id (0x2000179)
		i32 169; uint32_t java_name_index (0xa9)
	}, ; 537
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554770, ; uint32_t type_token_id (0x2000152)
		i32 156; uint32_t java_name_index (0x9c)
	}, ; 538
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554548, ; uint32_t type_token_id (0x2000074)
		i32 884; uint32_t java_name_index (0x374)
	}, ; 539
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555389, ; uint32_t type_token_id (0x20003bd)
		i32 708; uint32_t java_name_index (0x2c4)
	}, ; 540
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555383, ; uint32_t type_token_id (0x20003b7)
		i32 703; uint32_t java_name_index (0x2bf)
	}, ; 541
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 795; uint32_t java_name_index (0x31b)
	}, ; 542
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 666; uint32_t java_name_index (0x29a)
	}, ; 543
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 79; uint32_t java_name_index (0x4f)
	}, ; 544
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554902, ; uint32_t type_token_id (0x20001d6)
		i32 459; uint32_t java_name_index (0x1cb)
	}, ; 545
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 203; uint32_t java_name_index (0xcb)
	}, ; 546
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555115, ; uint32_t type_token_id (0x20002ab)
		i32 553; uint32_t java_name_index (0x229)
	}, ; 547
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 833; uint32_t java_name_index (0x341)
	}, ; 548
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555294, ; uint32_t type_token_id (0x200035e)
		i32 647; uint32_t java_name_index (0x287)
	}, ; 549
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554621, ; uint32_t type_token_id (0x20000bd)
		i32 257; uint32_t java_name_index (0x101)
	}, ; 550
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 180; uint32_t java_name_index (0xb4)
	}, ; 551
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555233, ; uint32_t type_token_id (0x2000321)
		i32 930; uint32_t java_name_index (0x3a2)
	}, ; 552
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 43; uint32_t java_name_index (0x2b)
	}, ; 553
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554721, ; uint32_t type_token_id (0x2000121)
		i32 129; uint32_t java_name_index (0x81)
	}, ; 554
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554520, ; uint32_t type_token_id (0x2000058)
		i32 867; uint32_t java_name_index (0x363)
	}, ; 555
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554556, ; uint32_t type_token_id (0x200007c)
		i32 887; uint32_t java_name_index (0x377)
	}, ; 556
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555231, ; uint32_t type_token_id (0x200031f)
		i32 929; uint32_t java_name_index (0x3a1)
	}, ; 557
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555420, ; uint32_t type_token_id (0x20003dc)
		i32 731; uint32_t java_name_index (0x2db)
	}, ; 558
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554705, ; uint32_t type_token_id (0x2000111)
		i32 345; uint32_t java_name_index (0x159)
	}, ; 559
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554709, ; uint32_t type_token_id (0x2000115)
		i32 348; uint32_t java_name_index (0x15c)
	}, ; 560
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555845, ; uint32_t type_token_id (0x2000585)
		i32 977; uint32_t java_name_index (0x3d1)
	}, ; 561
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 849; uint32_t java_name_index (0x351)
	}, ; 562
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 521; uint32_t java_name_index (0x209)
	}, ; 563
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 33554456, ; uint32_t type_token_id (0x2000018)
		i32 901; uint32_t java_name_index (0x385)
	}, ; 564
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554521, ; uint32_t type_token_id (0x2000059)
		i32 868; uint32_t java_name_index (0x364)
	}, ; 565
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554918, ; uint32_t type_token_id (0x20001e6)
		i32 465; uint32_t java_name_index (0x1d1)
	}, ; 566
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 602; uint32_t java_name_index (0x25a)
	}, ; 567
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 372; uint32_t java_name_index (0x174)
	}, ; 568
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555450, ; uint32_t type_token_id (0x20003fa)
		i32 754; uint32_t java_name_index (0x2f2)
	}, ; 569
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 657; uint32_t java_name_index (0x291)
	}, ; 570
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554715, ; uint32_t type_token_id (0x200011b)
		i32 352; uint32_t java_name_index (0x160)
	}, ; 571
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555133, ; uint32_t type_token_id (0x20002bd)
		i32 168; uint32_t java_name_index (0xa8)
	}, ; 572
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index (0x7)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 33; uint32_t java_name_index (0x21)
	}, ; 573
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555831, ; uint32_t type_token_id (0x2000577)
		i32 961; uint32_t java_name_index (0x3c1)
	}, ; 574
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 808; uint32_t java_name_index (0x328)
	}, ; 575
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554742, ; uint32_t type_token_id (0x2000136)
		i32 363; uint32_t java_name_index (0x16b)
	}, ; 576
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555387, ; uint32_t type_token_id (0x20003bb)
		i32 706; uint32_t java_name_index (0x2c2)
	}, ; 577
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555213, ; uint32_t type_token_id (0x200030d)
		i32 591; uint32_t java_name_index (0x24f)
	}, ; 578
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 872; uint32_t java_name_index (0x368)
	}, ; 579
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555363, ; uint32_t type_token_id (0x20003a3)
		i32 1006; uint32_t java_name_index (0x3ee)
	}, ; 580
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 217; uint32_t java_name_index (0xd9)
	}, ; 581
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555406, ; uint32_t type_token_id (0x20003ce)
		i32 720; uint32_t java_name_index (0x2d0)
	}, ; 582
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 493; uint32_t java_name_index (0x1ed)
	}, ; 583
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554855, ; uint32_t type_token_id (0x20001a7)
		i32 436; uint32_t java_name_index (0x1b4)
	}, ; 584
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554600, ; uint32_t type_token_id (0x20000a8)
		i32 247; uint32_t java_name_index (0xf7)
	}, ; 585
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 860; uint32_t java_name_index (0x35c)
	}, ; 586
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554602, ; uint32_t type_token_id (0x20000aa)
		i32 284; uint32_t java_name_index (0x11c)
	}, ; 587
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554797, ; uint32_t type_token_id (0x200016d)
		i32 167; uint32_t java_name_index (0xa7)
	}, ; 588
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 303; uint32_t java_name_index (0x12f)
	}, ; 589
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554727, ; uint32_t type_token_id (0x2000127)
		i32 131; uint32_t java_name_index (0x83)
	}, ; 590
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555826, ; uint32_t type_token_id (0x2000572)
		i32 956; uint32_t java_name_index (0x3bc)
	}, ; 591
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555278, ; uint32_t type_token_id (0x200034e)
		i32 949; uint32_t java_name_index (0x3b5)
	}, ; 592
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554562, ; uint32_t type_token_id (0x2000082)
		i32 804; uint32_t java_name_index (0x324)
	}, ; 593
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554499, ; uint32_t type_token_id (0x2000043)
		i32 837; uint32_t java_name_index (0x345)
	}, ; 594
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554736, ; uint32_t type_token_id (0x2000130)
		i32 360; uint32_t java_name_index (0x168)
	}, ; 595
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554787, ; uint32_t type_token_id (0x2000163)
		i32 388; uint32_t java_name_index (0x184)
	}, ; 596
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555282, ; uint32_t type_token_id (0x2000352)
		i32 953; uint32_t java_name_index (0x3b9)
	}, ; 597
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554618, ; uint32_t type_token_id (0x20000ba)
		i32 255; uint32_t java_name_index (0xff)
	}, ; 598
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 765; uint32_t java_name_index (0x2fd)
	}, ; 599
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 650; uint32_t java_name_index (0x28a)
	}, ; 600
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 482; uint32_t java_name_index (0x1e2)
	}, ; 601
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554549, ; uint32_t type_token_id (0x2000075)
		i32 794; uint32_t java_name_index (0x31a)
	}, ; 602
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554703, ; uint32_t type_token_id (0x200010f)
		i32 123; uint32_t java_name_index (0x7b)
	}, ; 603
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 790; uint32_t java_name_index (0x316)
	}, ; 604
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554434, ; uint32_t type_token_id (0x2000002)
		i32 847; uint32_t java_name_index (0x34f)
	}, ; 605
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 886; uint32_t java_name_index (0x376)
	}, ; 606
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 230; uint32_t java_name_index (0xe6)
	}, ; 607
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555396, ; uint32_t type_token_id (0x20003c4)
		i32 713; uint32_t java_name_index (0x2c9)
	}, ; 608
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 135; uint32_t java_name_index (0x87)
	}, ; 609
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555245, ; uint32_t type_token_id (0x200032d)
		i32 615; uint32_t java_name_index (0x267)
	}, ; 610
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555371, ; uint32_t type_token_id (0x20003ab)
		i32 695; uint32_t java_name_index (0x2b7)
	}, ; 611
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 462; uint32_t java_name_index (0x1ce)
	}, ; 612
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 78; uint32_t java_name_index (0x4e)
	}, ; 613
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 495; uint32_t java_name_index (0x1ef)
	}, ; 614
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555061, ; uint32_t type_token_id (0x2000275)
		i32 118; uint32_t java_name_index (0x76)
	}, ; 615
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554692, ; uint32_t type_token_id (0x2000104)
		i32 334; uint32_t java_name_index (0x14e)
	}, ; 616
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 454; uint32_t java_name_index (0x1c6)
	}, ; 617
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 853; uint32_t java_name_index (0x355)
	}, ; 618
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554888, ; uint32_t type_token_id (0x20001c8)
		i32 451; uint32_t java_name_index (0x1c3)
	}, ; 619
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555354, ; uint32_t type_token_id (0x200039a)
		i32 684; uint32_t java_name_index (0x2ac)
	}, ; 620
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 641; uint32_t java_name_index (0x281)
	}, ; 621
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554660, ; uint32_t type_token_id (0x20000e4)
		i32 314; uint32_t java_name_index (0x13a)
	}, ; 622
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554498, ; uint32_t type_token_id (0x2000042)
		i32 766; uint32_t java_name_index (0x2fe)
	}, ; 623
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554453, ; uint32_t type_token_id (0x2000015)
		i32 264; uint32_t java_name_index (0x108)
	}, ; 624
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554752, ; uint32_t type_token_id (0x2000140)
		i32 139; uint32_t java_name_index (0x8b)
	}, ; 625
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 635; uint32_t java_name_index (0x27b)
	}, ; 626
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555316, ; uint32_t type_token_id (0x2000374)
		i32 659; uint32_t java_name_index (0x293)
	}, ; 627
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554515, ; uint32_t type_token_id (0x2000053)
		i32 67; uint32_t java_name_index (0x43)
	}, ; 628
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555358, ; uint32_t type_token_id (0x200039e)
		i32 686; uint32_t java_name_index (0x2ae)
	}, ; 629
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554555, ; uint32_t type_token_id (0x200007b)
		i32 223; uint32_t java_name_index (0xdf)
	}, ; 630
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555328, ; uint32_t type_token_id (0x2000380)
		i32 670; uint32_t java_name_index (0x29e)
	}, ; 631
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 774; uint32_t java_name_index (0x306)
	}, ; 632
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 770; uint32_t java_name_index (0x302)
	}, ; 633
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554495, ; uint32_t type_token_id (0x200003f)
		i32 763; uint32_t java_name_index (0x2fb)
	}, ; 634
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554523, ; uint32_t type_token_id (0x200005b)
		i32 870; uint32_t java_name_index (0x366)
	}, ; 635
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554574, ; uint32_t type_token_id (0x200008e)
		i32 812; uint32_t java_name_index (0x32c)
	}, ; 636
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555401, ; uint32_t type_token_id (0x20003c9)
		i32 716; uint32_t java_name_index (0x2cc)
	}, ; 637
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554690, ; uint32_t type_token_id (0x2000102)
		i32 332; uint32_t java_name_index (0x14c)
	}, ; 638
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555451, ; uint32_t type_token_id (0x20003fb)
		i32 755; uint32_t java_name_index (0x2f3)
	}, ; 639
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 290; uint32_t java_name_index (0x122)
	}, ; 640
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 136; uint32_t java_name_index (0x88)
	}, ; 641
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554739, ; uint32_t type_token_id (0x2000133)
		i32 362; uint32_t java_name_index (0x16a)
	}, ; 642
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555052, ; uint32_t type_token_id (0x200026c)
		i32 532; uint32_t java_name_index (0x214)
	}, ; 643
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 328; uint32_t java_name_index (0x148)
	}, ; 644
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 914; uint32_t java_name_index (0x392)
	}, ; 645
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554983, ; uint32_t type_token_id (0x2000227)
		i32 501; uint32_t java_name_index (0x1f5)
	}, ; 646
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554710, ; uint32_t type_token_id (0x2000116)
		i32 349; uint32_t java_name_index (0x15d)
	}, ; 647
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554984, ; uint32_t type_token_id (0x2000228)
		i32 177; uint32_t java_name_index (0xb1)
	}, ; 648
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 519; uint32_t java_name_index (0x207)
	}, ; 649
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554747, ; uint32_t type_token_id (0x200013b)
		i32 367; uint32_t java_name_index (0x16f)
	}, ; 650
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555339, ; uint32_t type_token_id (0x200038b)
		i32 992; uint32_t java_name_index (0x3e0)
	}, ; 651
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 356; uint32_t java_name_index (0x164)
	}, ; 652
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 188; uint32_t java_name_index (0xbc)
	}, ; 653
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 95; uint32_t java_name_index (0x5f)
	}, ; 654
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555251, ; uint32_t type_token_id (0x2000333)
		i32 621; uint32_t java_name_index (0x26d)
	}, ; 655
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555204, ; uint32_t type_token_id (0x2000304)
		i32 170; uint32_t java_name_index (0xaa)
	}, ; 656
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555234, ; uint32_t type_token_id (0x2000322)
		i32 608; uint32_t java_name_index (0x260)
	}, ; 657
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554994, ; uint32_t type_token_id (0x2000232)
		i32 510; uint32_t java_name_index (0x1fe)
	}, ; 658
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 775; uint32_t java_name_index (0x307)
	}, ; 659
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555384, ; uint32_t type_token_id (0x20003b8)
		i32 704; uint32_t java_name_index (0x2c0)
	}, ; 660
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554455, ; uint32_t type_token_id (0x2000017)
		i32 42; uint32_t java_name_index (0x2a)
	}, ; 661
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555375, ; uint32_t type_token_id (0x20003af)
		i32 1020; uint32_t java_name_index (0x3fc)
	}, ; 662
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 379; uint32_t java_name_index (0x17b)
	}, ; 663
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555424, ; uint32_t type_token_id (0x20003e0)
		i32 734; uint32_t java_name_index (0x2de)
	}, ; 664
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555247, ; uint32_t type_token_id (0x200032f)
		i32 617; uint32_t java_name_index (0x269)
	}, ; 665
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 93; uint32_t java_name_index (0x5d)
	}, ; 666
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index (0x1c)
		i32 33554457, ; uint32_t type_token_id (0x2000019)
		i32 857; uint32_t java_name_index (0x359)
	}, ; 667
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554828, ; uint32_t type_token_id (0x200018c)
		i32 414; uint32_t java_name_index (0x19e)
	}, ; 668
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554758, ; uint32_t type_token_id (0x2000146)
		i32 146; uint32_t java_name_index (0x92)
	}, ; 669
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554835, ; uint32_t type_token_id (0x2000193)
		i32 421; uint32_t java_name_index (0x1a5)
	}, ; 670
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555813, ; uint32_t type_token_id (0x2000565)
		i32 941; uint32_t java_name_index (0x3ad)
	}, ; 671
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 137; uint32_t java_name_index (0x89)
	}, ; 672
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 76; uint32_t java_name_index (0x4c)
	}, ; 673
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554940, ; uint32_t type_token_id (0x20001fc)
		i32 478; uint32_t java_name_index (0x1de)
	}, ; 674
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555329, ; uint32_t type_token_id (0x2000381)
		i32 981; uint32_t java_name_index (0x3d5)
	}, ; 675
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index (0x10)
		i32 33554443, ; uint32_t type_token_id (0x200000b)
		i32 190; uint32_t java_name_index (0xbe)
	}, ; 676
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 191; uint32_t java_name_index (0xbf)
	}, ; 677
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555014, ; uint32_t type_token_id (0x2000246)
		i32 520; uint32_t java_name_index (0x208)
	}, ; 678
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555067, ; uint32_t type_token_id (0x200027b)
		i32 540; uint32_t java_name_index (0x21c)
	}, ; 679
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555271, ; uint32_t type_token_id (0x2000347)
		i32 939; uint32_t java_name_index (0x3ab)
	}, ; 680
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 780; uint32_t java_name_index (0x30c)
	}, ; 681
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 898; uint32_t java_name_index (0x382)
	}, ; 682
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554931, ; uint32_t type_token_id (0x20001f3)
		i32 472; uint32_t java_name_index (0x1d8)
	}, ; 683
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555320, ; uint32_t type_token_id (0x2000378)
		i32 663; uint32_t java_name_index (0x297)
	}, ; 684
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555444, ; uint32_t type_token_id (0x20003f4)
		i32 749; uint32_t java_name_index (0x2ed)
	}, ; 685
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555803, ; uint32_t type_token_id (0x200055b)
		i32 934; uint32_t java_name_index (0x3a6)
	}, ; 686
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 492; uint32_t java_name_index (0x1ec)
	}, ; 687
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 400; uint32_t java_name_index (0x190)
	}, ; 688
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 876; uint32_t java_name_index (0x36c)
	}, ; 689
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 637; uint32_t java_name_index (0x27d)
	}, ; 690
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555194, ; uint32_t type_token_id (0x20002fa)
		i32 572; uint32_t java_name_index (0x23c)
	}, ; 691
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554960, ; uint32_t type_token_id (0x2000210)
		i32 488; uint32_t java_name_index (0x1e8)
	}, ; 692
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 366; uint32_t java_name_index (0x16e)
	}, ; 693
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 33555122, ; uint32_t type_token_id (0x20002b2)
		i32 911; uint32_t java_name_index (0x38f)
	}, ; 694
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 841; uint32_t java_name_index (0x349)
	}, ; 695
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554516, ; uint32_t type_token_id (0x2000054)
		i32 864; uint32_t java_name_index (0x360)
	}, ; 696
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555423, ; uint32_t type_token_id (0x20003df)
		i32 733; uint32_t java_name_index (0x2dd)
	}, ; 697
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555324, ; uint32_t type_token_id (0x200037c)
		i32 976; uint32_t java_name_index (0x3d0)
	}, ; 698
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554699, ; uint32_t type_token_id (0x200010b)
		i32 339; uint32_t java_name_index (0x153)
	}, ; 699
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 494; uint32_t java_name_index (0x1ee)
	}, ; 700
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554496, ; uint32_t type_token_id (0x2000040)
		i32 57; uint32_t java_name_index (0x39)
	}, ; 701
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 5; uint32_t java_name_index (0x5)
	}, ; 702
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555356, ; uint32_t type_token_id (0x200039c)
		i32 685; uint32_t java_name_index (0x2ad)
	}, ; 703
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 558; uint32_t java_name_index (0x22e)
	}, ; 704
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555466, ; uint32_t type_token_id (0x200040a)
		i32 756; uint32_t java_name_index (0x2f4)
	}, ; 705
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554821, ; uint32_t type_token_id (0x2000185)
		i32 410; uint32_t java_name_index (0x19a)
	}, ; 706
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555330, ; uint32_t type_token_id (0x2000382)
		i32 982; uint32_t java_name_index (0x3d6)
	}, ; 707
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554559, ; uint32_t type_token_id (0x200007f)
		i32 802; uint32_t java_name_index (0x322)
	}, ; 708
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554533, ; uint32_t type_token_id (0x2000065)
		i32 785; uint32_t java_name_index (0x311)
	}, ; 709
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555333, ; uint32_t type_token_id (0x2000385)
		i32 985; uint32_t java_name_index (0x3d9)
	}, ; 710
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554581, ; uint32_t type_token_id (0x2000095)
		i32 113; uint32_t java_name_index (0x71)
	}, ; 711
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555343, ; uint32_t type_token_id (0x200038f)
		i32 995; uint32_t java_name_index (0x3e3)
	}, ; 712
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 893; uint32_t java_name_index (0x37d)
	}, ; 713
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555370, ; uint32_t type_token_id (0x20003aa)
		i32 694; uint32_t java_name_index (0x2b6)
	}, ; 714
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index (0x1e)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 900; uint32_t java_name_index (0x384)
	}, ; 715
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554497, ; uint32_t type_token_id (0x2000041)
		i32 58; uint32_t java_name_index (0x3a)
	}, ; 716
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555359, ; uint32_t type_token_id (0x200039f)
		i32 1003; uint32_t java_name_index (0x3eb)
	}, ; 717
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 14; uint32_t java_name_index (0xe)
	}, ; 718
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555862, ; uint32_t type_token_id (0x2000596)
		i32 1017; uint32_t java_name_index (0x3f9)
	}, ; 719
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 919; uint32_t java_name_index (0x397)
	}, ; 720
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554781, ; uint32_t type_token_id (0x200015d)
		i32 385; uint32_t java_name_index (0x181)
	}, ; 721
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554702, ; uint32_t type_token_id (0x200010e)
		i32 122; uint32_t java_name_index (0x7a)
	}, ; 722
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555307, ; uint32_t type_token_id (0x200036b)
		i32 973; uint32_t java_name_index (0x3cd)
	}, ; 723
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555409, ; uint32_t type_token_id (0x20003d1)
		i32 722; uint32_t java_name_index (0x2d2)
	}, ; 724
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555110, ; uint32_t type_token_id (0x20002a6)
		i32 549; uint32_t java_name_index (0x225)
	}, ; 725
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 193; uint32_t java_name_index (0xc1)
	}, ; 726
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 801; uint32_t java_name_index (0x321)
	}, ; 727
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 679; uint32_t java_name_index (0x2a7)
	}, ; 728
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index (0x1f)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 902; uint32_t java_name_index (0x386)
	}, ; 729
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index (0xc)
		i32 33554474, ; uint32_t type_token_id (0x200002a)
		i32 112; uint32_t java_name_index (0x70)
	}, ; 730
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 940; uint32_t java_name_index (0x3ac)
	}, ; 731
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555368, ; uint32_t type_token_id (0x20003a8)
		i32 1009; uint32_t java_name_index (0x3f1)
	}, ; 732
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554748, ; uint32_t type_token_id (0x200013c)
		i32 368; uint32_t java_name_index (0x170)
	}, ; 733
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 212; uint32_t java_name_index (0xd4)
	}, ; 734
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554511, ; uint32_t type_token_id (0x200004f)
		i32 64; uint32_t java_name_index (0x40)
	}, ; 735
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554832, ; uint32_t type_token_id (0x2000190)
		i32 418; uint32_t java_name_index (0x1a2)
	}, ; 736
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554734, ; uint32_t type_token_id (0x200012e)
		i32 359; uint32_t java_name_index (0x167)
	}, ; 737
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 33555127, ; uint32_t type_token_id (0x20002b7)
		i32 912; uint32_t java_name_index (0x390)
	}, ; 738
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555283, ; uint32_t type_token_id (0x2000353)
		i32 955; uint32_t java_name_index (0x3bb)
	}, ; 739
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 905; uint32_t java_name_index (0x389)
	}, ; 740
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 964; uint32_t java_name_index (0x3c4)
	}, ; 741
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554992, ; uint32_t type_token_id (0x2000230)
		i32 508; uint32_t java_name_index (0x1fc)
	}, ; 742
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 814; uint32_t java_name_index (0x32e)
	}, ; 743
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555230, ; uint32_t type_token_id (0x200031e)
		i32 928; uint32_t java_name_index (0x3a0)
	}, ; 744
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555117, ; uint32_t type_token_id (0x20002ad)
		i32 162; uint32_t java_name_index (0xa2)
	}, ; 745
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555108, ; uint32_t type_token_id (0x20002a4)
		i32 141; uint32_t java_name_index (0x8d)
	}, ; 746
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554986, ; uint32_t type_token_id (0x200022a)
		i32 503; uint32_t java_name_index (0x1f7)
	}, ; 747
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555312, ; uint32_t type_token_id (0x2000370)
		i32 975; uint32_t java_name_index (0x3cf)
	}, ; 748
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555306, ; uint32_t type_token_id (0x200036a)
		i32 972; uint32_t java_name_index (0x3cc)
	}, ; 749
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 448; uint32_t java_name_index (0x1c0)
	}, ; 750
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554558, ; uint32_t type_token_id (0x200007e)
		i32 94; uint32_t java_name_index (0x5e)
	}, ; 751
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 105; uint32_t java_name_index (0x69)
	}, ; 752
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 101; uint32_t java_name_index (0x65)
	}, ; 753
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index (0x22)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 915; uint32_t java_name_index (0x393)
	}, ; 754
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 31; uint32_t java_name_index (0x1f)
	}, ; 755
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555325, ; uint32_t type_token_id (0x200037d)
		i32 667; uint32_t java_name_index (0x29b)
	}, ; 756
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 427; uint32_t java_name_index (0x1ab)
	}, ; 757
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555211, ; uint32_t type_token_id (0x200030b)
		i32 589; uint32_t java_name_index (0x24d)
	}, ; 758
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555097, ; uint32_t type_token_id (0x2000299)
		i32 542; uint32_t java_name_index (0x21e)
	}, ; 759
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554707, ; uint32_t type_token_id (0x2000113)
		i32 126; uint32_t java_name_index (0x7e)
	}, ; 760
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 84; uint32_t java_name_index (0x54)
	}, ; 761
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 473; uint32_t java_name_index (0x1d9)
	}, ; 762
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555331, ; uint32_t type_token_id (0x2000383)
		i32 983; uint32_t java_name_index (0x3d7)
	}, ; 763
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554463, ; uint32_t type_token_id (0x200001f)
		i32 272; uint32_t java_name_index (0x110)
	}, ; 764
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555202, ; uint32_t type_token_id (0x2000302)
		i32 580; uint32_t java_name_index (0x244)
	}, ; 765
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 73; uint32_t java_name_index (0x49)
	}, ; 766
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554802, ; uint32_t type_token_id (0x2000172)
		i32 397; uint32_t java_name_index (0x18d)
	}, ; 767
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554503, ; uint32_t type_token_id (0x2000047)
		i32 196; uint32_t java_name_index (0xc4)
	}, ; 768
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555266, ; uint32_t type_token_id (0x2000342)
		i32 630; uint32_t java_name_index (0x276)
	}, ; 769
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554706, ; uint32_t type_token_id (0x2000112)
		i32 346; uint32_t java_name_index (0x15a)
	}, ; 770
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554978, ; uint32_t type_token_id (0x2000222)
		i32 497; uint32_t java_name_index (0x1f1)
	}, ; 771
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554850, ; uint32_t type_token_id (0x20001a2)
		i32 431; uint32_t java_name_index (0x1af)
	}, ; 772
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 496; uint32_t java_name_index (0x1f0)
	}, ; 773
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554466, ; uint32_t type_token_id (0x2000022)
		i32 274; uint32_t java_name_index (0x112)
	}, ; 774
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554513, ; uint32_t type_token_id (0x2000051)
		i32 862; uint32_t java_name_index (0x35e)
	}, ; 775
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 17; uint32_t java_name_index (0x11)
	}, ; 776
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554540, ; uint32_t type_token_id (0x200006c)
		i32 880; uint32_t java_name_index (0x370)
	}, ; 777
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 950; uint32_t java_name_index (0x3b6)
	}, ; 778
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555218, ; uint32_t type_token_id (0x2000312)
		i32 175; uint32_t java_name_index (0xaf)
	}, ; 779
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 10; uint32_t java_name_index (0xa)
	}, ; 780
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554551, ; uint32_t type_token_id (0x2000077)
		i32 221; uint32_t java_name_index (0xdd)
	}, ; 781
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555196, ; uint32_t type_token_id (0x20002fc)
		i32 574; uint32_t java_name_index (0x23e)
	}, ; 782
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555018, ; uint32_t type_token_id (0x200024a)
		i32 522; uint32_t java_name_index (0x20a)
	}, ; 783
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 487; uint32_t java_name_index (0x1e7)
	}, ; 784
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554445, ; uint32_t type_token_id (0x200000d)
		i32 36; uint32_t java_name_index (0x24)
	}, ; 785
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555335, ; uint32_t type_token_id (0x2000387)
		i32 987; uint32_t java_name_index (0x3db)
	}, ; 786
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555057, ; uint32_t type_token_id (0x2000271)
		i32 533; uint32_t java_name_index (0x215)
	}, ; 787
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 603; uint32_t java_name_index (0x25b)
	}, ; 788
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554553, ; uint32_t type_token_id (0x2000079)
		i32 797; uint32_t java_name_index (0x31d)
	}, ; 789
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 292; uint32_t java_name_index (0x124)
	}, ; 790
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554573, ; uint32_t type_token_id (0x200008d)
		i32 811; uint32_t java_name_index (0x32b)
	}, ; 791
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index (0x12)
		i32 33554451, ; uint32_t type_token_id (0x2000013)
		i32 262; uint32_t java_name_index (0x106)
	}, ; 792
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 224; uint32_t java_name_index (0xe0)
	}, ; 793
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555382, ; uint32_t type_token_id (0x20003b6)
		i32 702; uint32_t java_name_index (0x2be)
	}, ; 794
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 882; uint32_t java_name_index (0x372)
	}, ; 795
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 758; uint32_t java_name_index (0x2f6)
	}, ; 796
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 839; uint32_t java_name_index (0x347)
	}, ; 797
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 865; uint32_t java_name_index (0x361)
	}, ; 798
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555957, ; uint32_t type_token_id (0x20005f5)
		i32 1018; uint32_t java_name_index (0x3fa)
	}, ; 799
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555200, ; uint32_t type_token_id (0x2000300)
		i32 578; uint32_t java_name_index (0x242)
	}, ; 800
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555199, ; uint32_t type_token_id (0x20002ff)
		i32 577; uint32_t java_name_index (0x241)
	}, ; 801
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 968; uint32_t java_name_index (0x3c8)
	}, ; 802
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555258, ; uint32_t type_token_id (0x200033a)
		i32 625; uint32_t java_name_index (0x271)
	}, ; 803
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 116; uint32_t java_name_index (0x74)
	}, ; 804
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554494, ; uint32_t type_token_id (0x200003e)
		i32 762; uint32_t java_name_index (0x2fa)
	}, ; 805
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 757; uint32_t java_name_index (0x2f5)
	}, ; 806
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 374; uint32_t java_name_index (0x176)
	}, ; 807
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554500, ; uint32_t type_token_id (0x2000044)
		i32 767; uint32_t java_name_index (0x2ff)
	}, ; 808
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 516; uint32_t java_name_index (0x204)
	}, ; 809
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554989, ; uint32_t type_token_id (0x200022d)
		i32 505; uint32_t java_name_index (0x1f9)
	}, ; 810
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555364, ; uint32_t type_token_id (0x20003a4)
		i32 690; uint32_t java_name_index (0x2b2)
	}, ; 811
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554611, ; uint32_t type_token_id (0x20000b3)
		i32 289; uint32_t java_name_index (0x121)
	}, ; 812
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 186; uint32_t java_name_index (0xba)
	}, ; 813
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 523; uint32_t java_name_index (0x20b)
	}, ; 814
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 231; uint32_t java_name_index (0xe7)
	}, ; 815
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555438, ; uint32_t type_token_id (0x20003ee)
		i32 744; uint32_t java_name_index (0x2e8)
	}, ; 816
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 651; uint32_t java_name_index (0x28b)
	}, ; 817
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554501, ; uint32_t type_token_id (0x2000045)
		i32 60; uint32_t java_name_index (0x3c)
	}, ; 818
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554698, ; uint32_t type_token_id (0x200010a)
		i32 119; uint32_t java_name_index (0x77)
	}, ; 819
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555118, ; uint32_t type_token_id (0x20002ae)
		i32 556; uint32_t java_name_index (0x22c)
	}, ; 820
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 906; uint32_t java_name_index (0x38a)
	}, ; 821
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 966; uint32_t java_name_index (0x3c6)
	}, ; 822
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 68; uint32_t java_name_index (0x44)
	}, ; 823
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555207, ; uint32_t type_token_id (0x2000307)
		i32 585; uint32_t java_name_index (0x249)
	}, ; 824
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555337, ; uint32_t type_token_id (0x2000389)
		i32 989; uint32_t java_name_index (0x3dd)
	}, ; 825
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555336, ; uint32_t type_token_id (0x2000388)
		i32 988; uint32_t java_name_index (0x3dc)
	}, ; 826
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555022, ; uint32_t type_token_id (0x200024e)
		i32 524; uint32_t java_name_index (0x20c)
	}, ; 827
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554585, ; uint32_t type_token_id (0x2000099)
		i32 236; uint32_t java_name_index (0xec)
	}, ; 828
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 676; uint32_t java_name_index (0x2a4)
	}, ; 829
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555391, ; uint32_t type_token_id (0x20003bf)
		i32 710; uint32_t java_name_index (0x2c6)
	}, ; 830
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554554, ; uint32_t type_token_id (0x200007a)
		i32 798; uint32_t java_name_index (0x31e)
	}, ; 831
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 401; uint32_t java_name_index (0x191)
	}, ; 832
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555205, ; uint32_t type_token_id (0x2000305)
		i32 583; uint32_t java_name_index (0x247)
	}, ; 833
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554435, ; uint32_t type_token_id (0x2000003)
		i32 848; uint32_t java_name_index (0x350)
	}, ; 834
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554579, ; uint32_t type_token_id (0x2000093)
		i32 232; uint32_t java_name_index (0xe8)
	}, ; 835
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 381; uint32_t java_name_index (0x17d)
	}, ; 836
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554829, ; uint32_t type_token_id (0x200018d)
		i32 415; uint32_t java_name_index (0x19f)
	}, ; 837
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555332, ; uint32_t type_token_id (0x2000384)
		i32 984; uint32_t java_name_index (0x3d8)
	}, ; 838
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555317, ; uint32_t type_token_id (0x2000375)
		i32 660; uint32_t java_name_index (0x294)
	}, ; 839
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554749, ; uint32_t type_token_id (0x200013d)
		i32 369; uint32_t java_name_index (0x171)
	}, ; 840
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 792; uint32_t java_name_index (0x318)
	}, ; 841
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555366, ; uint32_t type_token_id (0x20003a6)
		i32 691; uint32_t java_name_index (0x2b3)
	}, ; 842
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555261, ; uint32_t type_token_id (0x200033d)
		i32 626; uint32_t java_name_index (0x272)
	}, ; 843
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554576, ; uint32_t type_token_id (0x2000090)
		i32 100; uint32_t java_name_index (0x64)
	}, ; 844
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 251; uint32_t java_name_index (0xfb)
	}, ; 845
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555162, ; uint32_t type_token_id (0x20002da)
		i32 563; uint32_t java_name_index (0x233)
	}, ; 846
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555280, ; uint32_t type_token_id (0x2000350)
		i32 951; uint32_t java_name_index (0x3b7)
	}, ; 847
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554638, ; uint32_t type_token_id (0x20000ce)
		i32 304; uint32_t java_name_index (0x130)
	}, ; 848
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555298, ; uint32_t type_token_id (0x2000362)
		i32 965; uint32_t java_name_index (0x3c5)
	}, ; 849
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554567, ; uint32_t type_token_id (0x2000087)
		i32 894; uint32_t java_name_index (0x37e)
	}, ; 850
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554838, ; uint32_t type_token_id (0x2000196)
		i32 424; uint32_t java_name_index (0x1a8)
	}, ; 851
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554439, ; uint32_t type_token_id (0x2000007)
		i32 108; uint32_t java_name_index (0x6c)
	}, ; 852
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 62; uint32_t java_name_index (0x3e)
	}, ; 853
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 63; uint32_t java_name_index (0x3f)
	}, ; 854
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555232, ; uint32_t type_token_id (0x2000320)
		i32 606; uint32_t java_name_index (0x25e)
	}, ; 855
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index (0x2)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 11; uint32_t java_name_index (0xb)
	}, ; 856
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555958, ; uint32_t type_token_id (0x20005f6)
		i32 1019; uint32_t java_name_index (0x3fb)
	}, ; 857
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555355, ; uint32_t type_token_id (0x200039b)
		i32 999; uint32_t java_name_index (0x3e7)
	}, ; 858
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554980, ; uint32_t type_token_id (0x2000224)
		i32 499; uint32_t java_name_index (0x1f3)
	}, ; 859
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555445, ; uint32_t type_token_id (0x20003f5)
		i32 750; uint32_t java_name_index (0x2ee)
	}, ; 860
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554522, ; uint32_t type_token_id (0x200005a)
		i32 869; uint32_t java_name_index (0x365)
	}, ; 861
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554508, ; uint32_t type_token_id (0x200004c)
		i32 859; uint32_t java_name_index (0x35b)
	}, ; 862
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555380, ; uint32_t type_token_id (0x20003b4)
		i32 700; uint32_t java_name_index (0x2bc)
	}, ; 863
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555114, ; uint32_t type_token_id (0x20002aa)
		i32 552; uint32_t java_name_index (0x228)
	}, ; 864
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index (0x4)
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 23; uint32_t java_name_index (0x17)
	}, ; 865
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554444, ; uint32_t type_token_id (0x200000c)
		i32 35; uint32_t java_name_index (0x23)
	}, ; 866
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555161, ; uint32_t type_token_id (0x20002d9)
		i32 562; uint32_t java_name_index (0x232)
	}, ; 867
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554935, ; uint32_t type_token_id (0x20001f7)
		i32 474; uint32_t java_name_index (0x1da)
	}, ; 868
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 33554441, ; uint32_t type_token_id (0x2000009)
		i32 181; uint32_t java_name_index (0xb5)
	}, ; 869
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554452, ; uint32_t type_token_id (0x2000014)
		i32 40; uint32_t java_name_index (0x28)
	}, ; 870
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554783, ; uint32_t type_token_id (0x200015f)
		i32 386; uint32_t java_name_index (0x182)
	}, ; 871
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555209, ; uint32_t type_token_id (0x2000309)
		i32 587; uint32_t java_name_index (0x24b)
	}, ; 872
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555419, ; uint32_t type_token_id (0x20003db)
		i32 730; uint32_t java_name_index (0x2da)
	}, ; 873
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554811, ; uint32_t type_token_id (0x200017b)
		i32 402; uint32_t java_name_index (0x192)
	}, ; 874
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554836, ; uint32_t type_token_id (0x2000194)
		i32 422; uint32_t java_name_index (0x1a6)
	}, ; 875
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 378; uint32_t java_name_index (0x17a)
	}, ; 876
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554609, ; uint32_t type_token_id (0x20000b1)
		i32 288; uint32_t java_name_index (0x120)
	}, ; 877
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554826, ; uint32_t type_token_id (0x200018a)
		i32 413; uint32_t java_name_index (0x19d)
	}, ; 878
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555284, ; uint32_t type_token_id (0x2000354)
		i32 958; uint32_t java_name_index (0x3be)
	}, ; 879
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555381, ; uint32_t type_token_id (0x20003b5)
		i32 701; uint32_t java_name_index (0x2bd)
	}, ; 880
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554731, ; uint32_t type_token_id (0x200012b)
		i32 357; uint32_t java_name_index (0x165)
	}, ; 881
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554817, ; uint32_t type_token_id (0x2000181)
		i32 407; uint32_t java_name_index (0x197)
	}, ; 882
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555188, ; uint32_t type_token_id (0x20002f4)
		i32 567; uint32_t java_name_index (0x237)
	}, ; 883
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index (0x6)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 30; uint32_t java_name_index (0x1e)
	}, ; 884
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554448, ; uint32_t type_token_id (0x2000010)
		i32 38; uint32_t java_name_index (0x26)
	}, ; 885
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555061, ; uint32_t type_token_id (0x2000275)
		i32 536; uint32_t java_name_index (0x218)
	}, ; 886
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554565, ; uint32_t type_token_id (0x2000085)
		i32 807; uint32_t java_name_index (0x327)
	}, ; 887
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index (0x19)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 842; uint32_t java_name_index (0x34a)
	}, ; 888
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554632, ; uint32_t type_token_id (0x20000c8)
		i32 301; uint32_t java_name_index (0x12d)
	}, ; 889
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555313, ; uint32_t type_token_id (0x2000371)
		i32 658; uint32_t java_name_index (0x292)
	}, ; 890
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554860, ; uint32_t type_token_id (0x20001ac)
		i32 438; uint32_t java_name_index (0x1b6)
	}, ; 891
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555239, ; uint32_t type_token_id (0x2000327)
		i32 611; uint32_t java_name_index (0x263)
	}, ; 892
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555275, ; uint32_t type_token_id (0x200034b)
		i32 946; uint32_t java_name_index (0x3b2)
	}, ; 893
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554711, ; uint32_t type_token_id (0x2000117)
		i32 350; uint32_t java_name_index (0x15e)
	}, ; 894
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554544, ; uint32_t type_token_id (0x2000070)
		i32 219; uint32_t java_name_index (0xdb)
	}, ; 895
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555212, ; uint32_t type_token_id (0x200030c)
		i32 590; uint32_t java_name_index (0x24e)
	}, ; 896
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 295; uint32_t java_name_index (0x127)
	}, ; 897
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index (0xb)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 109; uint32_t java_name_index (0x6d)
	}, ; 898
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 98; uint32_t java_name_index (0x62)
	}, ; 899
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index (0x20)
		i32 33554447, ; uint32_t type_token_id (0x200000f)
		i32 909; uint32_t java_name_index (0x38d)
	}, ; 900
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 655; uint32_t java_name_index (0x28f)
	}, ; 901
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554714, ; uint32_t type_token_id (0x200011a)
		i32 128; uint32_t java_name_index (0x80)
	}, ; 902
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555108, ; uint32_t type_token_id (0x20002a4)
		i32 548; uint32_t java_name_index (0x224)
	}, ; 903
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554536, ; uint32_t type_token_id (0x2000068)
		i32 215; uint32_t java_name_index (0xd7)
	}, ; 904
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555198, ; uint32_t type_token_id (0x20002fe)
		i32 576; uint32_t java_name_index (0x240)
	}, ; 905
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555415, ; uint32_t type_token_id (0x20003d7)
		i32 727; uint32_t java_name_index (0x2d7)
	}, ; 906
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554738, ; uint32_t type_token_id (0x2000132)
		i32 361; uint32_t java_name_index (0x169)
	}, ; 907
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554756, ; uint32_t type_token_id (0x2000144)
		i32 373; uint32_t java_name_index (0x175)
	}, ; 908
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554620, ; uint32_t type_token_id (0x20000bc)
		i32 256; uint32_t java_name_index (0x100)
	}, ; 909
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554504, ; uint32_t type_token_id (0x2000048)
		i32 771; uint32_t java_name_index (0x303)
	}, ; 910
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554691, ; uint32_t type_token_id (0x2000103)
		i32 333; uint32_t java_name_index (0x14d)
	}, ; 911
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555226, ; uint32_t type_token_id (0x200031a)
		i32 604; uint32_t java_name_index (0x25c)
	}, ; 912
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555399, ; uint32_t type_token_id (0x20003c7)
		i32 715; uint32_t java_name_index (0x2cb)
	}, ; 913
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 377; uint32_t java_name_index (0x179)
	}, ; 914
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 355; uint32_t java_name_index (0x163)
	}, ; 915
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 969; uint32_t java_name_index (0x3c9)
	}, ; 916
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555361, ; uint32_t type_token_id (0x20003a1)
		i32 688; uint32_t java_name_index (0x2b0)
	}, ; 917
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index (0x3)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 22; uint32_t java_name_index (0x16)
	}, ; 918
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 483; uint32_t java_name_index (0x1e3)
	}, ; 919
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554531, ; uint32_t type_token_id (0x2000063)
		i32 211; uint32_t java_name_index (0xd3)
	}, ; 920
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554468, ; uint32_t type_token_id (0x2000024)
		i32 825; uint32_t java_name_index (0x339)
	}, ; 921
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554824, ; uint32_t type_token_id (0x2000188)
		i32 412; uint32_t java_name_index (0x19c)
	}, ; 922
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 468; uint32_t java_name_index (0x1d4)
	}, ; 923
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555279, ; uint32_t type_token_id (0x200034f)
		i32 638; uint32_t java_name_index (0x27e)
	}, ; 924
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555220, ; uint32_t type_token_id (0x2000314)
		i32 598; uint32_t java_name_index (0x256)
	}, ; 925
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554532, ; uint32_t type_token_id (0x2000064)
		i32 77; uint32_t java_name_index (0x4d)
	}, ; 926
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555222, ; uint32_t type_token_id (0x2000316)
		i32 600; uint32_t java_name_index (0x258)
	}, ; 927
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555327, ; uint32_t type_token_id (0x200037f)
		i32 669; uint32_t java_name_index (0x29d)
	}, ; 928
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555224, ; uint32_t type_token_id (0x2000318)
		i32 924; uint32_t java_name_index (0x39c)
	}, ; 929
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554776, ; uint32_t type_token_id (0x2000158)
		i32 160; uint32_t java_name_index (0xa0)
	}, ; 930
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index (0xf)
		i32 33554450, ; uint32_t type_token_id (0x2000012)
		i32 189; uint32_t java_name_index (0xbd)
	}, ; 931
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554570, ; uint32_t type_token_id (0x200008a)
		i32 96; uint32_t java_name_index (0x60)
	}, ; 932
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554517, ; uint32_t type_token_id (0x2000055)
		i32 778; uint32_t java_name_index (0x30a)
	}, ; 933
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555143, ; uint32_t type_token_id (0x20002c7)
		i32 557; uint32_t java_name_index (0x22d)
	}, ; 934
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index (0x14)
		i32 33554440, ; uint32_t type_token_id (0x2000008)
		i32 278; uint32_t java_name_index (0x116)
	}, ; 935
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555193, ; uint32_t type_token_id (0x20002f9)
		i32 571; uint32_t java_name_index (0x23b)
	}, ; 936
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554629, ; uint32_t type_token_id (0x20000c5)
		i32 299; uint32_t java_name_index (0x12b)
	}, ; 937
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555304, ; uint32_t type_token_id (0x2000368)
		i32 971; uint32_t java_name_index (0x3cb)
	}, ; 938
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555272, ; uint32_t type_token_id (0x2000348)
		i32 634; uint32_t java_name_index (0x27a)
	}, ; 939
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555197, ; uint32_t type_token_id (0x20002fd)
		i32 575; uint32_t java_name_index (0x23f)
	}, ; 940
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554509, ; uint32_t type_token_id (0x200004d)
		i32 201; uint32_t java_name_index (0xc9)
	}, ; 941
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555122, ; uint32_t type_token_id (0x20002b2)
		i32 166; uint32_t java_name_index (0xa6)
	}, ; 942
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555422, ; uint32_t type_token_id (0x20003de)
		i32 732; uint32_t java_name_index (0x2dc)
	}, ; 943
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555238, ; uint32_t type_token_id (0x2000326)
		i32 610; uint32_t java_name_index (0x262)
	}, ; 944
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555253, ; uint32_t type_token_id (0x2000335)
		i32 622; uint32_t java_name_index (0x26e)
	}, ; 945
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554552, ; uint32_t type_token_id (0x2000078)
		i32 796; uint32_t java_name_index (0x31c)
	}, ; 946
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 330; uint32_t java_name_index (0x14a)
	}, ; 947
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554910, ; uint32_t type_token_id (0x20001de)
		i32 464; uint32_t java_name_index (0x1d0)
	}, ; 948
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 550; uint32_t java_name_index (0x226)
	}, ; 949
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554753, ; uint32_t type_token_id (0x2000141)
		i32 140; uint32_t java_name_index (0x8c)
	}, ; 950
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 515; uint32_t java_name_index (0x203)
	}, ; 951
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554818, ; uint32_t type_token_id (0x2000182)
		i32 408; uint32_t java_name_index (0x198)
	}, ; 952
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555249, ; uint32_t type_token_id (0x2000331)
		i32 619; uint32_t java_name_index (0x26b)
	}, ; 953
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 858; uint32_t java_name_index (0x35a)
	}, ; 954
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555532, ; uint32_t type_token_id (0x200044c)
		i32 916; uint32_t java_name_index (0x394)
	}, ; 955
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555270, ; uint32_t type_token_id (0x2000346)
		i32 633; uint32_t java_name_index (0x279)
	}, ; 956
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554941, ; uint32_t type_token_id (0x20001fd)
		i32 479; uint32_t java_name_index (0x1df)
	}, ; 957
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555066, ; uint32_t type_token_id (0x200027a)
		i32 539; uint32_t java_name_index (0x21b)
	}, ; 958
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555861, ; uint32_t type_token_id (0x2000595)
		i32 1016; uint32_t java_name_index (0x3f8)
	}, ; 959
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554750, ; uint32_t type_token_id (0x200013e)
		i32 370; uint32_t java_name_index (0x172)
	}, ; 960
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554507, ; uint32_t type_token_id (0x200004b)
		i32 199; uint32_t java_name_index (0xc7)
	}, ; 961
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554473, ; uint32_t type_token_id (0x2000029)
		i32 829; uint32_t java_name_index (0x33d)
	}, ; 962
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555026, ; uint32_t type_token_id (0x2000252)
		i32 526; uint32_t java_name_index (0x20e)
	}, ; 963
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555407, ; uint32_t type_token_id (0x20003cf)
		i32 721; uint32_t java_name_index (0x2d1)
	}, ; 964
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554580, ; uint32_t type_token_id (0x2000094)
		i32 818; uint32_t java_name_index (0x332)
	}, ; 965
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554759, ; uint32_t type_token_id (0x2000147)
		i32 147; uint32_t java_name_index (0x93)
	}, ; 966
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555002, ; uint32_t type_token_id (0x200023a)
		i32 514; uint32_t java_name_index (0x202)
	}, ; 967
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554534, ; uint32_t type_token_id (0x2000066)
		i32 786; uint32_t java_name_index (0x312)
	}, ; 968
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555410, ; uint32_t type_token_id (0x20003d2)
		i32 723; uint32_t java_name_index (0x2d3)
	}, ; 969
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 33554459, ; uint32_t type_token_id (0x200001b)
		i32 3; uint32_t java_name_index (0x3)
	}, ; 970
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555792, ; uint32_t type_token_id (0x2000550)
		i32 922; uint32_t java_name_index (0x39a)
	}, ; 971
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554791, ; uint32_t type_token_id (0x2000167)
		i32 392; uint32_t java_name_index (0x188)
	}, ; 972
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index (0x21)
		i32 33555128, ; uint32_t type_token_id (0x20002b8)
		i32 913; uint32_t java_name_index (0x391)
	}, ; 973
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 25; uint32_t java_name_index (0x19)
	}, ; 974
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554764, ; uint32_t type_token_id (0x200014c)
		i32 151; uint32_t java_name_index (0x97)
	}, ; 975
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index (0x9)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 49; uint32_t java_name_index (0x31)
	}, ; 976
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index (0x1a)
		i32 33554436, ; uint32_t type_token_id (0x2000004)
		i32 844; uint32_t java_name_index (0x34c)
	}, ; 977
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index (0x1)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 7; uint32_t java_name_index (0x7)
	}, ; 978
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554851, ; uint32_t type_token_id (0x20001a3)
		i32 432; uint32_t java_name_index (0x1b0)
	}, ; 979
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554650, ; uint32_t type_token_id (0x20000da)
		i32 310; uint32_t java_name_index (0x136)
	}, ; 980
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 1001; uint32_t java_name_index (0x3e9)
	}, ; 981
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 234; uint32_t java_name_index (0xea)
	}, ; 982
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554519, ; uint32_t type_token_id (0x2000057)
		i32 207; uint32_t java_name_index (0xcf)
	}, ; 983
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555326, ; uint32_t type_token_id (0x200037e)
		i32 668; uint32_t java_name_index (0x29c)
	}, ; 984
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index (0x5)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 28; uint32_t java_name_index (0x1c)
	}, ; 985
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554541, ; uint32_t type_token_id (0x200006d)
		i32 85; uint32_t java_name_index (0x55)
	}, ; 986
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554771, ; uint32_t type_token_id (0x2000153)
		i32 157; uint32_t java_name_index (0x9d)
	}, ; 987
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554502, ; uint32_t type_token_id (0x2000046)
		i32 769; uint32_t java_name_index (0x301)
	}, ; 988
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554631, ; uint32_t type_token_id (0x20000c7)
		i32 300; uint32_t java_name_index (0x12c)
	}, ; 989
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555402, ; uint32_t type_token_id (0x20003ca)
		i32 717; uint32_t java_name_index (0x2cd)
	}, ; 990
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 382; uint32_t java_name_index (0x17e)
	}, ; 991
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index (0x8)
		i32 33554461, ; uint32_t type_token_id (0x200001d)
		i32 45; uint32_t java_name_index (0x2d)
	}, ; 992
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index (0xa)
		i32 33554491, ; uint32_t type_token_id (0x200003b)
		i32 52; uint32_t java_name_index (0x34)
	}, ; 993
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555269, ; uint32_t type_token_id (0x2000345)
		i32 938; uint32_t java_name_index (0x3aa)
	}, ; 994
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555223, ; uint32_t type_token_id (0x2000317)
		i32 601; uint32_t java_name_index (0x259)
	}, ; 995
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33555103, ; uint32_t type_token_id (0x200029f)
		i32 132; uint32_t java_name_index (0x84)
	}, ; 996
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555189, ; uint32_t type_token_id (0x20002f5)
		i32 568; uint32_t java_name_index (0x238)
	}, ; 997
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 33554587, ; uint32_t type_token_id (0x200009b)
		i32 238; uint32_t java_name_index (0xee)
	}, ; 998
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 239; uint32_t java_name_index (0xef)
	}, ; 999
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 504; uint32_t java_name_index (0x1f8)
	}, ; 1000
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index (0x1d)
		i32 33554530, ; uint32_t type_token_id (0x2000062)
		i32 874; uint32_t java_name_index (0x36a)
	}, ; 1001
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554813, ; uint32_t type_token_id (0x200017d)
		i32 403; uint32_t java_name_index (0x193)
	}, ; 1002
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554569, ; uint32_t type_token_id (0x2000089)
		i32 809; uint32_t java_name_index (0x329)
	}, ; 1003
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555163, ; uint32_t type_token_id (0x20002db)
		i32 564; uint32_t java_name_index (0x234)
	}, ; 1004
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 535; uint32_t java_name_index (0x217)
	}, ; 1005
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 430; uint32_t java_name_index (0x1ae)
	}, ; 1006
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 486; uint32_t java_name_index (0x1e6)
	}, ; 1007
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index (0x1b)
		i32 33554437, ; uint32_t type_token_id (0x2000005)
		i32 850; uint32_t java_name_index (0x352)
	}, ; 1008
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 484; uint32_t java_name_index (0x1e4)
	}, ; 1009
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33554798, ; uint32_t type_token_id (0x200016e)
		i32 394; uint32_t java_name_index (0x18a)
	}, ; 1010
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554766, ; uint32_t type_token_id (0x200014e)
		i32 153; uint32_t java_name_index (0x99)
	}, ; 1011
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index (0x18)
		i32 33554478, ; uint32_t type_token_id (0x200002e)
		i32 832; uint32_t java_name_index (0x340)
	}, ; 1012
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 33555216, ; uint32_t type_token_id (0x2000310)
		i32 594; uint32_t java_name_index (0x252)
	}, ; 1013
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index (0xe)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 184; uint32_t java_name_index (0xb8)
	}, ; 1014
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554572, ; uint32_t type_token_id (0x200008c)
		i32 810; uint32_t java_name_index (0x32a)
	}, ; 1015
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index (0x23)
		i32 33555225, ; uint32_t type_token_id (0x2000319)
		i32 925; uint32_t java_name_index (0x39d)
	}, ; 1016
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 714; uint32_t java_name_index (0x2ca)
	}, ; 1017
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index (0x15)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 318; uint32_t java_name_index (0x13e)
	}, ; 1018
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index (0xd)
		i32 33554701, ; uint32_t type_token_id (0x200010d)
		i32 121; uint32_t java_name_index (0x79)
	}, ; 1019
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index (0x16)
		i32 33554578, ; uint32_t type_token_id (0x2000092)
		i32 816; uint32_t java_name_index (0x330)
	}, ; 1020
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index (0x11)
		i32 0, ; uint32_t type_token_id (0x0)
		i32 240; uint32_t java_name_index (0xf0)
	} ; 1021
], align 4

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [1022 x ptr] [
	ptr @.str.0, ; 0
	ptr @.str.1, ; 1
	ptr @.str.2, ; 2
	ptr @.str.3, ; 3
	ptr @.str.4, ; 4
	ptr @.str.5, ; 5
	ptr @.str.6, ; 6
	ptr @.str.7, ; 7
	ptr @.str.8, ; 8
	ptr @.str.9, ; 9
	ptr @.str.10, ; 10
	ptr @.str.11, ; 11
	ptr @.str.12, ; 12
	ptr @.str.13, ; 13
	ptr @.str.14, ; 14
	ptr @.str.15, ; 15
	ptr @.str.16, ; 16
	ptr @.str.17, ; 17
	ptr @.str.18, ; 18
	ptr @.str.19, ; 19
	ptr @.str.20, ; 20
	ptr @.str.21, ; 21
	ptr @.str.22, ; 22
	ptr @.str.23, ; 23
	ptr @.str.24, ; 24
	ptr @.str.25, ; 25
	ptr @.str.26, ; 26
	ptr @.str.27, ; 27
	ptr @.str.28, ; 28
	ptr @.str.29, ; 29
	ptr @.str.30, ; 30
	ptr @.str.31, ; 31
	ptr @.str.32, ; 32
	ptr @.str.33, ; 33
	ptr @.str.34, ; 34
	ptr @.str.35, ; 35
	ptr @.str.36, ; 36
	ptr @.str.37, ; 37
	ptr @.str.38, ; 38
	ptr @.str.39, ; 39
	ptr @.str.40, ; 40
	ptr @.str.41, ; 41
	ptr @.str.42, ; 42
	ptr @.str.43, ; 43
	ptr @.str.44, ; 44
	ptr @.str.45, ; 45
	ptr @.str.46, ; 46
	ptr @.str.47, ; 47
	ptr @.str.48, ; 48
	ptr @.str.49, ; 49
	ptr @.str.50, ; 50
	ptr @.str.51, ; 51
	ptr @.str.52, ; 52
	ptr @.str.53, ; 53
	ptr @.str.54, ; 54
	ptr @.str.55, ; 55
	ptr @.str.56, ; 56
	ptr @.str.57, ; 57
	ptr @.str.58, ; 58
	ptr @.str.59, ; 59
	ptr @.str.60, ; 60
	ptr @.str.61, ; 61
	ptr @.str.62, ; 62
	ptr @.str.63, ; 63
	ptr @.str.64, ; 64
	ptr @.str.65, ; 65
	ptr @.str.66, ; 66
	ptr @.str.67, ; 67
	ptr @.str.68, ; 68
	ptr @.str.69, ; 69
	ptr @.str.70, ; 70
	ptr @.str.71, ; 71
	ptr @.str.72, ; 72
	ptr @.str.73, ; 73
	ptr @.str.74, ; 74
	ptr @.str.75, ; 75
	ptr @.str.76, ; 76
	ptr @.str.77, ; 77
	ptr @.str.78, ; 78
	ptr @.str.79, ; 79
	ptr @.str.80, ; 80
	ptr @.str.81, ; 81
	ptr @.str.82, ; 82
	ptr @.str.83, ; 83
	ptr @.str.84, ; 84
	ptr @.str.85, ; 85
	ptr @.str.86, ; 86
	ptr @.str.87, ; 87
	ptr @.str.88, ; 88
	ptr @.str.89, ; 89
	ptr @.str.90, ; 90
	ptr @.str.91, ; 91
	ptr @.str.92, ; 92
	ptr @.str.93, ; 93
	ptr @.str.94, ; 94
	ptr @.str.95, ; 95
	ptr @.str.96, ; 96
	ptr @.str.97, ; 97
	ptr @.str.98, ; 98
	ptr @.str.99, ; 99
	ptr @.str.100, ; 100
	ptr @.str.101, ; 101
	ptr @.str.102, ; 102
	ptr @.str.103, ; 103
	ptr @.str.104, ; 104
	ptr @.str.105, ; 105
	ptr @.str.106, ; 106
	ptr @.str.107, ; 107
	ptr @.str.108, ; 108
	ptr @.str.109, ; 109
	ptr @.str.110, ; 110
	ptr @.str.111, ; 111
	ptr @.str.112, ; 112
	ptr @.str.113, ; 113
	ptr @.str.114, ; 114
	ptr @.str.115, ; 115
	ptr @.str.116, ; 116
	ptr @.str.117, ; 117
	ptr @.str.118, ; 118
	ptr @.str.119, ; 119
	ptr @.str.120, ; 120
	ptr @.str.121, ; 121
	ptr @.str.122, ; 122
	ptr @.str.123, ; 123
	ptr @.str.124, ; 124
	ptr @.str.125, ; 125
	ptr @.str.126, ; 126
	ptr @.str.127, ; 127
	ptr @.str.128, ; 128
	ptr @.str.129, ; 129
	ptr @.str.130, ; 130
	ptr @.str.131, ; 131
	ptr @.str.132, ; 132
	ptr @.str.133, ; 133
	ptr @.str.134, ; 134
	ptr @.str.135, ; 135
	ptr @.str.136, ; 136
	ptr @.str.137, ; 137
	ptr @.str.138, ; 138
	ptr @.str.139, ; 139
	ptr @.str.140, ; 140
	ptr @.str.141, ; 141
	ptr @.str.142, ; 142
	ptr @.str.143, ; 143
	ptr @.str.144, ; 144
	ptr @.str.145, ; 145
	ptr @.str.146, ; 146
	ptr @.str.147, ; 147
	ptr @.str.148, ; 148
	ptr @.str.149, ; 149
	ptr @.str.150, ; 150
	ptr @.str.151, ; 151
	ptr @.str.152, ; 152
	ptr @.str.153, ; 153
	ptr @.str.154, ; 154
	ptr @.str.155, ; 155
	ptr @.str.156, ; 156
	ptr @.str.157, ; 157
	ptr @.str.158, ; 158
	ptr @.str.159, ; 159
	ptr @.str.160, ; 160
	ptr @.str.161, ; 161
	ptr @.str.162, ; 162
	ptr @.str.163, ; 163
	ptr @.str.164, ; 164
	ptr @.str.165, ; 165
	ptr @.str.166, ; 166
	ptr @.str.167, ; 167
	ptr @.str.168, ; 168
	ptr @.str.169, ; 169
	ptr @.str.170, ; 170
	ptr @.str.171, ; 171
	ptr @.str.172, ; 172
	ptr @.str.173, ; 173
	ptr @.str.174, ; 174
	ptr @.str.175, ; 175
	ptr @.str.176, ; 176
	ptr @.str.177, ; 177
	ptr @.str.178, ; 178
	ptr @.str.179, ; 179
	ptr @.str.180, ; 180
	ptr @.str.181, ; 181
	ptr @.str.182, ; 182
	ptr @.str.183, ; 183
	ptr @.str.184, ; 184
	ptr @.str.185, ; 185
	ptr @.str.186, ; 186
	ptr @.str.187, ; 187
	ptr @.str.188, ; 188
	ptr @.str.189, ; 189
	ptr @.str.190, ; 190
	ptr @.str.191, ; 191
	ptr @.str.192, ; 192
	ptr @.str.193, ; 193
	ptr @.str.194, ; 194
	ptr @.str.195, ; 195
	ptr @.str.196, ; 196
	ptr @.str.197, ; 197
	ptr @.str.198, ; 198
	ptr @.str.199, ; 199
	ptr @.str.200, ; 200
	ptr @.str.201, ; 201
	ptr @.str.202, ; 202
	ptr @.str.203, ; 203
	ptr @.str.204, ; 204
	ptr @.str.205, ; 205
	ptr @.str.206, ; 206
	ptr @.str.207, ; 207
	ptr @.str.208, ; 208
	ptr @.str.209, ; 209
	ptr @.str.210, ; 210
	ptr @.str.211, ; 211
	ptr @.str.212, ; 212
	ptr @.str.213, ; 213
	ptr @.str.214, ; 214
	ptr @.str.215, ; 215
	ptr @.str.216, ; 216
	ptr @.str.217, ; 217
	ptr @.str.218, ; 218
	ptr @.str.219, ; 219
	ptr @.str.220, ; 220
	ptr @.str.221, ; 221
	ptr @.str.222, ; 222
	ptr @.str.223, ; 223
	ptr @.str.224, ; 224
	ptr @.str.225, ; 225
	ptr @.str.226, ; 226
	ptr @.str.227, ; 227
	ptr @.str.228, ; 228
	ptr @.str.229, ; 229
	ptr @.str.230, ; 230
	ptr @.str.231, ; 231
	ptr @.str.232, ; 232
	ptr @.str.233, ; 233
	ptr @.str.234, ; 234
	ptr @.str.235, ; 235
	ptr @.str.236, ; 236
	ptr @.str.237, ; 237
	ptr @.str.238, ; 238
	ptr @.str.239, ; 239
	ptr @.str.240, ; 240
	ptr @.str.241, ; 241
	ptr @.str.242, ; 242
	ptr @.str.243, ; 243
	ptr @.str.244, ; 244
	ptr @.str.245, ; 245
	ptr @.str.246, ; 246
	ptr @.str.247, ; 247
	ptr @.str.248, ; 248
	ptr @.str.249, ; 249
	ptr @.str.250, ; 250
	ptr @.str.251, ; 251
	ptr @.str.252, ; 252
	ptr @.str.253, ; 253
	ptr @.str.254, ; 254
	ptr @.str.255, ; 255
	ptr @.str.256, ; 256
	ptr @.str.257, ; 257
	ptr @.str.258, ; 258
	ptr @.str.259, ; 259
	ptr @.str.260, ; 260
	ptr @.str.261, ; 261
	ptr @.str.262, ; 262
	ptr @.str.263, ; 263
	ptr @.str.264, ; 264
	ptr @.str.265, ; 265
	ptr @.str.266, ; 266
	ptr @.str.267, ; 267
	ptr @.str.268, ; 268
	ptr @.str.269, ; 269
	ptr @.str.270, ; 270
	ptr @.str.271, ; 271
	ptr @.str.272, ; 272
	ptr @.str.273, ; 273
	ptr @.str.274, ; 274
	ptr @.str.275, ; 275
	ptr @.str.276, ; 276
	ptr @.str.277, ; 277
	ptr @.str.278, ; 278
	ptr @.str.279, ; 279
	ptr @.str.280, ; 280
	ptr @.str.281, ; 281
	ptr @.str.282, ; 282
	ptr @.str.283, ; 283
	ptr @.str.284, ; 284
	ptr @.str.285, ; 285
	ptr @.str.286, ; 286
	ptr @.str.287, ; 287
	ptr @.str.288, ; 288
	ptr @.str.289, ; 289
	ptr @.str.290, ; 290
	ptr @.str.291, ; 291
	ptr @.str.292, ; 292
	ptr @.str.293, ; 293
	ptr @.str.294, ; 294
	ptr @.str.295, ; 295
	ptr @.str.296, ; 296
	ptr @.str.297, ; 297
	ptr @.str.298, ; 298
	ptr @.str.299, ; 299
	ptr @.str.300, ; 300
	ptr @.str.301, ; 301
	ptr @.str.302, ; 302
	ptr @.str.303, ; 303
	ptr @.str.304, ; 304
	ptr @.str.305, ; 305
	ptr @.str.306, ; 306
	ptr @.str.307, ; 307
	ptr @.str.308, ; 308
	ptr @.str.309, ; 309
	ptr @.str.310, ; 310
	ptr @.str.311, ; 311
	ptr @.str.312, ; 312
	ptr @.str.313, ; 313
	ptr @.str.314, ; 314
	ptr @.str.315, ; 315
	ptr @.str.316, ; 316
	ptr @.str.317, ; 317
	ptr @.str.318, ; 318
	ptr @.str.319, ; 319
	ptr @.str.320, ; 320
	ptr @.str.321, ; 321
	ptr @.str.322, ; 322
	ptr @.str.323, ; 323
	ptr @.str.324, ; 324
	ptr @.str.325, ; 325
	ptr @.str.326, ; 326
	ptr @.str.327, ; 327
	ptr @.str.328, ; 328
	ptr @.str.329, ; 329
	ptr @.str.330, ; 330
	ptr @.str.331, ; 331
	ptr @.str.332, ; 332
	ptr @.str.333, ; 333
	ptr @.str.334, ; 334
	ptr @.str.335, ; 335
	ptr @.str.336, ; 336
	ptr @.str.337, ; 337
	ptr @.str.338, ; 338
	ptr @.str.339, ; 339
	ptr @.str.340, ; 340
	ptr @.str.341, ; 341
	ptr @.str.342, ; 342
	ptr @.str.343, ; 343
	ptr @.str.344, ; 344
	ptr @.str.345, ; 345
	ptr @.str.346, ; 346
	ptr @.str.347, ; 347
	ptr @.str.348, ; 348
	ptr @.str.349, ; 349
	ptr @.str.350, ; 350
	ptr @.str.351, ; 351
	ptr @.str.352, ; 352
	ptr @.str.353, ; 353
	ptr @.str.354, ; 354
	ptr @.str.355, ; 355
	ptr @.str.356, ; 356
	ptr @.str.357, ; 357
	ptr @.str.358, ; 358
	ptr @.str.359, ; 359
	ptr @.str.360, ; 360
	ptr @.str.361, ; 361
	ptr @.str.362, ; 362
	ptr @.str.363, ; 363
	ptr @.str.364, ; 364
	ptr @.str.365, ; 365
	ptr @.str.366, ; 366
	ptr @.str.367, ; 367
	ptr @.str.368, ; 368
	ptr @.str.369, ; 369
	ptr @.str.370, ; 370
	ptr @.str.371, ; 371
	ptr @.str.372, ; 372
	ptr @.str.373, ; 373
	ptr @.str.374, ; 374
	ptr @.str.375, ; 375
	ptr @.str.376, ; 376
	ptr @.str.377, ; 377
	ptr @.str.378, ; 378
	ptr @.str.379, ; 379
	ptr @.str.380, ; 380
	ptr @.str.381, ; 381
	ptr @.str.382, ; 382
	ptr @.str.383, ; 383
	ptr @.str.384, ; 384
	ptr @.str.385, ; 385
	ptr @.str.386, ; 386
	ptr @.str.387, ; 387
	ptr @.str.388, ; 388
	ptr @.str.389, ; 389
	ptr @.str.390, ; 390
	ptr @.str.391, ; 391
	ptr @.str.392, ; 392
	ptr @.str.393, ; 393
	ptr @.str.394, ; 394
	ptr @.str.395, ; 395
	ptr @.str.396, ; 396
	ptr @.str.397, ; 397
	ptr @.str.398, ; 398
	ptr @.str.399, ; 399
	ptr @.str.400, ; 400
	ptr @.str.401, ; 401
	ptr @.str.402, ; 402
	ptr @.str.403, ; 403
	ptr @.str.404, ; 404
	ptr @.str.405, ; 405
	ptr @.str.406, ; 406
	ptr @.str.407, ; 407
	ptr @.str.408, ; 408
	ptr @.str.409, ; 409
	ptr @.str.410, ; 410
	ptr @.str.411, ; 411
	ptr @.str.412, ; 412
	ptr @.str.413, ; 413
	ptr @.str.414, ; 414
	ptr @.str.415, ; 415
	ptr @.str.416, ; 416
	ptr @.str.417, ; 417
	ptr @.str.418, ; 418
	ptr @.str.419, ; 419
	ptr @.str.420, ; 420
	ptr @.str.421, ; 421
	ptr @.str.422, ; 422
	ptr @.str.423, ; 423
	ptr @.str.424, ; 424
	ptr @.str.425, ; 425
	ptr @.str.426, ; 426
	ptr @.str.427, ; 427
	ptr @.str.428, ; 428
	ptr @.str.429, ; 429
	ptr @.str.430, ; 430
	ptr @.str.431, ; 431
	ptr @.str.432, ; 432
	ptr @.str.433, ; 433
	ptr @.str.434, ; 434
	ptr @.str.435, ; 435
	ptr @.str.436, ; 436
	ptr @.str.437, ; 437
	ptr @.str.438, ; 438
	ptr @.str.439, ; 439
	ptr @.str.440, ; 440
	ptr @.str.441, ; 441
	ptr @.str.442, ; 442
	ptr @.str.443, ; 443
	ptr @.str.444, ; 444
	ptr @.str.445, ; 445
	ptr @.str.446, ; 446
	ptr @.str.447, ; 447
	ptr @.str.448, ; 448
	ptr @.str.449, ; 449
	ptr @.str.450, ; 450
	ptr @.str.451, ; 451
	ptr @.str.452, ; 452
	ptr @.str.453, ; 453
	ptr @.str.454, ; 454
	ptr @.str.455, ; 455
	ptr @.str.456, ; 456
	ptr @.str.457, ; 457
	ptr @.str.458, ; 458
	ptr @.str.459, ; 459
	ptr @.str.460, ; 460
	ptr @.str.461, ; 461
	ptr @.str.462, ; 462
	ptr @.str.463, ; 463
	ptr @.str.464, ; 464
	ptr @.str.465, ; 465
	ptr @.str.466, ; 466
	ptr @.str.467, ; 467
	ptr @.str.468, ; 468
	ptr @.str.469, ; 469
	ptr @.str.470, ; 470
	ptr @.str.471, ; 471
	ptr @.str.472, ; 472
	ptr @.str.473, ; 473
	ptr @.str.474, ; 474
	ptr @.str.475, ; 475
	ptr @.str.476, ; 476
	ptr @.str.477, ; 477
	ptr @.str.478, ; 478
	ptr @.str.479, ; 479
	ptr @.str.480, ; 480
	ptr @.str.481, ; 481
	ptr @.str.482, ; 482
	ptr @.str.483, ; 483
	ptr @.str.484, ; 484
	ptr @.str.485, ; 485
	ptr @.str.486, ; 486
	ptr @.str.487, ; 487
	ptr @.str.488, ; 488
	ptr @.str.489, ; 489
	ptr @.str.490, ; 490
	ptr @.str.491, ; 491
	ptr @.str.492, ; 492
	ptr @.str.493, ; 493
	ptr @.str.494, ; 494
	ptr @.str.495, ; 495
	ptr @.str.496, ; 496
	ptr @.str.497, ; 497
	ptr @.str.498, ; 498
	ptr @.str.499, ; 499
	ptr @.str.500, ; 500
	ptr @.str.501, ; 501
	ptr @.str.502, ; 502
	ptr @.str.503, ; 503
	ptr @.str.504, ; 504
	ptr @.str.505, ; 505
	ptr @.str.506, ; 506
	ptr @.str.507, ; 507
	ptr @.str.508, ; 508
	ptr @.str.509, ; 509
	ptr @.str.510, ; 510
	ptr @.str.511, ; 511
	ptr @.str.512, ; 512
	ptr @.str.513, ; 513
	ptr @.str.514, ; 514
	ptr @.str.515, ; 515
	ptr @.str.516, ; 516
	ptr @.str.517, ; 517
	ptr @.str.518, ; 518
	ptr @.str.519, ; 519
	ptr @.str.520, ; 520
	ptr @.str.521, ; 521
	ptr @.str.522, ; 522
	ptr @.str.523, ; 523
	ptr @.str.524, ; 524
	ptr @.str.525, ; 525
	ptr @.str.526, ; 526
	ptr @.str.527, ; 527
	ptr @.str.528, ; 528
	ptr @.str.529, ; 529
	ptr @.str.530, ; 530
	ptr @.str.531, ; 531
	ptr @.str.532, ; 532
	ptr @.str.533, ; 533
	ptr @.str.534, ; 534
	ptr @.str.535, ; 535
	ptr @.str.536, ; 536
	ptr @.str.537, ; 537
	ptr @.str.538, ; 538
	ptr @.str.539, ; 539
	ptr @.str.540, ; 540
	ptr @.str.541, ; 541
	ptr @.str.542, ; 542
	ptr @.str.543, ; 543
	ptr @.str.544, ; 544
	ptr @.str.545, ; 545
	ptr @.str.546, ; 546
	ptr @.str.547, ; 547
	ptr @.str.548, ; 548
	ptr @.str.549, ; 549
	ptr @.str.550, ; 550
	ptr @.str.551, ; 551
	ptr @.str.552, ; 552
	ptr @.str.553, ; 553
	ptr @.str.554, ; 554
	ptr @.str.555, ; 555
	ptr @.str.556, ; 556
	ptr @.str.557, ; 557
	ptr @.str.558, ; 558
	ptr @.str.559, ; 559
	ptr @.str.560, ; 560
	ptr @.str.561, ; 561
	ptr @.str.562, ; 562
	ptr @.str.563, ; 563
	ptr @.str.564, ; 564
	ptr @.str.565, ; 565
	ptr @.str.566, ; 566
	ptr @.str.567, ; 567
	ptr @.str.568, ; 568
	ptr @.str.569, ; 569
	ptr @.str.570, ; 570
	ptr @.str.571, ; 571
	ptr @.str.572, ; 572
	ptr @.str.573, ; 573
	ptr @.str.574, ; 574
	ptr @.str.575, ; 575
	ptr @.str.576, ; 576
	ptr @.str.577, ; 577
	ptr @.str.578, ; 578
	ptr @.str.579, ; 579
	ptr @.str.580, ; 580
	ptr @.str.581, ; 581
	ptr @.str.582, ; 582
	ptr @.str.583, ; 583
	ptr @.str.584, ; 584
	ptr @.str.585, ; 585
	ptr @.str.586, ; 586
	ptr @.str.587, ; 587
	ptr @.str.588, ; 588
	ptr @.str.589, ; 589
	ptr @.str.590, ; 590
	ptr @.str.591, ; 591
	ptr @.str.592, ; 592
	ptr @.str.593, ; 593
	ptr @.str.594, ; 594
	ptr @.str.595, ; 595
	ptr @.str.596, ; 596
	ptr @.str.597, ; 597
	ptr @.str.598, ; 598
	ptr @.str.599, ; 599
	ptr @.str.600, ; 600
	ptr @.str.601, ; 601
	ptr @.str.602, ; 602
	ptr @.str.603, ; 603
	ptr @.str.604, ; 604
	ptr @.str.605, ; 605
	ptr @.str.606, ; 606
	ptr @.str.607, ; 607
	ptr @.str.608, ; 608
	ptr @.str.609, ; 609
	ptr @.str.610, ; 610
	ptr @.str.611, ; 611
	ptr @.str.612, ; 612
	ptr @.str.613, ; 613
	ptr @.str.614, ; 614
	ptr @.str.615, ; 615
	ptr @.str.616, ; 616
	ptr @.str.617, ; 617
	ptr @.str.618, ; 618
	ptr @.str.619, ; 619
	ptr @.str.620, ; 620
	ptr @.str.621, ; 621
	ptr @.str.622, ; 622
	ptr @.str.623, ; 623
	ptr @.str.624, ; 624
	ptr @.str.625, ; 625
	ptr @.str.626, ; 626
	ptr @.str.627, ; 627
	ptr @.str.628, ; 628
	ptr @.str.629, ; 629
	ptr @.str.630, ; 630
	ptr @.str.631, ; 631
	ptr @.str.632, ; 632
	ptr @.str.633, ; 633
	ptr @.str.634, ; 634
	ptr @.str.635, ; 635
	ptr @.str.636, ; 636
	ptr @.str.637, ; 637
	ptr @.str.638, ; 638
	ptr @.str.639, ; 639
	ptr @.str.640, ; 640
	ptr @.str.641, ; 641
	ptr @.str.642, ; 642
	ptr @.str.643, ; 643
	ptr @.str.644, ; 644
	ptr @.str.645, ; 645
	ptr @.str.646, ; 646
	ptr @.str.647, ; 647
	ptr @.str.648, ; 648
	ptr @.str.649, ; 649
	ptr @.str.650, ; 650
	ptr @.str.651, ; 651
	ptr @.str.652, ; 652
	ptr @.str.653, ; 653
	ptr @.str.654, ; 654
	ptr @.str.655, ; 655
	ptr @.str.656, ; 656
	ptr @.str.657, ; 657
	ptr @.str.658, ; 658
	ptr @.str.659, ; 659
	ptr @.str.660, ; 660
	ptr @.str.661, ; 661
	ptr @.str.662, ; 662
	ptr @.str.663, ; 663
	ptr @.str.664, ; 664
	ptr @.str.665, ; 665
	ptr @.str.666, ; 666
	ptr @.str.667, ; 667
	ptr @.str.668, ; 668
	ptr @.str.669, ; 669
	ptr @.str.670, ; 670
	ptr @.str.671, ; 671
	ptr @.str.672, ; 672
	ptr @.str.673, ; 673
	ptr @.str.674, ; 674
	ptr @.str.675, ; 675
	ptr @.str.676, ; 676
	ptr @.str.677, ; 677
	ptr @.str.678, ; 678
	ptr @.str.679, ; 679
	ptr @.str.680, ; 680
	ptr @.str.681, ; 681
	ptr @.str.682, ; 682
	ptr @.str.683, ; 683
	ptr @.str.684, ; 684
	ptr @.str.685, ; 685
	ptr @.str.686, ; 686
	ptr @.str.687, ; 687
	ptr @.str.688, ; 688
	ptr @.str.689, ; 689
	ptr @.str.690, ; 690
	ptr @.str.691, ; 691
	ptr @.str.692, ; 692
	ptr @.str.693, ; 693
	ptr @.str.694, ; 694
	ptr @.str.695, ; 695
	ptr @.str.696, ; 696
	ptr @.str.697, ; 697
	ptr @.str.698, ; 698
	ptr @.str.699, ; 699
	ptr @.str.700, ; 700
	ptr @.str.701, ; 701
	ptr @.str.702, ; 702
	ptr @.str.703, ; 703
	ptr @.str.704, ; 704
	ptr @.str.705, ; 705
	ptr @.str.706, ; 706
	ptr @.str.707, ; 707
	ptr @.str.708, ; 708
	ptr @.str.709, ; 709
	ptr @.str.710, ; 710
	ptr @.str.711, ; 711
	ptr @.str.712, ; 712
	ptr @.str.713, ; 713
	ptr @.str.714, ; 714
	ptr @.str.715, ; 715
	ptr @.str.716, ; 716
	ptr @.str.717, ; 717
	ptr @.str.718, ; 718
	ptr @.str.719, ; 719
	ptr @.str.720, ; 720
	ptr @.str.721, ; 721
	ptr @.str.722, ; 722
	ptr @.str.723, ; 723
	ptr @.str.724, ; 724
	ptr @.str.725, ; 725
	ptr @.str.726, ; 726
	ptr @.str.727, ; 727
	ptr @.str.728, ; 728
	ptr @.str.729, ; 729
	ptr @.str.730, ; 730
	ptr @.str.731, ; 731
	ptr @.str.732, ; 732
	ptr @.str.733, ; 733
	ptr @.str.734, ; 734
	ptr @.str.735, ; 735
	ptr @.str.736, ; 736
	ptr @.str.737, ; 737
	ptr @.str.738, ; 738
	ptr @.str.739, ; 739
	ptr @.str.740, ; 740
	ptr @.str.741, ; 741
	ptr @.str.742, ; 742
	ptr @.str.743, ; 743
	ptr @.str.744, ; 744
	ptr @.str.745, ; 745
	ptr @.str.746, ; 746
	ptr @.str.747, ; 747
	ptr @.str.748, ; 748
	ptr @.str.749, ; 749
	ptr @.str.750, ; 750
	ptr @.str.751, ; 751
	ptr @.str.752, ; 752
	ptr @.str.753, ; 753
	ptr @.str.754, ; 754
	ptr @.str.755, ; 755
	ptr @.str.756, ; 756
	ptr @.str.757, ; 757
	ptr @.str.758, ; 758
	ptr @.str.759, ; 759
	ptr @.str.760, ; 760
	ptr @.str.761, ; 761
	ptr @.str.762, ; 762
	ptr @.str.763, ; 763
	ptr @.str.764, ; 764
	ptr @.str.765, ; 765
	ptr @.str.766, ; 766
	ptr @.str.767, ; 767
	ptr @.str.768, ; 768
	ptr @.str.769, ; 769
	ptr @.str.770, ; 770
	ptr @.str.771, ; 771
	ptr @.str.772, ; 772
	ptr @.str.773, ; 773
	ptr @.str.774, ; 774
	ptr @.str.775, ; 775
	ptr @.str.776, ; 776
	ptr @.str.777, ; 777
	ptr @.str.778, ; 778
	ptr @.str.779, ; 779
	ptr @.str.780, ; 780
	ptr @.str.781, ; 781
	ptr @.str.782, ; 782
	ptr @.str.783, ; 783
	ptr @.str.784, ; 784
	ptr @.str.785, ; 785
	ptr @.str.786, ; 786
	ptr @.str.787, ; 787
	ptr @.str.788, ; 788
	ptr @.str.789, ; 789
	ptr @.str.790, ; 790
	ptr @.str.791, ; 791
	ptr @.str.792, ; 792
	ptr @.str.793, ; 793
	ptr @.str.794, ; 794
	ptr @.str.795, ; 795
	ptr @.str.796, ; 796
	ptr @.str.797, ; 797
	ptr @.str.798, ; 798
	ptr @.str.799, ; 799
	ptr @.str.800, ; 800
	ptr @.str.801, ; 801
	ptr @.str.802, ; 802
	ptr @.str.803, ; 803
	ptr @.str.804, ; 804
	ptr @.str.805, ; 805
	ptr @.str.806, ; 806
	ptr @.str.807, ; 807
	ptr @.str.808, ; 808
	ptr @.str.809, ; 809
	ptr @.str.810, ; 810
	ptr @.str.811, ; 811
	ptr @.str.812, ; 812
	ptr @.str.813, ; 813
	ptr @.str.814, ; 814
	ptr @.str.815, ; 815
	ptr @.str.816, ; 816
	ptr @.str.817, ; 817
	ptr @.str.818, ; 818
	ptr @.str.819, ; 819
	ptr @.str.820, ; 820
	ptr @.str.821, ; 821
	ptr @.str.822, ; 822
	ptr @.str.823, ; 823
	ptr @.str.824, ; 824
	ptr @.str.825, ; 825
	ptr @.str.826, ; 826
	ptr @.str.827, ; 827
	ptr @.str.828, ; 828
	ptr @.str.829, ; 829
	ptr @.str.830, ; 830
	ptr @.str.831, ; 831
	ptr @.str.832, ; 832
	ptr @.str.833, ; 833
	ptr @.str.834, ; 834
	ptr @.str.835, ; 835
	ptr @.str.836, ; 836
	ptr @.str.837, ; 837
	ptr @.str.838, ; 838
	ptr @.str.839, ; 839
	ptr @.str.840, ; 840
	ptr @.str.841, ; 841
	ptr @.str.842, ; 842
	ptr @.str.843, ; 843
	ptr @.str.844, ; 844
	ptr @.str.845, ; 845
	ptr @.str.846, ; 846
	ptr @.str.847, ; 847
	ptr @.str.848, ; 848
	ptr @.str.849, ; 849
	ptr @.str.850, ; 850
	ptr @.str.851, ; 851
	ptr @.str.852, ; 852
	ptr @.str.853, ; 853
	ptr @.str.854, ; 854
	ptr @.str.855, ; 855
	ptr @.str.856, ; 856
	ptr @.str.857, ; 857
	ptr @.str.858, ; 858
	ptr @.str.859, ; 859
	ptr @.str.860, ; 860
	ptr @.str.861, ; 861
	ptr @.str.862, ; 862
	ptr @.str.863, ; 863
	ptr @.str.864, ; 864
	ptr @.str.865, ; 865
	ptr @.str.866, ; 866
	ptr @.str.867, ; 867
	ptr @.str.868, ; 868
	ptr @.str.869, ; 869
	ptr @.str.870, ; 870
	ptr @.str.871, ; 871
	ptr @.str.872, ; 872
	ptr @.str.873, ; 873
	ptr @.str.874, ; 874
	ptr @.str.875, ; 875
	ptr @.str.876, ; 876
	ptr @.str.877, ; 877
	ptr @.str.878, ; 878
	ptr @.str.879, ; 879
	ptr @.str.880, ; 880
	ptr @.str.881, ; 881
	ptr @.str.882, ; 882
	ptr @.str.883, ; 883
	ptr @.str.884, ; 884
	ptr @.str.885, ; 885
	ptr @.str.886, ; 886
	ptr @.str.887, ; 887
	ptr @.str.888, ; 888
	ptr @.str.889, ; 889
	ptr @.str.890, ; 890
	ptr @.str.891, ; 891
	ptr @.str.892, ; 892
	ptr @.str.893, ; 893
	ptr @.str.894, ; 894
	ptr @.str.895, ; 895
	ptr @.str.896, ; 896
	ptr @.str.897, ; 897
	ptr @.str.898, ; 898
	ptr @.str.899, ; 899
	ptr @.str.900, ; 900
	ptr @.str.901, ; 901
	ptr @.str.902, ; 902
	ptr @.str.903, ; 903
	ptr @.str.904, ; 904
	ptr @.str.905, ; 905
	ptr @.str.906, ; 906
	ptr @.str.907, ; 907
	ptr @.str.908, ; 908
	ptr @.str.909, ; 909
	ptr @.str.910, ; 910
	ptr @.str.911, ; 911
	ptr @.str.912, ; 912
	ptr @.str.913, ; 913
	ptr @.str.914, ; 914
	ptr @.str.915, ; 915
	ptr @.str.916, ; 916
	ptr @.str.917, ; 917
	ptr @.str.918, ; 918
	ptr @.str.919, ; 919
	ptr @.str.920, ; 920
	ptr @.str.921, ; 921
	ptr @.str.922, ; 922
	ptr @.str.923, ; 923
	ptr @.str.924, ; 924
	ptr @.str.925, ; 925
	ptr @.str.926, ; 926
	ptr @.str.927, ; 927
	ptr @.str.928, ; 928
	ptr @.str.929, ; 929
	ptr @.str.930, ; 930
	ptr @.str.931, ; 931
	ptr @.str.932, ; 932
	ptr @.str.933, ; 933
	ptr @.str.934, ; 934
	ptr @.str.935, ; 935
	ptr @.str.936, ; 936
	ptr @.str.937, ; 937
	ptr @.str.938, ; 938
	ptr @.str.939, ; 939
	ptr @.str.940, ; 940
	ptr @.str.941, ; 941
	ptr @.str.942, ; 942
	ptr @.str.943, ; 943
	ptr @.str.944, ; 944
	ptr @.str.945, ; 945
	ptr @.str.946, ; 946
	ptr @.str.947, ; 947
	ptr @.str.948, ; 948
	ptr @.str.949, ; 949
	ptr @.str.950, ; 950
	ptr @.str.951, ; 951
	ptr @.str.952, ; 952
	ptr @.str.953, ; 953
	ptr @.str.954, ; 954
	ptr @.str.955, ; 955
	ptr @.str.956, ; 956
	ptr @.str.957, ; 957
	ptr @.str.958, ; 958
	ptr @.str.959, ; 959
	ptr @.str.960, ; 960
	ptr @.str.961, ; 961
	ptr @.str.962, ; 962
	ptr @.str.963, ; 963
	ptr @.str.964, ; 964
	ptr @.str.965, ; 965
	ptr @.str.966, ; 966
	ptr @.str.967, ; 967
	ptr @.str.968, ; 968
	ptr @.str.969, ; 969
	ptr @.str.970, ; 970
	ptr @.str.971, ; 971
	ptr @.str.972, ; 972
	ptr @.str.973, ; 973
	ptr @.str.974, ; 974
	ptr @.str.975, ; 975
	ptr @.str.976, ; 976
	ptr @.str.977, ; 977
	ptr @.str.978, ; 978
	ptr @.str.979, ; 979
	ptr @.str.980, ; 980
	ptr @.str.981, ; 981
	ptr @.str.982, ; 982
	ptr @.str.983, ; 983
	ptr @.str.984, ; 984
	ptr @.str.985, ; 985
	ptr @.str.986, ; 986
	ptr @.str.987, ; 987
	ptr @.str.988, ; 988
	ptr @.str.989, ; 989
	ptr @.str.990, ; 990
	ptr @.str.991, ; 991
	ptr @.str.992, ; 992
	ptr @.str.993, ; 993
	ptr @.str.994, ; 994
	ptr @.str.995, ; 995
	ptr @.str.996, ; 996
	ptr @.str.997, ; 997
	ptr @.str.998, ; 998
	ptr @.str.999, ; 999
	ptr @.str.1000, ; 1000
	ptr @.str.1001, ; 1001
	ptr @.str.1002, ; 1002
	ptr @.str.1003, ; 1003
	ptr @.str.1004, ; 1004
	ptr @.str.1005, ; 1005
	ptr @.str.1006, ; 1006
	ptr @.str.1007, ; 1007
	ptr @.str.1008, ; 1008
	ptr @.str.1009, ; 1009
	ptr @.str.1010, ; 1010
	ptr @.str.1011, ; 1011
	ptr @.str.1012, ; 1012
	ptr @.str.1013, ; 1013
	ptr @.str.1014, ; 1014
	ptr @.str.1015, ; 1015
	ptr @.str.1016, ; 1016
	ptr @.str.1017, ; 1017
	ptr @.str.1018, ; 1018
	ptr @.str.1019, ; 1019
	ptr @.str.1020, ; 1020
	ptr @.str.1021 ; 1021
], align 4

; Strings
@.str.0 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/Observer\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/LiveData\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/MutableLiveData\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"androidx/viewpager/widget/PagerAdapter\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"androidx/viewpager/widget/ViewPager\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"androidx/viewpager/widget/ViewPager$OnAdapterChangeListener\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"androidx/viewpager/widget/ViewPager$OnPageChangeListener\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"androidx/viewpager/widget/ViewPager$PageTransformer\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"kotlinx/coroutines/flow/Flow\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"kotlinx/coroutines/flow/FlowCollector\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"kotlinx/coroutines/flow/SharedFlow\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/flow/StateFlow\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"kotlin/Function\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"kotlin/sequences/Sequence\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"kotlin/jvm/internal/DefaultConstructorMarker\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function0\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function1\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function2\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"kotlin/coroutines/Continuation\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"kotlin/coroutines/CoroutineContext$Key\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"kotlin/coroutines/CoroutineContext\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"crc643f2b18b2570eaa5a/PlatformGraphicsView\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"androidx/loader/content/Loader\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCanceledListener\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCompleteListener\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"androidx/loader/app/LoaderManager\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"androidx/loader/app/LoaderManager$LoaderCallbacks\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"androidx/drawerlayout/widget/DrawerLayout\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"androidx/drawerlayout/widget/DrawerLayout$DrawerListener\00", align 1
@.str.31 = private unnamed_addr constant [73 x i8] c"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"androidx/drawerlayout/widget/DrawerLayout$LayoutParams\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"androidx/cursoradapter/widget/CursorAdapter\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"androidx/activity/ComponentActivity\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"androidx/activity/ComponentDialog\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"androidx/activity/FullyDrawnReporter\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"androidx/activity/OnBackPressedCallback\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"androidx/activity/OnBackPressedDispatcher\00", align 1
@.str.39 = private unnamed_addr constant [58 x i8] c"androidx/activity/contextaware/OnContextAvailableListener\00", align 1
@.str.40 = private unnamed_addr constant [74 x i8] c"mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultLauncher\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultRegistry\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultCallback\00", align 1
@.str.44 = private unnamed_addr constant [57 x i8] c"androidx/activity/result/contract/ActivityResultContract\00", align 1
@.str.45 = private unnamed_addr constant [75 x i8] c"androidx/activity/result/contract/ActivityResultContract$SynchronousResult\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/Lifecycle\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$Event\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$State\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/LifecycleObserver\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/LifecycleOwner\00", align 1
@.str.51 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/graphics/drawable/DrawerArrowDrawable\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/app/AlertDialog\00", align 1
@.str.53 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/app/AlertDialog$Builder\00", align 1
@.str.54 = private unnamed_addr constant [78 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor\00", align 1
@.str.55 = private unnamed_addr constant [79 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor\00", align 1
@.str.56 = private unnamed_addr constant [89 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"androidx/appcompat/app/ActionBar\00", align 1
@.str.58 = private unnamed_addr constant [46 x i8] c"androidx/appcompat/app/ActionBar$LayoutParams\00", align 1
@.str.59 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener\00", align 1
@.str.60 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor\00", align 1
@.str.61 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBar$OnNavigationListener\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/app/ActionBar$Tab\00", align 1
@.str.63 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBar$TabListener\00", align 1
@.str.64 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle\00", align 1
@.str.65 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle$Delegate\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatActivity\00", align 1
@.str.67 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatDelegate\00", align 1
@.str.68 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/app/AppCompatDialog\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatCallback\00", align 1
@.str.70 = private unnamed_addr constant [34 x i8] c"androidx/appcompat/widget/Toolbar\00", align 1
@.str.71 = private unnamed_addr constant [67 x i8] c"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher\00", align 1
@.str.72 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/Toolbar$LayoutParams\00", align 1
@.str.73 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener\00", align 1
@.str.74 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor\00", align 1
@.str.75 = private unnamed_addr constant [56 x i8] c"androidx/appcompat/widget/AppCompatAutoCompleteTextView\00", align 1
@.str.76 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/widget/AppCompatButton\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatCheckBox\00", align 1
@.str.78 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatEditText\00", align 1
@.str.79 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatImageButton\00", align 1
@.str.80 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/AppCompatImageView\00", align 1
@.str.81 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatRadioButton\00", align 1
@.str.82 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatTextView\00", align 1
@.str.83 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/DecorToolbar\00", align 1
@.str.84 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/LinearLayoutCompat\00", align 1
@.str.85 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/LinearLayoutCompat$LayoutParams\00", align 1
@.str.86 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView\00", align 1
@.str.87 = private unnamed_addr constant [75 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener\00", align 1
@.str.88 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/widget/SearchView\00", align 1
@.str.89 = private unnamed_addr constant [53 x i8] c"androidx/appcompat/widget/SearchView$OnCloseListener\00", align 1
@.str.90 = private unnamed_addr constant [69 x i8] c"mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor\00", align 1
@.str.91 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/widget/SearchView$OnQueryTextListener\00", align 1
@.str.92 = private unnamed_addr constant [73 x i8] c"mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor\00", align 1
@.str.93 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/SearchView$OnSuggestionListener\00", align 1
@.str.94 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor\00", align 1
@.str.95 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/SwitchCompat\00", align 1
@.str.96 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/widget/TintTypedArray\00", align 1
@.str.97 = private unnamed_addr constant [40 x i8] c"androidx/appcompat/widget/TooltipCompat\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/view/ActionMode\00", align 1
@.str.99 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/ActionMode$Callback\00", align 1
@.str.100 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/view/menu/MenuBuilder\00", align 1
@.str.101 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/view/menu/MenuBuilder$Callback\00", align 1
@.str.102 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/view/menu/MenuPresenter$Callback\00", align 1
@.str.103 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/view/menu/MenuPresenter\00", align 1
@.str.104 = private unnamed_addr constant [38 x i8] c"androidx/appcompat/view/menu/MenuView\00", align 1
@.str.105 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/view/menu/MenuItemImpl\00", align 1
@.str.106 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/menu/SubMenuBuilder\00", align 1
@.str.107 = private unnamed_addr constant [47 x i8] c"androidx/navigation/fragment/FragmentNavigator\00", align 1
@.str.108 = private unnamed_addr constant [59 x i8] c"androidx/navigation/fragment/FragmentNavigator$Destination\00", align 1
@.str.109 = private unnamed_addr constant [45 x i8] c"androidx/navigation/fragment/NavHostFragment\00", align 1
@.str.110 = private unnamed_addr constant [52 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout\00", align 1
@.str.111 = private unnamed_addr constant [61 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior\00", align 1
@.str.112 = private unnamed_addr constant [65 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams\00", align 1
@.str.113 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderResultCallback\00", align 1
@.str.114 = private unnamed_addr constant [42 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallback\00", align 1
@.str.115 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1\00", align 1
@.str.116 = private unnamed_addr constant [44 x i8] c"crc6488302ad6e9e4df1a/MauiAppCompatActivity\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"crc6488302ad6e9e4df1a/MauiApplication\00", align 1
@.str.118 = private unnamed_addr constant [65 x i8] c"crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks\00", align 1
@.str.119 = private unnamed_addr constant [31 x i8] c"com/microsoft/maui/BuildConfig\00", align 1
@.str.120 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/ImageLoaderCallback\00", align 1
@.str.121 = private unnamed_addr constant [33 x i8] c"com/microsoft/maui/MauiViewGroup\00", align 1
@.str.122 = private unnamed_addr constant [45 x i8] c"com/microsoft/maui/PlatformAppCompatTextView\00", align 1
@.str.123 = private unnamed_addr constant [44 x i8] c"com/microsoft/maui/PlatformContentViewGroup\00", align 1
@.str.124 = private unnamed_addr constant [36 x i8] c"com/microsoft/maui/PlatformFontSpan\00", align 1
@.str.125 = private unnamed_addr constant [35 x i8] c"com/microsoft/maui/PlatformInterop\00", align 1
@.str.126 = private unnamed_addr constant [42 x i8] c"com/microsoft/maui/PlatformLineHeightSpan\00", align 1
@.str.127 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/PlatformWrapperView\00", align 1
@.str.128 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper\00", align 1
@.str.129 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/BorderDrawable\00", align 1
@.str.130 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/ContainerView\00", align 1
@.str.131 = private unnamed_addr constant [39 x i8] c"crc6452ffdc5b34af3a0f/ContentViewGroup\00", align 1
@.str.132 = private unnamed_addr constant [58 x i8] c"crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks\00", align 1
@.str.133 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/LayoutViewGroup\00", align 1
@.str.134 = private unnamed_addr constant [49 x i8] c"crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener\00", align 1
@.str.135 = private unnamed_addr constant [54 x i8] c"crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat\00", align 1
@.str.136 = private unnamed_addr constant [44 x i8] c"crc6452ffdc5b34af3a0f/MauiAppCompatEditText\00", align 1
@.str.137 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiBoxView\00", align 1
@.str.138 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiDatePicker\00", align 1
@.str.139 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiLayerDrawable\00", align 1
@.str.140 = private unnamed_addr constant [41 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton\00", align 1
@.str.141 = private unnamed_addr constant [63 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable\00", align 1
@.str.142 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl\00", align 1
@.str.143 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener\00", align 1
@.str.144 = private unnamed_addr constant [33 x i8] c"crc6452ffdc5b34af3a0f/MauiPicker\00", align 1
@.str.145 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiPickerBase\00", align 1
@.str.146 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiScrollView\00", align 1
@.str.147 = private unnamed_addr constant [47 x i8] c"crc6452ffdc5b34af3a0f/MauiHorizontalScrollView\00", align 1
@.str.148 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiSearchView\00", align 1
@.str.149 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiShapeView\00", align 1
@.str.150 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiStepper\00", align 1
@.str.151 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout\00", align 1
@.str.152 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeView\00", align 1
@.str.153 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/MauiTextView\00", align 1
@.str.154 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiTimePicker\00", align 1
@.str.155 = private unnamed_addr constant [42 x i8] c"crc6452ffdc5b34af3a0f/MauiWebChromeClient\00", align 1
@.str.156 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiWebView\00", align 1
@.str.157 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiWebViewClient\00", align 1
@.str.158 = private unnamed_addr constant [44 x i8] c"microsoft/maui/platform/MauiNavHostFragment\00", align 1
@.str.159 = private unnamed_addr constant [65 x i8] c"crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment\00", align 1
@.str.160 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/NavigationViewFragment\00", align 1
@.str.161 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/ScopedFragment\00", align 1
@.str.162 = private unnamed_addr constant [55 x i8] c"crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks\00", align 1
@.str.163 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/ViewFragment\00", align 1
@.str.164 = private unnamed_addr constant [48 x i8] c"crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView\00", align 1
@.str.165 = private unnamed_addr constant [43 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerHolder\00", align 1
@.str.166 = private unnamed_addr constant [60 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener\00", align 1
@.str.167 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/SwipeViewPager\00", align 1
@.str.168 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult\00", align 1
@.str.169 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/WrapperView\00", align 1
@.str.170 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener\00", align 1
@.str.171 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener\00", align 1
@.str.172 = private unnamed_addr constant [59 x i8] c"crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener\00", align 1
@.str.173 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener\00", align 1
@.str.174 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener\00", align 1
@.str.175 = private unnamed_addr constant [54 x i8] c"crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick\00", align 1
@.str.176 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/LinearGradientShaderFactory\00", align 1
@.str.177 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/RadialGradientShaderFactory\00", align 1
@.str.178 = private unnamed_addr constant [35 x i8] c"crc64b5e713d400f589b7/MauiDrawable\00", align 1
@.str.179 = private unnamed_addr constant [59 x i8] c"crc64a096dc44ad241142/PlatformTicker_DurationScaleListener\00", align 1
@.str.180 = private unnamed_addr constant [39 x i8] c"androidx/lifecycle/ViewModelStoreOwner\00", align 1
@.str.181 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/ViewModel\00", align 1
@.str.182 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/ViewModelProvider\00", align 1
@.str.183 = private unnamed_addr constant [55 x i8] c"androidx/lifecycle/ViewModelProvider$Factory$Companion\00", align 1
@.str.184 = private unnamed_addr constant [45 x i8] c"androidx/lifecycle/ViewModelProvider$Factory\00", align 1
@.str.185 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/ViewModelStore\00", align 1
@.str.186 = private unnamed_addr constant [44 x i8] c"androidx/lifecycle/viewmodel/CreationExtras\00", align 1
@.str.187 = private unnamed_addr constant [48 x i8] c"androidx/lifecycle/viewmodel/CreationExtras$Key\00", align 1
@.str.188 = private unnamed_addr constant [50 x i8] c"androidx/lifecycle/viewmodel/ViewModelInitializer\00", align 1
@.str.189 = private unnamed_addr constant [38 x i8] c"androidx/collection/SparseArrayCompat\00", align 1
@.str.190 = private unnamed_addr constant [34 x i8] c"androidx/cardview/widget/CardView\00", align 1
@.str.191 = private unnamed_addr constant [50 x i8] c"com/google/android/material/shape/CornerTreatment\00", align 1
@.str.192 = private unnamed_addr constant [48 x i8] c"com/google/android/material/shape/EdgeTreatment\00", align 1
@.str.193 = private unnamed_addr constant [45 x i8] c"com/google/android/material/shape/CornerSize\00", align 1
@.str.194 = private unnamed_addr constant [56 x i8] c"com/google/android/material/shape/MaterialShapeDrawable\00", align 1
@.str.195 = private unnamed_addr constant [83 x i8] c"com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState\00", align 1
@.str.196 = private unnamed_addr constant [55 x i8] c"com/google/android/material/shape/ShapeAppearanceModel\00", align 1
@.str.197 = private unnamed_addr constant [63 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$Builder\00", align 1
@.str.198 = private unnamed_addr constant [79 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator\00", align 1
@.str.199 = private unnamed_addr constant [44 x i8] c"com/google/android/material/shape/ShapePath\00", align 1
@.str.200 = private unnamed_addr constant [49 x i8] c"com/google/android/material/shape/ShapePathModel\00", align 1
@.str.201 = private unnamed_addr constant [57 x i8] c"com/google/android/material/imageview/ShapeableImageView\00", align 1
@.str.202 = private unnamed_addr constant [63 x i8] c"com/google/android/material/elevation/ElevationOverlayProvider\00", align 1
@.str.203 = private unnamed_addr constant [54 x i8] c"com/google/android/material/checkbox/MaterialCheckBox\00", align 1
@.str.204 = private unnamed_addr constant [84 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener\00", align 1
@.str.205 = private unnamed_addr constant [100 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor\00", align 1
@.str.206 = private unnamed_addr constant [77 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener\00", align 1
@.str.207 = private unnamed_addr constant [93 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor\00", align 1
@.str.208 = private unnamed_addr constant [50 x i8] c"com/google/android/material/button/MaterialButton\00", align 1
@.str.209 = private unnamed_addr constant [74 x i8] c"com/google/android/material/button/MaterialButton$OnCheckedChangeListener\00", align 1
@.str.210 = private unnamed_addr constant [90 x i8] c"mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.211 = private unnamed_addr constant [60 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior\00", align 1
@.str.212 = private unnamed_addr constant [80 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback\00", align 1
@.str.213 = private unnamed_addr constant [58 x i8] c"com/google/android/material/bottomsheet/BottomSheetDialog\00", align 1
@.str.214 = private unnamed_addr constant [48 x i8] c"com/google/android/material/badge/BadgeDrawable\00", align 1
@.str.215 = private unnamed_addr constant [57 x i8] c"com/google/android/material/navigation/NavigationBarView\00", align 1
@.str.216 = private unnamed_addr constant [82 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener\00", align 1
@.str.217 = private unnamed_addr constant [98 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor\00", align 1
@.str.218 = private unnamed_addr constant [80 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener\00", align 1
@.str.219 = private unnamed_addr constant [96 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor\00", align 1
@.str.220 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarItemView\00", align 1
@.str.221 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarMenuView\00", align 1
@.str.222 = private unnamed_addr constant [62 x i8] c"com/google/android/material/navigation/NavigationBarPresenter\00", align 1
@.str.223 = private unnamed_addr constant [54 x i8] c"com/google/android/material/navigation/NavigationView\00", align 1
@.str.224 = private unnamed_addr constant [87 x i8] c"com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.225 = private unnamed_addr constant [103 x i8] c"mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor\00", align 1
@.str.226 = private unnamed_addr constant [43 x i8] c"com/google/android/material/tabs/TabLayout\00", align 1
@.str.227 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayout$TabView\00", align 1
@.str.228 = private unnamed_addr constant [69 x i8] c"com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener\00", align 1
@.str.229 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor\00", align 1
@.str.230 = private unnamed_addr constant [65 x i8] c"com/google/android/material/tabs/TabLayout$OnTabSelectedListener\00", align 1
@.str.231 = private unnamed_addr constant [47 x i8] c"com/google/android/material/tabs/TabLayout$Tab\00", align 1
@.str.232 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayoutMediator\00", align 1
@.str.233 = private unnamed_addr constant [76 x i8] c"com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy\00", align 1
@.str.234 = private unnamed_addr constant [67 x i8] c"com/google/android/material/internal/StaticLayoutBuilderConfigurer\00", align 1
@.str.235 = private unnamed_addr constant [60 x i8] c"com/google/android/material/internal/ScrimInsetsFrameLayout\00", align 1
@.str.236 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationItemView\00", align 1
@.str.237 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationMenuView\00", align 1
@.str.238 = private unnamed_addr constant [66 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView\00", align 1
@.str.239 = private unnamed_addr constant [101 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener\00", align 1
@.str.240 = private unnamed_addr constant [99 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.241 = private unnamed_addr constant [59 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout\00", align 1
@.str.242 = private unnamed_addr constant [89 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer\00", align 1
@.str.243 = private unnamed_addr constant [48 x i8] c"com/google/android/material/appbar/AppBarLayout\00", align 1
@.str.244 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior\00", align 1
@.str.245 = private unnamed_addr constant [78 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback\00", align 1
@.str.246 = private unnamed_addr constant [57 x i8] c"com/google/android/material/appbar/AppBarLayout$Behavior\00", align 1
@.str.247 = private unnamed_addr constant [66 x i8] c"com/google/android/material/appbar/AppBarLayout$ChildScrollEffect\00", align 1
@.str.248 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$LayoutParams\00", align 1
@.str.249 = private unnamed_addr constant [69 x i8] c"com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener\00", align 1
@.str.250 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor\00", align 1
@.str.251 = private unnamed_addr constant [72 x i8] c"com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener\00", align 1
@.str.252 = private unnamed_addr constant [88 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor\00", align 1
@.str.253 = private unnamed_addr constant [70 x i8] c"com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior\00", align 1
@.str.254 = private unnamed_addr constant [50 x i8] c"com/google/android/material/appbar/HeaderBehavior\00", align 1
@.str.255 = private unnamed_addr constant [63 x i8] c"com/google/android/material/appbar/HeaderScrollingViewBehavior\00", align 1
@.str.256 = private unnamed_addr constant [51 x i8] c"com/google/android/material/appbar/MaterialToolbar\00", align 1
@.str.257 = private unnamed_addr constant [54 x i8] c"com/google/android/material/appbar/ViewOffsetBehavior\00", align 1
@.str.258 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavDirections\00", align 1
@.str.259 = private unnamed_addr constant [46 x i8] c"androidx/navigation/NavViewModelStoreProvider\00", align 1
@.str.260 = private unnamed_addr constant [30 x i8] c"androidx/navigation/NavAction\00", align 1
@.str.261 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavArgument\00", align 1
@.str.262 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavBackStackEntry\00", align 1
@.str.263 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavDeepLink\00", align 1
@.str.264 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkRequest\00", align 1
@.str.265 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavDestination\00", align 1
@.str.266 = private unnamed_addr constant [49 x i8] c"androidx/navigation/NavDestination$DeepLinkMatch\00", align 1
@.str.267 = private unnamed_addr constant [29 x i8] c"androidx/navigation/NavGraph\00", align 1
@.str.268 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavGraphNavigator\00", align 1
@.str.269 = private unnamed_addr constant [30 x i8] c"androidx/navigation/Navigator\00", align 1
@.str.270 = private unnamed_addr constant [37 x i8] c"androidx/navigation/Navigator$Extras\00", align 1
@.str.271 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavigatorProvider\00", align 1
@.str.272 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavigatorState\00", align 1
@.str.273 = private unnamed_addr constant [31 x i8] c"androidx/navigation/NavOptions\00", align 1
@.str.274 = private unnamed_addr constant [28 x i8] c"androidx/navigation/NavType\00", align 1
@.str.275 = private unnamed_addr constant [55 x i8] c"crc64ba438d8f48cf7e75/ActivityLifecycleContextListener\00", align 1
@.str.276 = private unnamed_addr constant [59 x i8] c"crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener\00", align 1
@.str.277 = private unnamed_addr constant [51 x i8] c"crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver\00", align 1
@.str.278 = private unnamed_addr constant [35 x i8] c"crc64e97e4c875a74b65f/MainActivity\00", align 1
@.str.279 = private unnamed_addr constant [38 x i8] c"crc64e97e4c875a74b65f/MainApplication\00", align 1
@.str.280 = private unnamed_addr constant [66 x i8] c"xamarin/android/net/ServerCertificateCustomValidator_TrustManager\00", align 1
@.str.281 = private unnamed_addr constant [81 x i8] c"xamarin/android/net/ServerCertificateCustomValidator_TrustManager_FakeSSLSession\00", align 1
@.str.282 = private unnamed_addr constant [85 x i8] c"xamarin/android/net/ServerCertificateCustomValidator_AlwaysAcceptingHostnameVerifier\00", align 1
@.str.283 = private unnamed_addr constant [29 x i8] c"org/xmlpull/v1/XmlPullParser\00", align 1
@.str.284 = private unnamed_addr constant [38 x i8] c"org/xmlpull/v1/XmlPullParserException\00", align 1
@.str.285 = private unnamed_addr constant [32 x i8] c"javax/security/cert/Certificate\00", align 1
@.str.286 = private unnamed_addr constant [36 x i8] c"javax/security/cert/X509Certificate\00", align 1
@.str.287 = private unnamed_addr constant [28 x i8] c"javax/security/auth/Subject\00", align 1
@.str.288 = private unnamed_addr constant [24 x i8] c"javax/net/SocketFactory\00", align 1
@.str.289 = private unnamed_addr constant [33 x i8] c"javax/net/ssl/HttpsURLConnection\00", align 1
@.str.290 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/HostnameVerifier\00", align 1
@.str.291 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/KeyManager\00", align 1
@.str.292 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLSession\00", align 1
@.str.293 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/SSLSessionContext\00", align 1
@.str.294 = private unnamed_addr constant [27 x i8] c"javax/net/ssl/TrustManager\00", align 1
@.str.295 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/X509TrustManager\00", align 1
@.str.296 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/KeyManagerFactory\00", align 1
@.str.297 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLContext\00", align 1
@.str.298 = private unnamed_addr constant [24 x i8] c"javax/net/ssl/SSLEngine\00", align 1
@.str.299 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/SSLSocketFactory\00", align 1
@.str.300 = private unnamed_addr constant [34 x i8] c"javax/net/ssl/TrustManagerFactory\00", align 1
@.str.301 = private unnamed_addr constant [39 x i8] c"javax/net/ssl/X509ExtendedTrustManager\00", align 1
@.str.302 = private unnamed_addr constant [37 x i8] c"android/window/OnBackInvokedCallback\00", align 1
@.str.303 = private unnamed_addr constant [39 x i8] c"android/window/OnBackInvokedDispatcher\00", align 1
@.str.304 = private unnamed_addr constant [27 x i8] c"android/widget/AbsListView\00", align 1
@.str.305 = private unnamed_addr constant [44 x i8] c"android/widget/AbsListView$OnScrollListener\00", align 1
@.str.306 = private unnamed_addr constant [30 x i8] c"android/widget/AbsoluteLayout\00", align 1
@.str.307 = private unnamed_addr constant [26 x i8] c"android/widget/AbsSeekBar\00", align 1
@.str.308 = private unnamed_addr constant [27 x i8] c"android/widget/AdapterView\00", align 1
@.str.309 = private unnamed_addr constant [47 x i8] c"android/widget/AdapterView$OnItemClickListener\00", align 1
@.str.310 = private unnamed_addr constant [63 x i8] c"mono/android/widget/AdapterView_OnItemClickListenerImplementor\00", align 1
@.str.311 = private unnamed_addr constant [51 x i8] c"android/widget/AdapterView$OnItemLongClickListener\00", align 1
@.str.312 = private unnamed_addr constant [50 x i8] c"android/widget/AdapterView$OnItemSelectedListener\00", align 1
@.str.313 = private unnamed_addr constant [36 x i8] c"android/widget/AutoCompleteTextView\00", align 1
@.str.314 = private unnamed_addr constant [27 x i8] c"android/widget/BaseAdapter\00", align 1
@.str.315 = private unnamed_addr constant [22 x i8] c"android/widget/Button\00", align 1
@.str.316 = private unnamed_addr constant [24 x i8] c"android/widget/CheckBox\00", align 1
@.str.317 = private unnamed_addr constant [30 x i8] c"android/widget/CompoundButton\00", align 1
@.str.318 = private unnamed_addr constant [54 x i8] c"android/widget/CompoundButton$OnCheckedChangeListener\00", align 1
@.str.319 = private unnamed_addr constant [70 x i8] c"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.320 = private unnamed_addr constant [26 x i8] c"android/widget/DatePicker\00", align 1
@.str.321 = private unnamed_addr constant [26 x i8] c"android/widget/EdgeEffect\00", align 1
@.str.322 = private unnamed_addr constant [24 x i8] c"android/widget/EditText\00", align 1
@.str.323 = private unnamed_addr constant [22 x i8] c"android/widget/Filter\00", align 1
@.str.324 = private unnamed_addr constant [36 x i8] c"android/widget/Filter$FilterResults\00", align 1
@.str.325 = private unnamed_addr constant [27 x i8] c"android/widget/FrameLayout\00", align 1
@.str.326 = private unnamed_addr constant [40 x i8] c"android/widget/FrameLayout$LayoutParams\00", align 1
@.str.327 = private unnamed_addr constant [36 x i8] c"android/widget/HorizontalScrollView\00", align 1
@.str.328 = private unnamed_addr constant [23 x i8] c"android/widget/Adapter\00", align 1
@.str.329 = private unnamed_addr constant [26 x i8] c"android/widget/Filterable\00", align 1
@.str.330 = private unnamed_addr constant [35 x i8] c"android/widget/FilterQueryProvider\00", align 1
@.str.331 = private unnamed_addr constant [27 x i8] c"android/widget/ListAdapter\00", align 1
@.str.332 = private unnamed_addr constant [27 x i8] c"android/widget/ImageButton\00", align 1
@.str.333 = private unnamed_addr constant [25 x i8] c"android/widget/ImageView\00", align 1
@.str.334 = private unnamed_addr constant [35 x i8] c"android/widget/ImageView$ScaleType\00", align 1
@.str.335 = private unnamed_addr constant [30 x i8] c"android/widget/SectionIndexer\00", align 1
@.str.336 = private unnamed_addr constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 1
@.str.337 = private unnamed_addr constant [28 x i8] c"android/widget/LinearLayout\00", align 1
@.str.338 = private unnamed_addr constant [41 x i8] c"android/widget/LinearLayout$LayoutParams\00", align 1
@.str.339 = private unnamed_addr constant [24 x i8] c"android/widget/ListView\00", align 1
@.str.340 = private unnamed_addr constant [27 x i8] c"android/widget/ProgressBar\00", align 1
@.str.341 = private unnamed_addr constant [27 x i8] c"android/widget/RadioButton\00", align 1
@.str.342 = private unnamed_addr constant [30 x i8] c"android/widget/RelativeLayout\00", align 1
@.str.343 = private unnamed_addr constant [43 x i8] c"android/widget/RelativeLayout$LayoutParams\00", align 1
@.str.344 = private unnamed_addr constant [27 x i8] c"android/widget/RemoteViews\00", align 1
@.str.345 = private unnamed_addr constant [26 x i8] c"android/widget/SearchView\00", align 1
@.str.346 = private unnamed_addr constant [23 x i8] c"android/widget/SeekBar\00", align 1
@.str.347 = private unnamed_addr constant [47 x i8] c"android/widget/SeekBar$OnSeekBarChangeListener\00", align 1
@.str.348 = private unnamed_addr constant [22 x i8] c"android/widget/Switch\00", align 1
@.str.349 = private unnamed_addr constant [24 x i8] c"android/widget/TextView\00", align 1
@.str.350 = private unnamed_addr constant [35 x i8] c"android/widget/TextView$BufferType\00", align 1
@.str.351 = private unnamed_addr constant [47 x i8] c"android/widget/TextView$OnEditorActionListener\00", align 1
@.str.352 = private unnamed_addr constant [63 x i8] c"mono/android/widget/TextView_OnEditorActionListenerImplementor\00", align 1
@.str.353 = private unnamed_addr constant [26 x i8] c"android/widget/TimePicker\00", align 1
@.str.354 = private unnamed_addr constant [29 x i8] c"android/webkit/CookieManager\00", align 1
@.str.355 = private unnamed_addr constant [29 x i8] c"android/webkit/ValueCallback\00", align 1
@.str.356 = private unnamed_addr constant [34 x i8] c"android/webkit/WebResourceRequest\00", align 1
@.str.357 = private unnamed_addr constant [31 x i8] c"android/webkit/WebChromeClient\00", align 1
@.str.358 = private unnamed_addr constant [49 x i8] c"android/webkit/WebChromeClient$FileChooserParams\00", align 1
@.str.359 = private unnamed_addr constant [32 x i8] c"android/webkit/WebResourceError\00", align 1
@.str.360 = private unnamed_addr constant [27 x i8] c"android/webkit/WebSettings\00", align 1
@.str.361 = private unnamed_addr constant [23 x i8] c"android/webkit/WebView\00", align 1
@.str.362 = private unnamed_addr constant [29 x i8] c"android/webkit/WebViewClient\00", align 1
@.str.363 = private unnamed_addr constant [30 x i8] c"android/util/AndroidException\00", align 1
@.str.364 = private unnamed_addr constant [20 x i8] c"android/util/Base64\00", align 1
@.str.365 = private unnamed_addr constant [28 x i8] c"android/util/DisplayMetrics\00", align 1
@.str.366 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 1
@.str.367 = private unnamed_addr constant [17 x i8] c"android/util/Log\00", align 1
@.str.368 = private unnamed_addr constant [18 x i8] c"android/util/Pair\00", align 1
@.str.369 = private unnamed_addr constant [19 x i8] c"android/util/SizeF\00", align 1
@.str.370 = private unnamed_addr constant [25 x i8] c"android/util/SparseArray\00", align 1
@.str.371 = private unnamed_addr constant [22 x i8] c"android/util/StateSet\00", align 1
@.str.372 = private unnamed_addr constant [24 x i8] c"android/util/TypedValue\00", align 1
@.str.373 = private unnamed_addr constant [18 x i8] c"android/text/Html\00", align 1
@.str.374 = private unnamed_addr constant [22 x i8] c"android/text/Editable\00", align 1
@.str.375 = private unnamed_addr constant [22 x i8] c"android/text/GetChars\00", align 1
@.str.376 = private unnamed_addr constant [38 x i8] c"android/text/InputFilter$LengthFilter\00", align 1
@.str.377 = private unnamed_addr constant [25 x i8] c"android/text/InputFilter\00", align 1
@.str.378 = private unnamed_addr constant [24 x i8] c"android/text/NoCopySpan\00", align 1
@.str.379 = private unnamed_addr constant [23 x i8] c"android/text/Spannable\00", align 1
@.str.380 = private unnamed_addr constant [21 x i8] c"android/text/Spanned\00", align 1
@.str.381 = private unnamed_addr constant [36 x i8] c"android/text/TextDirectionHeuristic\00", align 1
@.str.382 = private unnamed_addr constant [25 x i8] c"android/text/TextWatcher\00", align 1
@.str.383 = private unnamed_addr constant [20 x i8] c"android/text/Layout\00", align 1
@.str.384 = private unnamed_addr constant [30 x i8] c"android/text/Layout$Alignment\00", align 1
@.str.385 = private unnamed_addr constant [29 x i8] c"android/text/SpannableString\00", align 1
@.str.386 = private unnamed_addr constant [36 x i8] c"android/text/SpannableStringBuilder\00", align 1
@.str.387 = private unnamed_addr constant [37 x i8] c"android/text/SpannableStringInternal\00", align 1
@.str.388 = private unnamed_addr constant [26 x i8] c"android/text/StaticLayout\00", align 1
@.str.389 = private unnamed_addr constant [34 x i8] c"android/text/StaticLayout$Builder\00", align 1
@.str.390 = private unnamed_addr constant [23 x i8] c"android/text/TextPaint\00", align 1
@.str.391 = private unnamed_addr constant [23 x i8] c"android/text/TextUtils\00", align 1
@.str.392 = private unnamed_addr constant [34 x i8] c"android/text/TextUtils$TruncateAt\00", align 1
@.str.393 = private unnamed_addr constant [41 x i8] c"mono/android/text/TextWatcherImplementor\00", align 1
@.str.394 = private unnamed_addr constant [39 x i8] c"android/text/style/BackgroundColorSpan\00", align 1
@.str.395 = private unnamed_addr constant [30 x i8] c"android/text/style/BulletSpan\00", align 1
@.str.396 = private unnamed_addr constant [34 x i8] c"android/text/style/CharacterStyle\00", align 1
@.str.397 = private unnamed_addr constant [33 x i8] c"android/text/style/ClickableSpan\00", align 1
@.str.398 = private unnamed_addr constant [39 x i8] c"android/text/style/ForegroundColorSpan\00", align 1
@.str.399 = private unnamed_addr constant [34 x i8] c"android/text/style/LineHeightSpan\00", align 1
@.str.400 = private unnamed_addr constant [34 x i8] c"android/text/style/ParagraphStyle\00", align 1
@.str.401 = private unnamed_addr constant [36 x i8] c"android/text/style/WrapTogetherSpan\00", align 1
@.str.402 = private unnamed_addr constant [39 x i8] c"android/text/style/MetricAffectingSpan\00", align 1
@.str.403 = private unnamed_addr constant [37 x i8] c"android/text/style/StrikethroughSpan\00", align 1
@.str.404 = private unnamed_addr constant [29 x i8] c"android/text/style/StyleSpan\00", align 1
@.str.405 = private unnamed_addr constant [33 x i8] c"android/text/style/SubscriptSpan\00", align 1
@.str.406 = private unnamed_addr constant [35 x i8] c"android/text/style/SuperscriptSpan\00", align 1
@.str.407 = private unnamed_addr constant [32 x i8] c"android/text/style/TypefaceSpan\00", align 1
@.str.408 = private unnamed_addr constant [33 x i8] c"android/text/style/UnderlineSpan\00", align 1
@.str.409 = private unnamed_addr constant [36 x i8] c"android/text/method/BaseKeyListener\00", align 1
@.str.410 = private unnamed_addr constant [38 x i8] c"android/text/method/DigitsKeyListener\00", align 1
@.str.411 = private unnamed_addr constant [32 x i8] c"android/text/method/KeyListener\00", align 1
@.str.412 = private unnamed_addr constant [39 x i8] c"android/text/method/MetaKeyKeyListener\00", align 1
@.str.413 = private unnamed_addr constant [38 x i8] c"android/text/method/NumberKeyListener\00", align 1
@.str.414 = private unnamed_addr constant [31 x i8] c"android/text/format/DateFormat\00", align 1
@.str.415 = private unnamed_addr constant [26 x i8] c"android/provider/Settings\00", align 1
@.str.416 = private unnamed_addr constant [41 x i8] c"android/provider/Settings$NameValueTable\00", align 1
@.str.417 = private unnamed_addr constant [33 x i8] c"android/provider/Settings$Secure\00", align 1
@.str.418 = private unnamed_addr constant [37 x i8] c"android/preference/PreferenceManager\00", align 1
@.str.419 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 1
@.str.420 = private unnamed_addr constant [18 x i8] c"android/os/Binder\00", align 1
@.str.421 = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 1
@.str.422 = private unnamed_addr constant [25 x i8] c"android/os/Build$VERSION\00", align 1
@.str.423 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 1
@.str.424 = private unnamed_addr constant [30 x i8] c"android/os/CancellationSignal\00", align 1
@.str.425 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 1
@.str.426 = private unnamed_addr constant [34 x i8] c"android/os/IBinder$DeathRecipient\00", align 1
@.str.427 = private unnamed_addr constant [19 x i8] c"android/os/IBinder\00", align 1
@.str.428 = private unnamed_addr constant [22 x i8] c"android/os/IInterface\00", align 1
@.str.429 = private unnamed_addr constant [30 x i8] c"android/os/Parcelable$Creator\00", align 1
@.str.430 = private unnamed_addr constant [22 x i8] c"android/os/Parcelable\00", align 1
@.str.431 = private unnamed_addr constant [22 x i8] c"android/os/LocaleList\00", align 1
@.str.432 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 1
@.str.433 = private unnamed_addr constant [19 x i8] c"android/os/Message\00", align 1
@.str.434 = private unnamed_addr constant [18 x i8] c"android/os/Parcel\00", align 1
@.str.435 = private unnamed_addr constant [24 x i8] c"android/os/PowerManager\00", align 1
@.str.436 = private unnamed_addr constant [19 x i8] c"android/os/Process\00", align 1
@.str.437 = private unnamed_addr constant [22 x i8] c"android/opengl/Matrix\00", align 1
@.str.438 = private unnamed_addr constant [16 x i8] c"android/net/Uri\00", align 1
@.str.439 = private unnamed_addr constant [33 x i8] c"android/database/CharArrayBuffer\00", align 1
@.str.440 = private unnamed_addr constant [33 x i8] c"android/database/ContentObserver\00", align 1
@.str.441 = private unnamed_addr constant [33 x i8] c"android/database/DataSetObserver\00", align 1
@.str.442 = private unnamed_addr constant [24 x i8] c"android/database/Cursor\00", align 1
@.str.443 = private unnamed_addr constant [27 x i8] c"android/animation/Animator\00", align 1
@.str.444 = private unnamed_addr constant [44 x i8] c"android/animation/Animator$AnimatorListener\00", align 1
@.str.445 = private unnamed_addr constant [42 x i8] c"android/animation/AnimatorListenerAdapter\00", align 1
@.str.446 = private unnamed_addr constant [35 x i8] c"android/animation/TimeInterpolator\00", align 1
@.str.447 = private unnamed_addr constant [32 x i8] c"android/animation/ValueAnimator\00", align 1
@.str.448 = private unnamed_addr constant [55 x i8] c"android/animation/ValueAnimator$AnimatorUpdateListener\00", align 1
@.str.449 = private unnamed_addr constant [71 x i8] c"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor\00", align 1
@.str.450 = private unnamed_addr constant [60 x i8] c"android/animation/ValueAnimator$DurationScaleChangeListener\00", align 1
@.str.451 = private unnamed_addr constant [47 x i8] c"mono/android/animation/AnimatorEventDispatcher\00", align 1
@.str.452 = private unnamed_addr constant [32 x i8] c"android/accounts/AccountManager\00", align 1
@.str.453 = private unnamed_addr constant [42 x i8] c"android/accounts/AuthenticatorDescription\00", align 1
@.str.454 = private unnamed_addr constant [40 x i8] c"android/accounts/AccountManagerCallback\00", align 1
@.str.455 = private unnamed_addr constant [38 x i8] c"android/accounts/AccountManagerFuture\00", align 1
@.str.456 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 1
@.str.457 = private unnamed_addr constant [24 x i8] c"android/app/AlertDialog\00", align 1
@.str.458 = private unnamed_addr constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 1
@.str.459 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 1
@.str.460 = private unnamed_addr constant [51 x i8] c"android/app/Application$ActivityLifecycleCallbacks\00", align 1
@.str.461 = private unnamed_addr constant [29 x i8] c"android/app/DatePickerDialog\00", align 1
@.str.462 = private unnamed_addr constant [47 x i8] c"android/app/DatePickerDialog$OnDateSetListener\00", align 1
@.str.463 = private unnamed_addr constant [63 x i8] c"mono/android/app/DatePickerDialog_OnDateSetListenerImplementor\00", align 1
@.str.464 = private unnamed_addr constant [19 x i8] c"android/app/Dialog\00", align 1
@.str.465 = private unnamed_addr constant [26 x i8] c"android/app/PendingIntent\00", align 1
@.str.466 = private unnamed_addr constant [27 x i8] c"android/app/SearchableInfo\00", align 1
@.str.467 = private unnamed_addr constant [29 x i8] c"android/app/TimePickerDialog\00", align 1
@.str.468 = private unnamed_addr constant [47 x i8] c"android/app/TimePickerDialog$OnTimeSetListener\00", align 1
@.str.469 = private unnamed_addr constant [63 x i8] c"mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor\00", align 1
@.str.470 = private unnamed_addr constant [26 x i8] c"android/app/UiModeManager\00", align 1
@.str.471 = private unnamed_addr constant [40 x i8] c"android/view/WindowManager$LayoutParams\00", align 1
@.str.472 = private unnamed_addr constant [24 x i8] c"android/view/ActionMode\00", align 1
@.str.473 = private unnamed_addr constant [33 x i8] c"android/view/ActionMode$Callback\00", align 1
@.str.474 = private unnamed_addr constant [28 x i8] c"android/view/ActionProvider\00", align 1
@.str.475 = private unnamed_addr constant [25 x i8] c"android/view/ContentInfo\00", align 1
@.str.476 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@.str.477 = private unnamed_addr constant [21 x i8] c"android/view/Display\00", align 1
@.str.478 = private unnamed_addr constant [23 x i8] c"android/view/DragEvent\00", align 1
@.str.479 = private unnamed_addr constant [29 x i8] c"android/view/GestureDetector\00", align 1
@.str.480 = private unnamed_addr constant [49 x i8] c"android/view/GestureDetector$OnDoubleTapListener\00", align 1
@.str.481 = private unnamed_addr constant [47 x i8] c"android/view/GestureDetector$OnGestureListener\00", align 1
@.str.482 = private unnamed_addr constant [41 x i8] c"android/view/ContextMenu$ContextMenuInfo\00", align 1
@.str.483 = private unnamed_addr constant [25 x i8] c"android/view/ContextMenu\00", align 1
@.str.484 = private unnamed_addr constant [18 x i8] c"android/view/Menu\00", align 1
@.str.485 = private unnamed_addr constant [45 x i8] c"android/view/MenuItem$OnActionExpandListener\00", align 1
@.str.486 = private unnamed_addr constant [46 x i8] c"android/view/MenuItem$OnMenuItemClickListener\00", align 1
@.str.487 = private unnamed_addr constant [22 x i8] c"android/view/MenuItem\00", align 1
@.str.488 = private unnamed_addr constant [24 x i8] c"android/view/InputEvent\00", align 1
@.str.489 = private unnamed_addr constant [21 x i8] c"android/view/SubMenu\00", align 1
@.str.490 = private unnamed_addr constant [25 x i8] c"android/view/ViewManager\00", align 1
@.str.491 = private unnamed_addr constant [24 x i8] c"android/view/ViewParent\00", align 1
@.str.492 = private unnamed_addr constant [45 x i8] c"android/view/WindowInsetsAnimationController\00", align 1
@.str.493 = private unnamed_addr constant [50 x i8] c"android/view/WindowInsetsAnimationControlListener\00", align 1
@.str.494 = private unnamed_addr constant [36 x i8] c"android/view/WindowInsetsController\00", align 1
@.str.495 = private unnamed_addr constant [72 x i8] c"android/view/WindowInsetsController$OnControllableInsetsChangedListener\00", align 1
@.str.496 = private unnamed_addr constant [27 x i8] c"android/view/WindowManager\00", align 1
@.str.497 = private unnamed_addr constant [35 x i8] c"android/view/KeyboardShortcutGroup\00", align 1
@.str.498 = private unnamed_addr constant [22 x i8] c"android/view/KeyEvent\00", align 1
@.str.499 = private unnamed_addr constant [28 x i8] c"android/view/LayoutInflater\00", align 1
@.str.500 = private unnamed_addr constant [26 x i8] c"android/view/MenuInflater\00", align 1
@.str.501 = private unnamed_addr constant [25 x i8] c"android/view/MotionEvent\00", align 1
@.str.502 = private unnamed_addr constant [38 x i8] c"android/view/OrientationEventListener\00", align 1
@.str.503 = private unnamed_addr constant [34 x i8] c"android/view/ScaleGestureDetector\00", align 1
@.str.504 = private unnamed_addr constant [57 x i8] c"android/view/ScaleGestureDetector$OnScaleGestureListener\00", align 1
@.str.505 = private unnamed_addr constant [63 x i8] c"android/view/ScaleGestureDetector$SimpleOnScaleGestureListener\00", align 1
@.str.506 = private unnamed_addr constant [25 x i8] c"android/view/SearchEvent\00", align 1
@.str.507 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 1
@.str.508 = private unnamed_addr constant [40 x i8] c"android/view/View$AccessibilityDelegate\00", align 1
@.str.509 = private unnamed_addr constant [36 x i8] c"android/view/View$DragShadowBuilder\00", align 1
@.str.510 = private unnamed_addr constant [30 x i8] c"android/view/View$MeasureSpec\00", align 1
@.str.511 = private unnamed_addr constant [46 x i8] c"android/view/View$OnAttachStateChangeListener\00", align 1
@.str.512 = private unnamed_addr constant [62 x i8] c"mono/android/view/View_OnAttachStateChangeListenerImplementor\00", align 1
@.str.513 = private unnamed_addr constant [34 x i8] c"android/view/View$OnClickListener\00", align 1
@.str.514 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 1
@.str.515 = private unnamed_addr constant [33 x i8] c"android/view/View$OnDragListener\00", align 1
@.str.516 = private unnamed_addr constant [40 x i8] c"android/view/View$OnFocusChangeListener\00", align 1
@.str.517 = private unnamed_addr constant [56 x i8] c"mono/android/view/View_OnFocusChangeListenerImplementor\00", align 1
@.str.518 = private unnamed_addr constant [34 x i8] c"android/view/View$OnHoverListener\00", align 1
@.str.519 = private unnamed_addr constant [32 x i8] c"android/view/View$OnKeyListener\00", align 1
@.str.520 = private unnamed_addr constant [48 x i8] c"mono/android/view/View_OnKeyListenerImplementor\00", align 1
@.str.521 = private unnamed_addr constant [41 x i8] c"android/view/View$OnLayoutChangeListener\00", align 1
@.str.522 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnLayoutChangeListenerImplementor\00", align 1
@.str.523 = private unnamed_addr constant [41 x i8] c"android/view/View$OnScrollChangeListener\00", align 1
@.str.524 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnScrollChangeListenerImplementor\00", align 1
@.str.525 = private unnamed_addr constant [34 x i8] c"android/view/View$OnTouchListener\00", align 1
@.str.526 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnTouchListenerImplementor\00", align 1
@.str.527 = private unnamed_addr constant [31 x i8] c"android/view/ViewConfiguration\00", align 1
@.str.528 = private unnamed_addr constant [23 x i8] c"android/view/ViewGroup\00", align 1
@.str.529 = private unnamed_addr constant [36 x i8] c"android/view/ViewGroup$LayoutParams\00", align 1
@.str.530 = private unnamed_addr constant [42 x i8] c"android/view/ViewGroup$MarginLayoutParams\00", align 1
@.str.531 = private unnamed_addr constant [49 x i8] c"android/view/ViewGroup$OnHierarchyChangeListener\00", align 1
@.str.532 = private unnamed_addr constant [65 x i8] c"mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor\00", align 1
@.str.533 = private unnamed_addr constant [34 x i8] c"android/view/ViewPropertyAnimator\00", align 1
@.str.534 = private unnamed_addr constant [30 x i8] c"android/view/ViewTreeObserver\00", align 1
@.str.535 = private unnamed_addr constant [53 x i8] c"android/view/ViewTreeObserver$OnGlobalLayoutListener\00", align 1
@.str.536 = private unnamed_addr constant [20 x i8] c"android/view/Window\00", align 1
@.str.537 = private unnamed_addr constant [29 x i8] c"android/view/Window$Callback\00", align 1
@.str.538 = private unnamed_addr constant [26 x i8] c"android/view/WindowInsets\00", align 1
@.str.539 = private unnamed_addr constant [35 x i8] c"android/view/WindowInsetsAnimation\00", align 1
@.str.540 = private unnamed_addr constant [42 x i8] c"android/view/WindowInsetsAnimation$Bounds\00", align 1
@.str.541 = private unnamed_addr constant [27 x i8] c"android/view/WindowMetrics\00", align 1
@.str.542 = private unnamed_addr constant [44 x i8] c"android/view/inputmethod/InputMethodManager\00", align 1
@.str.543 = private unnamed_addr constant [46 x i8] c"android/view/animation/AccelerateInterpolator\00", align 1
@.str.544 = private unnamed_addr constant [33 x i8] c"android/view/animation/Animation\00", align 1
@.str.545 = private unnamed_addr constant [51 x i8] c"android/view/animation/Animation$AnimationListener\00", align 1
@.str.546 = private unnamed_addr constant [36 x i8] c"android/view/animation/AnimationSet\00", align 1
@.str.547 = private unnamed_addr constant [38 x i8] c"android/view/animation/AnimationUtils\00", align 1
@.str.548 = private unnamed_addr constant [40 x i8] c"android/view/animation/BaseInterpolator\00", align 1
@.str.549 = private unnamed_addr constant [46 x i8] c"android/view/animation/DecelerateInterpolator\00", align 1
@.str.550 = private unnamed_addr constant [36 x i8] c"android/view/animation/Interpolator\00", align 1
@.str.551 = private unnamed_addr constant [42 x i8] c"android/view/animation/LinearInterpolator\00", align 1
@.str.552 = private unnamed_addr constant [46 x i8] c"android/view/accessibility/AccessibilityEvent\00", align 1
@.str.553 = private unnamed_addr constant [49 x i8] c"android/view/accessibility/AccessibilityNodeInfo\00", align 1
@.str.554 = private unnamed_addr constant [68 x i8] c"android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo\00", align 1
@.str.555 = private unnamed_addr constant [47 x i8] c"android/view/accessibility/AccessibilityRecord\00", align 1
@.str.556 = private unnamed_addr constant [51 x i8] c"android/view/accessibility/AccessibilityWindowInfo\00", align 1
@.str.557 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@.str.558 = private unnamed_addr constant [31 x i8] c"mono/android/runtime/JavaArray\00", align 1
@.str.559 = private unnamed_addr constant [21 x i8] c"java/util/Collection\00", align 1
@.str.560 = private unnamed_addr constant [18 x i8] c"java/util/HashMap\00", align 1
@.str.561 = private unnamed_addr constant [20 x i8] c"java/util/ArrayList\00", align 1
@.str.562 = private unnamed_addr constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 1
@.str.563 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@.str.564 = private unnamed_addr constant [18 x i8] c"java/util/HashSet\00", align 1
@.str.565 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@.str.566 = private unnamed_addr constant [36 x i8] c"android/runtime/XmlReaderPullParser\00", align 1
@.str.567 = private unnamed_addr constant [24 x i8] c"android/graphics/Bitmap\00", align 1
@.str.568 = private unnamed_addr constant [39 x i8] c"android/graphics/Bitmap$CompressFormat\00", align 1
@.str.569 = private unnamed_addr constant [31 x i8] c"android/graphics/Bitmap$Config\00", align 1
@.str.570 = private unnamed_addr constant [31 x i8] c"android/graphics/BitmapFactory\00", align 1
@.str.571 = private unnamed_addr constant [30 x i8] c"android/graphics/BitmapShader\00", align 1
@.str.572 = private unnamed_addr constant [27 x i8] c"android/graphics/BlendMode\00", align 1
@.str.573 = private unnamed_addr constant [32 x i8] c"android/graphics/BlurMaskFilter\00", align 1
@.str.574 = private unnamed_addr constant [37 x i8] c"android/graphics/BlurMaskFilter$Blur\00", align 1
@.str.575 = private unnamed_addr constant [24 x i8] c"android/graphics/Canvas\00", align 1
@.str.576 = private unnamed_addr constant [29 x i8] c"android/graphics/ColorFilter\00", align 1
@.str.577 = private unnamed_addr constant [32 x i8] c"android/graphics/DashPathEffect\00", align 1
@.str.578 = private unnamed_addr constant [24 x i8] c"android/graphics/Insets\00", align 1
@.str.579 = private unnamed_addr constant [32 x i8] c"android/graphics/LinearGradient\00", align 1
@.str.580 = private unnamed_addr constant [28 x i8] c"android/graphics/MaskFilter\00", align 1
@.str.581 = private unnamed_addr constant [24 x i8] c"android/graphics/Matrix\00", align 1
@.str.582 = private unnamed_addr constant [23 x i8] c"android/graphics/Paint\00", align 1
@.str.583 = private unnamed_addr constant [27 x i8] c"android/graphics/Paint$Cap\00", align 1
@.str.584 = private unnamed_addr constant [35 x i8] c"android/graphics/Paint$FontMetrics\00", align 1
@.str.585 = private unnamed_addr constant [38 x i8] c"android/graphics/Paint$FontMetricsInt\00", align 1
@.str.586 = private unnamed_addr constant [28 x i8] c"android/graphics/Paint$Join\00", align 1
@.str.587 = private unnamed_addr constant [29 x i8] c"android/graphics/Paint$Style\00", align 1
@.str.588 = private unnamed_addr constant [22 x i8] c"android/graphics/Path\00", align 1
@.str.589 = private unnamed_addr constant [32 x i8] c"android/graphics/Path$Direction\00", align 1
@.str.590 = private unnamed_addr constant [31 x i8] c"android/graphics/Path$FillType\00", align 1
@.str.591 = private unnamed_addr constant [28 x i8] c"android/graphics/PathEffect\00", align 1
@.str.592 = private unnamed_addr constant [23 x i8] c"android/graphics/Point\00", align 1
@.str.593 = private unnamed_addr constant [24 x i8] c"android/graphics/PointF\00", align 1
@.str.594 = private unnamed_addr constant [28 x i8] c"android/graphics/PorterDuff\00", align 1
@.str.595 = private unnamed_addr constant [33 x i8] c"android/graphics/PorterDuff$Mode\00", align 1
@.str.596 = private unnamed_addr constant [36 x i8] c"android/graphics/PorterDuffXfermode\00", align 1
@.str.597 = private unnamed_addr constant [32 x i8] c"android/graphics/RadialGradient\00", align 1
@.str.598 = private unnamed_addr constant [22 x i8] c"android/graphics/Rect\00", align 1
@.str.599 = private unnamed_addr constant [23 x i8] c"android/graphics/RectF\00", align 1
@.str.600 = private unnamed_addr constant [24 x i8] c"android/graphics/Region\00", align 1
@.str.601 = private unnamed_addr constant [27 x i8] c"android/graphics/Region$Op\00", align 1
@.str.602 = private unnamed_addr constant [24 x i8] c"android/graphics/Shader\00", align 1
@.str.603 = private unnamed_addr constant [33 x i8] c"android/graphics/Shader$TileMode\00", align 1
@.str.604 = private unnamed_addr constant [26 x i8] c"android/graphics/Typeface\00", align 1
@.str.605 = private unnamed_addr constant [26 x i8] c"android/graphics/Xfermode\00", align 1
@.str.606 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/AnimationDrawable\00", align 1
@.str.607 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ColorDrawable\00", align 1
@.str.608 = private unnamed_addr constant [35 x i8] c"android/graphics/drawable/Drawable\00", align 1
@.str.609 = private unnamed_addr constant [49 x i8] c"android/graphics/drawable/Drawable$ConstantState\00", align 1
@.str.610 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/DrawableContainer\00", align 1
@.str.611 = private unnamed_addr constant [42 x i8] c"android/graphics/drawable/DrawableWrapper\00", align 1
@.str.612 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/GradientDrawable\00", align 1
@.str.613 = private unnamed_addr constant [55 x i8] c"android/graphics/drawable/GradientDrawable$Orientation\00", align 1
@.str.614 = private unnamed_addr constant [37 x i8] c"android/graphics/drawable/Animatable\00", align 1
@.str.615 = private unnamed_addr constant [31 x i8] c"android/graphics/drawable/Icon\00", align 1
@.str.616 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/InsetDrawable\00", align 1
@.str.617 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/LayerDrawable\00", align 1
@.str.618 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/PaintDrawable\00", align 1
@.str.619 = private unnamed_addr constant [41 x i8] c"android/graphics/drawable/RippleDrawable\00", align 1
@.str.620 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ShapeDrawable\00", align 1
@.str.621 = private unnamed_addr constant [54 x i8] c"android/graphics/drawable/ShapeDrawable$ShaderFactory\00", align 1
@.str.622 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/StateListDrawable\00", align 1
@.str.623 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/OvalShape\00", align 1
@.str.624 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/RectShape\00", align 1
@.str.625 = private unnamed_addr constant [39 x i8] c"android/graphics/drawable/shapes/Shape\00", align 1
@.str.626 = private unnamed_addr constant [42 x i8] c"android/content/ActivityNotFoundException\00", align 1
@.str.627 = private unnamed_addr constant [34 x i8] c"android/content/BroadcastReceiver\00", align 1
@.str.628 = private unnamed_addr constant [25 x i8] c"android/content/ClipData\00", align 1
@.str.629 = private unnamed_addr constant [30 x i8] c"android/content/ClipData$Item\00", align 1
@.str.630 = private unnamed_addr constant [32 x i8] c"android/content/ClipDescription\00", align 1
@.str.631 = private unnamed_addr constant [30 x i8] c"android/content/ComponentName\00", align 1
@.str.632 = private unnamed_addr constant [32 x i8] c"android/content/ContentResolver\00", align 1
@.str.633 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 1
@.str.634 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@.str.635 = private unnamed_addr constant [49 x i8] c"android/content/DialogInterface$OnCancelListener\00", align 1
@.str.636 = private unnamed_addr constant [65 x i8] c"mono/android/content/DialogInterface_OnCancelListenerImplementor\00", align 1
@.str.637 = private unnamed_addr constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 1
@.str.638 = private unnamed_addr constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 1
@.str.639 = private unnamed_addr constant [50 x i8] c"android/content/DialogInterface$OnDismissListener\00", align 1
@.str.640 = private unnamed_addr constant [66 x i8] c"mono/android/content/DialogInterface_OnDismissListenerImplementor\00", align 1
@.str.641 = private unnamed_addr constant [46 x i8] c"android/content/DialogInterface$OnKeyListener\00", align 1
@.str.642 = private unnamed_addr constant [59 x i8] c"android/content/DialogInterface$OnMultiChoiceClickListener\00", align 1
@.str.643 = private unnamed_addr constant [47 x i8] c"android/content/DialogInterface$OnShowListener\00", align 1
@.str.644 = private unnamed_addr constant [63 x i8] c"mono/android/content/DialogInterface_OnShowListenerImplementor\00", align 1
@.str.645 = private unnamed_addr constant [32 x i8] c"android/content/DialogInterface\00", align 1
@.str.646 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 1
@.str.647 = private unnamed_addr constant [29 x i8] c"android/content/IntentFilter\00", align 1
@.str.648 = private unnamed_addr constant [29 x i8] c"android/content/IntentSender\00", align 1
@.str.649 = private unnamed_addr constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 1
@.str.650 = private unnamed_addr constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 1
@.str.651 = private unnamed_addr constant [34 x i8] c"android/content/SharedPreferences\00", align 1
@.str.652 = private unnamed_addr constant [33 x i8] c"android/content/res/AssetManager\00", align 1
@.str.653 = private unnamed_addr constant [35 x i8] c"android/content/res/ColorStateList\00", align 1
@.str.654 = private unnamed_addr constant [34 x i8] c"android/content/res/Configuration\00", align 1
@.str.655 = private unnamed_addr constant [38 x i8] c"android/content/res/XmlResourceParser\00", align 1
@.str.656 = private unnamed_addr constant [30 x i8] c"android/content/res/Resources\00", align 1
@.str.657 = private unnamed_addr constant [36 x i8] c"android/content/res/Resources$Theme\00", align 1
@.str.658 = private unnamed_addr constant [31 x i8] c"android/content/res/TypedArray\00", align 1
@.str.659 = private unnamed_addr constant [34 x i8] c"android/content/pm/PackageManager\00", align 1
@.str.660 = private unnamed_addr constant [56 x i8] c"android/content/pm/PackageManager$NameNotFoundException\00", align 1
@.str.661 = private unnamed_addr constant [35 x i8] c"android/content/pm/ApplicationInfo\00", align 1
@.str.662 = private unnamed_addr constant [33 x i8] c"android/content/pm/ComponentInfo\00", align 1
@.str.663 = private unnamed_addr constant [31 x i8] c"android/content/pm/PackageInfo\00", align 1
@.str.664 = private unnamed_addr constant [35 x i8] c"android/content/pm/PackageItemInfo\00", align 1
@.str.665 = private unnamed_addr constant [31 x i8] c"android/content/pm/ResolveInfo\00", align 1
@.str.666 = private unnamed_addr constant [31 x i8] c"android/content/pm/ServiceInfo\00", align 1
@.str.667 = private unnamed_addr constant [32 x i8] c"android/content/pm/ShortcutInfo\00", align 1
@.str.668 = private unnamed_addr constant [40 x i8] c"android/content/pm/ShortcutInfo$Builder\00", align 1
@.str.669 = private unnamed_addr constant [35 x i8] c"android/content/pm/ShortcutManager\00", align 1
@.str.670 = private unnamed_addr constant [29 x i8] c"android/content/pm/Signature\00", align 1
@.str.671 = private unnamed_addr constant [22 x i8] c"java/util/Enumeration\00", align 1
@.str.672 = private unnamed_addr constant [19 x i8] c"java/util/Iterator\00", align 1
@.str.673 = private unnamed_addr constant [17 x i8] c"java/util/Locale\00", align 1
@.str.674 = private unnamed_addr constant [17 x i8] c"java/util/Random\00", align 1
@.str.675 = private unnamed_addr constant [28 x i8] c"java/util/function/Consumer\00", align 1
@.str.676 = private unnamed_addr constant [31 x i8] c"java/util/function/IntConsumer\00", align 1
@.str.677 = private unnamed_addr constant [29 x i8] c"java/util/function/Predicate\00", align 1
@.str.678 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/Executor\00", align 1
@.str.679 = private unnamed_addr constant [28 x i8] c"java/util/concurrent/Future\00", align 1
@.str.680 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/TimeUnit\00", align 1
@.str.681 = private unnamed_addr constant [44 x i8] c"java/util/concurrent/atomic/AtomicReference\00", align 1
@.str.682 = private unnamed_addr constant [24 x i8] c"java/text/DecimalFormat\00", align 1
@.str.683 = private unnamed_addr constant [31 x i8] c"java/text/DecimalFormatSymbols\00", align 1
@.str.684 = private unnamed_addr constant [23 x i8] c"java/text/NumberFormat\00", align 1
@.str.685 = private unnamed_addr constant [17 x i8] c"java/text/Format\00", align 1
@.str.686 = private unnamed_addr constant [39 x i8] c"java/security/GeneralSecurityException\00", align 1
@.str.687 = private unnamed_addr constant [24 x i8] c"java/security/Principal\00", align 1
@.str.688 = private unnamed_addr constant [23 x i8] c"java/security/KeyStore\00", align 1
@.str.689 = private unnamed_addr constant [28 x i8] c"java/security/MessageDigest\00", align 1
@.str.690 = private unnamed_addr constant [31 x i8] c"java/security/MessageDigestSpi\00", align 1
@.str.691 = private unnamed_addr constant [39 x i8] c"java/security/NoSuchAlgorithmException\00", align 1
@.str.692 = private unnamed_addr constant [27 x i8] c"java/security/SecureRandom\00", align 1
@.str.693 = private unnamed_addr constant [31 x i8] c"java/security/cert/Certificate\00", align 1
@.str.694 = private unnamed_addr constant [40 x i8] c"java/security/cert/CertificateException\00", align 1
@.str.695 = private unnamed_addr constant [35 x i8] c"java/security/cert/X509Certificate\00", align 1
@.str.696 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@.str.697 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@.str.698 = private unnamed_addr constant [26 x i8] c"java/net/ConnectException\00", align 1
@.str.699 = private unnamed_addr constant [27 x i8] c"java/net/HttpURLConnection\00", align 1
@.str.700 = private unnamed_addr constant [27 x i8] c"java/net/InetSocketAddress\00", align 1
@.str.701 = private unnamed_addr constant [27 x i8] c"java/net/ProtocolException\00", align 1
@.str.702 = private unnamed_addr constant [15 x i8] c"java/net/Proxy\00", align 1
@.str.703 = private unnamed_addr constant [20 x i8] c"java/net/Proxy$Type\00", align 1
@.str.704 = private unnamed_addr constant [16 x i8] c"java/net/Socket\00", align 1
@.str.705 = private unnamed_addr constant [23 x i8] c"java/net/SocketAddress\00", align 1
@.str.706 = private unnamed_addr constant [25 x i8] c"java/net/SocketException\00", align 1
@.str.707 = private unnamed_addr constant [32 x i8] c"java/net/SocketTimeoutException\00", align 1
@.str.708 = private unnamed_addr constant [33 x i8] c"java/net/UnknownServiceException\00", align 1
@.str.709 = private unnamed_addr constant [13 x i8] c"java/net/URL\00", align 1
@.str.710 = private unnamed_addr constant [23 x i8] c"java/net/URLConnection\00", align 1
@.str.711 = private unnamed_addr constant [13 x i8] c"java/io/File\00", align 1
@.str.712 = private unnamed_addr constant [23 x i8] c"java/io/FileDescriptor\00", align 1
@.str.713 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 1
@.str.714 = private unnamed_addr constant [18 x i8] c"java/io/Closeable\00", align 1
@.str.715 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 1
@.str.716 = private unnamed_addr constant [31 x i8] c"java/io/InterruptedIOException\00", align 1
@.str.717 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 1
@.str.718 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 1
@.str.719 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 1
@.str.720 = private unnamed_addr constant [25 x i8] c"java/io/RandomAccessFile\00", align 1
@.str.721 = private unnamed_addr constant [15 x i8] c"java/io/Reader\00", align 1
@.str.722 = private unnamed_addr constant [21 x i8] c"java/io/StringWriter\00", align 1
@.str.723 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.str.724 = private unnamed_addr constant [18 x i8] c"java/lang/Boolean\00", align 1
@.str.725 = private unnamed_addr constant [15 x i8] c"java/lang/Byte\00", align 1
@.str.726 = private unnamed_addr constant [20 x i8] c"java/lang/Character\00", align 1
@.str.727 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 1
@.str.728 = private unnamed_addr constant [29 x i8] c"java/lang/ClassCastException\00", align 1
@.str.729 = private unnamed_addr constant [22 x i8] c"java/lang/ClassLoader\00", align 1
@.str.730 = private unnamed_addr constant [17 x i8] c"java/lang/Double\00", align 1
@.str.731 = private unnamed_addr constant [15 x i8] c"java/lang/Enum\00", align 1
@.str.732 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 1
@.str.733 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 1
@.str.734 = private unnamed_addr constant [16 x i8] c"java/lang/Float\00", align 1
@.str.735 = private unnamed_addr constant [21 x i8] c"java/lang/Appendable\00", align 1
@.str.736 = private unnamed_addr constant [23 x i8] c"java/lang/CharSequence\00", align 1
@.str.737 = private unnamed_addr constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 1
@.str.738 = private unnamed_addr constant [32 x i8] c"java/lang/IllegalStateException\00", align 1
@.str.739 = private unnamed_addr constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 1
@.str.740 = private unnamed_addr constant [18 x i8] c"java/lang/Integer\00", align 1
@.str.741 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 1
@.str.742 = private unnamed_addr constant [15 x i8] c"java/lang/Long\00", align 1
@.str.743 = private unnamed_addr constant [31 x i8] c"java/lang/NullPointerException\00", align 1
@.str.744 = private unnamed_addr constant [17 x i8] c"java/lang/Number\00", align 1
@.str.745 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 1
@.str.746 = private unnamed_addr constant [27 x i8] c"java/lang/RuntimeException\00", align 1
@.str.747 = private unnamed_addr constant [28 x i8] c"java/lang/SecurityException\00", align 1
@.str.748 = private unnamed_addr constant [16 x i8] c"java/lang/Short\00", align 1
@.str.749 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 1
@.str.750 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 1
@.str.751 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 1
@.str.752 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@.str.753 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 1
@.str.754 = private unnamed_addr constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 1
@.str.755 = private unnamed_addr constant [24 x i8] c"mono/java/lang/Runnable\00", align 1
@.str.756 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 1
@.str.757 = private unnamed_addr constant [28 x i8] c"androidx/core/util/Consumer\00", align 1
@.str.758 = private unnamed_addr constant [29 x i8] c"androidx/core/util/Predicate\00", align 1
@.str.759 = private unnamed_addr constant [24 x i8] c"androidx/core/util/Pair\00", align 1
@.str.760 = private unnamed_addr constant [34 x i8] c"androidx/core/os/LocaleListCompat\00", align 1
@.str.761 = private unnamed_addr constant [44 x i8] c"androidx/core/internal/view/SupportMenuItem\00", align 1
@.str.762 = private unnamed_addr constant [30 x i8] c"androidx/core/graphics/Insets\00", align 1
@.str.763 = private unnamed_addr constant [47 x i8] c"androidx/core/graphics/drawable/DrawableCompat\00", align 1
@.str.764 = private unnamed_addr constant [36 x i8] c"androidx/core/content/ContextCompat\00", align 1
@.str.765 = private unnamed_addr constant [42 x i8] c"androidx/core/content/res/ResourcesCompat\00", align 1
@.str.766 = private unnamed_addr constant [55 x i8] c"androidx/core/content/res/ResourcesCompat$FontCallback\00", align 1
@.str.767 = private unnamed_addr constant [43 x i8] c"androidx/core/content/pm/PackageInfoCompat\00", align 1
@.str.768 = private unnamed_addr constant [40 x i8] c"androidx/core/app/ActivityOptionsCompat\00", align 1
@.str.769 = private unnamed_addr constant [36 x i8] c"androidx/core/app/ComponentActivity\00", align 1
@.str.770 = private unnamed_addr constant [46 x i8] c"androidx/core/app/ComponentActivity$ExtraData\00", align 1
@.str.771 = private unnamed_addr constant [40 x i8] c"androidx/core/app/SharedElementCallback\00", align 1
@.str.772 = private unnamed_addr constant [70 x i8] c"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener\00", align 1
@.str.773 = private unnamed_addr constant [35 x i8] c"androidx/core/app/TaskStackBuilder\00", align 1
@.str.774 = private unnamed_addr constant [38 x i8] c"androidx/core/widget/NestedScrollView\00", align 1
@.str.775 = private unnamed_addr constant [61 x i8] c"androidx/core/widget/NestedScrollView$OnScrollChangeListener\00", align 1
@.str.776 = private unnamed_addr constant [77 x i8] c"mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor\00", align 1
@.str.777 = private unnamed_addr constant [42 x i8] c"androidx/core/widget/CompoundButtonCompat\00", align 1
@.str.778 = private unnamed_addr constant [36 x i8] c"androidx/core/widget/TextViewCompat\00", align 1
@.str.779 = private unnamed_addr constant [47 x i8] c"androidx/core/view/AccessibilityDelegateCompat\00", align 1
@.str.780 = private unnamed_addr constant [34 x i8] c"androidx/core/view/ActionProvider\00", align 1
@.str.781 = private unnamed_addr constant [58 x i8] c"androidx/core/view/ActionProvider$SubUiVisibilityListener\00", align 1
@.str.782 = private unnamed_addr constant [74 x i8] c"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor\00", align 1
@.str.783 = private unnamed_addr constant [53 x i8] c"androidx/core/view/ActionProvider$VisibilityListener\00", align 1
@.str.784 = private unnamed_addr constant [69 x i8] c"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor\00", align 1
@.str.785 = private unnamed_addr constant [37 x i8] c"androidx/core/view/ContentInfoCompat\00", align 1
@.str.786 = private unnamed_addr constant [39 x i8] c"androidx/core/view/DisplayCutoutCompat\00", align 1
@.str.787 = private unnamed_addr constant [32 x i8] c"androidx/core/view/MenuProvider\00", align 1
@.str.788 = private unnamed_addr constant [47 x i8] c"androidx/core/view/OnApplyWindowInsetsListener\00", align 1
@.str.789 = private unnamed_addr constant [44 x i8] c"androidx/core/view/OnReceiveContentListener\00", align 1
@.str.790 = private unnamed_addr constant [33 x i8] c"androidx/core/view/ScrollingView\00", align 1
@.str.791 = private unnamed_addr constant [48 x i8] c"androidx/core/view/ViewPropertyAnimatorListener\00", align 1
@.str.792 = private unnamed_addr constant [54 x i8] c"androidx/core/view/ViewPropertyAnimatorUpdateListener\00", align 1
@.str.793 = private unnamed_addr constant [62 x i8] c"androidx/core/view/WindowInsetsAnimationControlListenerCompat\00", align 1
@.str.794 = private unnamed_addr constant [34 x i8] c"androidx/core/view/MenuItemCompat\00", align 1
@.str.795 = private unnamed_addr constant [57 x i8] c"androidx/core/view/MenuItemCompat$OnActionExpandListener\00", align 1
@.str.796 = private unnamed_addr constant [37 x i8] c"androidx/core/view/PointerIconCompat\00", align 1
@.str.797 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ScaleGestureDetectorCompat\00", align 1
@.str.798 = private unnamed_addr constant [30 x i8] c"androidx/core/view/ViewCompat\00", align 1
@.str.799 = private unnamed_addr constant [64 x i8] c"androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat\00", align 1
@.str.800 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ViewPropertyAnimatorCompat\00", align 1
@.str.801 = private unnamed_addr constant [47 x i8] c"androidx/core/view/WindowInsetsAnimationCompat\00", align 1
@.str.802 = private unnamed_addr constant [60 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat\00", align 1
@.str.803 = private unnamed_addr constant [56 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$Callback\00", align 1
@.str.804 = private unnamed_addr constant [57 x i8] c"androidx/core/view/WindowInsetsAnimationControllerCompat\00", align 1
@.str.805 = private unnamed_addr constant [38 x i8] c"androidx/core/view/WindowInsetsCompat\00", align 1
@.str.806 = private unnamed_addr constant [43 x i8] c"androidx/core/view/WindowInsetsCompat$Type\00", align 1
@.str.807 = private unnamed_addr constant [48 x i8] c"androidx/core/view/WindowInsetsControllerCompat\00", align 1
@.str.808 = private unnamed_addr constant [84 x i8] c"androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener\00", align 1
@.str.809 = private unnamed_addr constant [100 x i8] c"mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor\00", align 1
@.str.810 = private unnamed_addr constant [61 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat\00", align 1
@.str.811 = private unnamed_addr constant [87 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat\00", align 1
@.str.812 = private unnamed_addr constant [82 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat\00", align 1
@.str.813 = private unnamed_addr constant [86 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat\00", align 1
@.str.814 = private unnamed_addr constant [77 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat\00", align 1
@.str.815 = private unnamed_addr constant [85 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat\00", align 1
@.str.816 = private unnamed_addr constant [65 x i8] c"androidx/core/view/accessibility/AccessibilityNodeProviderCompat\00", align 1
@.str.817 = private unnamed_addr constant [63 x i8] c"androidx/core/view/accessibility/AccessibilityWindowInfoCompat\00", align 1
@.str.818 = private unnamed_addr constant [75 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments\00", align 1
@.str.819 = private unnamed_addr constant [58 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand\00", align 1
@.str.820 = private unnamed_addr constant [41 x i8] c"androidx/core/text/PrecomputedTextCompat\00", align 1
@.str.821 = private unnamed_addr constant [48 x i8] c"androidx/core/text/PrecomputedTextCompat$Params\00", align 1
@.str.822 = private unnamed_addr constant [36 x i8] c"androidx/lifecycle/SavedStateHandle\00", align 1
@.str.823 = private unnamed_addr constant [39 x i8] c"androidx/fragment/app/FragmentActivity\00", align 1
@.str.824 = private unnamed_addr constant [31 x i8] c"androidx/fragment/app/Fragment\00", align 1
@.str.825 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/Fragment$SavedState\00", align 1
@.str.826 = private unnamed_addr constant [40 x i8] c"androidx/fragment/app/FragmentContainer\00", align 1
@.str.827 = private unnamed_addr constant [44 x i8] c"androidx/fragment/app/FragmentContainerView\00", align 1
@.str.828 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentFactory\00", align 1
@.str.829 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/FragmentHostCallback\00", align 1
@.str.830 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentManager\00", align 1
@.str.831 = private unnamed_addr constant [53 x i8] c"androidx/fragment/app/FragmentManager$BackStackEntry\00", align 1
@.str.832 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks\00", align 1
@.str.833 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$OnBackStackChangedListener\00", align 1
@.str.834 = private unnamed_addr constant [81 x i8] c"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor\00", align 1
@.str.835 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/FragmentTransaction\00", align 1
@.str.836 = private unnamed_addr constant [47 x i8] c"androidx/fragment/app/FragmentOnAttachListener\00", align 1
@.str.837 = private unnamed_addr constant [63 x i8] c"mono/androidx/fragment/app/FragmentOnAttachListenerImplementor\00", align 1
@.str.838 = private unnamed_addr constant [45 x i8] c"androidx/fragment/app/FragmentResultListener\00", align 1
@.str.839 = private unnamed_addr constant [52 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode\00", align 1
@.str.840 = private unnamed_addr constant [59 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode$Policy\00", align 1
@.str.841 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/strictmode/Violation\00", align 1
@.str.842 = private unnamed_addr constant [36 x i8] c"androidx/customview/widget/Openable\00", align 1
@.str.843 = private unnamed_addr constant [43 x i8] c"androidx/navigation/ui/AppBarConfiguration\00", align 1
@.str.844 = private unnamed_addr constant [51 x i8] c"androidx/navigation/ui/AppBarConfiguration$Builder\00", align 1
@.str.845 = private unnamed_addr constant [64 x i8] c"androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener\00", align 1
@.str.846 = private unnamed_addr constant [36 x i8] c"androidx/navigation/ui/NavigationUI\00", align 1
@.str.847 = private unnamed_addr constant [55 x i8] c"androidx/browser/customtabs/CustomTabColorSchemeParams\00", align 1
@.str.848 = private unnamed_addr constant [45 x i8] c"androidx/browser/customtabs/CustomTabsIntent\00", align 1
@.str.849 = private unnamed_addr constant [53 x i8] c"androidx/browser/customtabs/CustomTabsIntent$Builder\00", align 1
@.str.850 = private unnamed_addr constant [46 x i8] c"androidx/browser/customtabs/CustomTabsSession\00", align 1
@.str.851 = private unnamed_addr constant [61 x i8] c"androidx/browser/customtabs/CustomTabsSession$PendingSession\00", align 1
@.str.852 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavController\00", align 1
@.str.853 = private unnamed_addr constant [63 x i8] c"androidx/navigation/NavController$OnDestinationChangedListener\00", align 1
@.str.854 = private unnamed_addr constant [79 x i8] c"mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor\00", align 1
@.str.855 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkBuilder\00", align 1
@.str.856 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavHostController\00", align 1
@.str.857 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavInflater\00", align 1
@.str.858 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/GridLayoutManager\00", align 1
@.str.859 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup\00", align 1
@.str.860 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchUIUtil\00", align 1
@.str.861 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchHelper\00", align 1
@.str.862 = private unnamed_addr constant [54 x i8] c"androidx/recyclerview/widget/ItemTouchHelper$Callback\00", align 1
@.str.863 = private unnamed_addr constant [49 x i8] c"androidx/recyclerview/widget/LinearLayoutManager\00", align 1
@.str.864 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/LinearSmoothScroller\00", align 1
@.str.865 = private unnamed_addr constant [46 x i8] c"androidx/recyclerview/widget/LinearSnapHelper\00", align 1
@.str.866 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/OrientationHelper\00", align 1
@.str.867 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/PagerSnapHelper\00", align 1
@.str.868 = private unnamed_addr constant [42 x i8] c"androidx/recyclerview/widget/RecyclerView\00", align 1
@.str.869 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter\00", align 1
@.str.870 = private unnamed_addr constant [73 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy\00", align 1
@.str.871 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$AdapterDataObserver\00", align 1
@.str.872 = private unnamed_addr constant [68 x i8] c"androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback\00", align 1
@.str.873 = private unnamed_addr constant [60 x i8] c"androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory\00", align 1
@.str.874 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator\00", align 1
@.str.875 = private unnamed_addr constant [84 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener\00", align 1
@.str.876 = private unnamed_addr constant [70 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo\00", align 1
@.str.877 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemDecoration\00", align 1
@.str.878 = private unnamed_addr constant [56 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager\00", align 1
@.str.879 = private unnamed_addr constant [79 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry\00", align 1
@.str.880 = private unnamed_addr constant [67 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties\00", align 1
@.str.881 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutParams\00", align 1
@.str.882 = private unnamed_addr constant [75 x i8] c"androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener\00", align 1
@.str.883 = private unnamed_addr constant [91 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor\00", align 1
@.str.884 = private unnamed_addr constant [58 x i8] c"androidx/recyclerview/widget/RecyclerView$OnFlingListener\00", align 1
@.str.885 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$OnItemTouchListener\00", align 1
@.str.886 = private unnamed_addr constant [78 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor\00", align 1
@.str.887 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$OnScrollListener\00", align 1
@.str.888 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecycledViewPool\00", align 1
@.str.889 = private unnamed_addr constant [51 x i8] c"androidx/recyclerview/widget/RecyclerView$Recycler\00", align 1
@.str.890 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecyclerListener\00", align 1
@.str.891 = private unnamed_addr constant [75 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor\00", align 1
@.str.892 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller\00", align 1
@.str.893 = private unnamed_addr constant [64 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action\00", align 1
@.str.894 = private unnamed_addr constant [48 x i8] c"androidx/recyclerview/widget/RecyclerView$State\00", align 1
@.str.895 = private unnamed_addr constant [61 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewCacheExtension\00", align 1
@.str.896 = private unnamed_addr constant [53 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewHolder\00", align 1
@.str.897 = private unnamed_addr constant [63 x i8] c"androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate\00", align 1
@.str.898 = private unnamed_addr constant [40 x i8] c"androidx/recyclerview/widget/SnapHelper\00", align 1
@.str.899 = private unnamed_addr constant [39 x i8] c"androidx/savedstate/SavedStateRegistry\00", align 1
@.str.900 = private unnamed_addr constant [58 x i8] c"androidx/savedstate/SavedStateRegistry$SavedStateProvider\00", align 1
@.str.901 = private unnamed_addr constant [54 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout\00", align 1
@.str.902 = private unnamed_addr constant [78 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback\00", align 1
@.str.903 = private unnamed_addr constant [72 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener\00", align 1
@.str.904 = private unnamed_addr constant [88 x i8] c"mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor\00", align 1
@.str.905 = private unnamed_addr constant [38 x i8] c"androidx/viewpager2/widget/ViewPager2\00", align 1
@.str.906 = private unnamed_addr constant [59 x i8] c"androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback\00", align 1
@.str.907 = private unnamed_addr constant [54 x i8] c"androidx/viewpager2/widget/ViewPager2$PageTransformer\00", align 1
@.str.908 = private unnamed_addr constant [49 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter\00", align 1
@.str.909 = private unnamed_addr constant [47 x i8] c"androidx/viewpager2/adapter/FragmentViewHolder\00", align 1
@.str.910 = private unnamed_addr constant [41 x i8] c"crc648316b0a9aa8cfd61/BrowserTabActivity\00", align 1
@.str.911 = private unnamed_addr constant [49 x i8] c"microsoft/identity/client/AuthenticationActivity\00", align 1
@.str.912 = private unnamed_addr constant [50 x i8] c"crc64ed1888fb4925e3b7/AuthenticationAgentActivity\00", align 1
@.str.913 = private unnamed_addr constant [68 x i8] c"crc64ed1888fb4925e3b7/AuthenticationAgentActivity_CoreWebViewClient\00", align 1
@.str.914 = private unnamed_addr constant [59 x i8] c"androidx/appcompat/graphics/drawable/DrawableWrapperCompat\00", align 1
@.str.915 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/content/res/AppCompatResources\00", align 1
@.str.916 = private unnamed_addr constant [55 x i8] c"crc64f728827fec74e9c3/TapWindowTracker_GestureListener\00", align 1
@.str.917 = private unnamed_addr constant [40 x i8] c"crc64f728827fec74e9c3/Toolbar_Container\00", align 1
@.str.918 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/ColorChangeRevealDrawable\00", align 1
@.str.919 = private unnamed_addr constant [52 x i8] c"crc64338477404e88479c/ControlsAccessibilityDelegate\00", align 1
@.str.920 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler\00", align 1
@.str.921 = private unnamed_addr constant [69 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData\00", align 1
@.str.922 = private unnamed_addr constant [66 x i8] c"crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView\00", align 1
@.str.923 = private unnamed_addr constant [40 x i8] c"crc64338477404e88479c/FragmentContainer\00", align 1
@.str.924 = private unnamed_addr constant [46 x i8] c"crc64338477404e88479c/GenericAnimatorListener\00", align 1
@.str.925 = private unnamed_addr constant [50 x i8] c"crc64338477404e88479c/GenericGlobalLayoutListener\00", align 1
@.str.926 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/GenericMenuClickListener\00", align 1
@.str.927 = private unnamed_addr constant [45 x i8] c"crc64338477404e88479c/GradientStrokeDrawable\00", align 1
@.str.928 = private unnamed_addr constant [43 x i8] c"crc64338477404e88479c/InnerGestureListener\00", align 1
@.str.929 = private unnamed_addr constant [41 x i8] c"crc64338477404e88479c/InnerScaleListener\00", align 1
@.str.930 = private unnamed_addr constant [36 x i8] c"crc64338477404e88479c/MauiViewPager\00", align 1
@.str.931 = private unnamed_addr constant [54 x i8] c"crc64338477404e88479c/MultiPageFragmentStateAdapter_1\00", align 1
@.str.932 = private unnamed_addr constant [44 x i8] c"crc64338477404e88479c/PointerGestureHandler\00", align 1
@.str.933 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/TapAndPanGestureDetector\00", align 1
@.str.934 = private unnamed_addr constant [60 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalContainer\00", align 1
@.str.935 = private unnamed_addr constant [74 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalContainer_ModalFragment\00", align 1
@.str.936 = private unnamed_addr constant [36 x i8] c"crc640ec207abc449b2ca/ContainerView\00", align 1
@.str.937 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/CustomFrameLayout\00", align 1
@.str.938 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellContentFragment\00", align 1
@.str.939 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellFlyoutLayout\00", align 1
@.str.940 = private unnamed_addr constant [49 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter\00", align 1
@.str.941 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout\00", align 1
@.str.942 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder\00", align 1
@.str.943 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRenderer\00", align 1
@.str.944 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer\00", align 1
@.str.945 = private unnamed_addr constant [74 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer\00", align 1
@.str.946 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/RecyclerViewContainer\00", align 1
@.str.947 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ScrollLayoutManager\00", align 1
@.str.948 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellFragmentContainer\00", align 1
@.str.949 = private unnamed_addr constant [48 x i8] c"crc640ec207abc449b2ca/ShellFragmentStateAdapter\00", align 1
@.str.950 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellItemRenderer\00", align 1
@.str.951 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/ShellItemRendererBase\00", align 1
@.str.952 = private unnamed_addr constant [41 x i8] c"crc640ec207abc449b2ca/ShellPageContainer\00", align 1
@.str.953 = private unnamed_addr constant [38 x i8] c"crc640ec207abc449b2ca/ShellSearchView\00", align 1
@.str.954 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper\00", align 1
@.str.955 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter\00", align 1
@.str.956 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter\00", align 1
@.str.957 = private unnamed_addr constant [59 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper\00", align 1
@.str.958 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer\00", align 1
@.str.959 = private unnamed_addr constant [64 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged\00", align 1
@.str.960 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker\00", align 1
@.str.961 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable\00", align 1
@.str.962 = private unnamed_addr constant [49 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_TempView\00", align 1
@.str.963 = private unnamed_addr constant [50 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_Listeners\00", align 1
@.str.964 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/CarouselViewAdapter_2\00", align 1
@.str.965 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/EmptyViewAdapter\00", align 1
@.str.966 = private unnamed_addr constant [50 x i8] c"crc645d80431ce5f73f11/GroupableItemsViewAdapter_2\00", align 1
@.str.967 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/ItemsViewAdapter_2\00", align 1
@.str.968 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2\00", align 1
@.str.969 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/SelectableItemsViewAdapter_2\00", align 1
@.str.970 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/StructuredItemsViewAdapter_2\00", align 1
@.str.971 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/CarouselSpacingItemDecoration\00", align 1
@.str.972 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/CarouselViewOnScrollListener\00", align 1
@.str.973 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/DataChangeObserver\00", align 1
@.str.974 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/GridLayoutSpanSizeLookup\00", align 1
@.str.975 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/ItemContentView\00", align 1
@.str.976 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView\00", align 1
@.str.977 = private unnamed_addr constant [82 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener\00", align 1
@.str.978 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/MauiRecyclerView_3\00", align 1
@.str.979 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/PositionalSmoothScroller\00", align 1
@.str.980 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/RecyclerViewScrollListener_2\00", align 1
@.str.981 = private unnamed_addr constant [35 x i8] c"crc645d80431ce5f73f11/ScrollHelper\00", align 1
@.str.982 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SelectableViewHolder\00", align 1
@.str.983 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/SimpleItemTouchHelperCallback\00", align 1
@.str.984 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SimpleViewHolder\00", align 1
@.str.985 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SizedItemContentView\00", align 1
@.str.986 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/CenterSnapHelper\00", align 1
@.str.987 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/EdgeSnapHelper\00", align 1
@.str.988 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/EndSingleSnapHelper\00", align 1
@.str.989 = private unnamed_addr constant [36 x i8] c"crc645d80431ce5f73f11/EndSnapHelper\00", align 1
@.str.990 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper\00", align 1
@.str.991 = private unnamed_addr constant [64 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener\00", align 1
@.str.992 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SingleSnapHelper\00", align 1
@.str.993 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/StartSingleSnapHelper\00", align 1
@.str.994 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/StartSnapHelper\00", align 1
@.str.995 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/SpacingItemDecoration\00", align 1
@.str.996 = private unnamed_addr constant [46 x i8] c"crc645d80431ce5f73f11/TemplatedItemViewHolder\00", align 1
@.str.997 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/TextViewHolder\00", align 1
@.str.998 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/FrameRenderer\00", align 1
@.str.999 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/ViewRenderer\00", align 1
@.str.1000 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/ViewRenderer_2\00", align 1
@.str.1001 = private unnamed_addr constant [46 x i8] c"crc64e1fb321c08285b90/VisualElementRenderer_1\00", align 1
@.str.1002 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/BaseCellView\00", align 1
@.str.1003 = private unnamed_addr constant [34 x i8] c"crc64e1fb321c08285b90/CellAdapter\00", align 1
@.str.1004 = private unnamed_addr constant [50 x i8] c"crc64e1fb321c08285b90/CellRenderer_RendererHolder\00", align 1
@.str.1005 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/ConditionalFocusLayout\00", align 1
@.str.1006 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/EntryCellEditText\00", align 1
@.str.1007 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/EntryCellView\00", align 1
@.str.1008 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/GroupedListViewAdapter\00", align 1
@.str.1009 = private unnamed_addr constant [38 x i8] c"crc64e1fb321c08285b90/ListViewAdapter\00", align 1
@.str.1010 = private unnamed_addr constant [39 x i8] c"crc64e1fb321c08285b90/ListViewRenderer\00", align 1
@.str.1011 = private unnamed_addr constant [49 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_Container\00", align 1
@.str.1012 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling\00", align 1
@.str.1013 = private unnamed_addr constant [74 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener\00", align 1
@.str.1014 = private unnamed_addr constant [62 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector\00", align 1
@.str.1015 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/SwitchCellView\00", align 1
@.str.1016 = private unnamed_addr constant [52 x i8] c"crc64e1fb321c08285b90/TextCellRenderer_TextCellView\00", align 1
@.str.1017 = private unnamed_addr constant [57 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer\00", align 1
@.str.1018 = private unnamed_addr constant [76 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener\00", align 1
@.str.1019 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener\00", align 1
@.str.1020 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/TableViewModelRenderer\00", align 1
@.str.1021 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/TableViewRenderer\00", align 1

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [41 x i8] c"Xamarin.AndroidX.Lifecycle.LiveData.Core\00", align 1
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.ViewPager\00", align 1
@.TypeMapModule.2_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.KotlinX.Coroutines.Core.Jvm\00", align 1
@.TypeMapModule.3_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.Kotlin.StdLib\00", align 1
@.TypeMapModule.4_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Graphics\00", align 1
@.TypeMapModule.5_assembly_name = private unnamed_addr constant [24 x i8] c"Xamarin.AndroidX.Loader\00", align 1
@.TypeMapModule.6_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.DrawerLayout\00", align 1
@.TypeMapModule.7_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.CursorAdapter\00", align 1
@.TypeMapModule.8_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Activity\00", align 1
@.TypeMapModule.9_assembly_name = private unnamed_addr constant [34 x i8] c"Xamarin.AndroidX.Lifecycle.Common\00", align 1
@.TypeMapModule.10_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.AppCompat\00", align 1
@.TypeMapModule.11_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Navigation.Fragment\00", align 1
@.TypeMapModule.12_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.CoordinatorLayout\00", align 1
@.TypeMapModule.13_assembly_name = private unnamed_addr constant [15 x i8] c"Microsoft.Maui\00", align 1
@.TypeMapModule.14_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModel\00", align 1
@.TypeMapModule.15_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.Collection\00", align 1
@.TypeMapModule.16_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.CardView\00", align 1
@.TypeMapModule.17_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.Google.Android.Material\00", align 1
@.TypeMapModule.18_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.Navigation.Common\00", align 1
@.TypeMapModule.19_assembly_name = private unnamed_addr constant [26 x i8] c"Microsoft.Maui.Essentials\00", align 1
@.TypeMapModule.20_assembly_name = private unnamed_addr constant [12 x i8] c"CapaUI-Maui\00", align 1
@.TypeMapModule.21_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1
@.TypeMapModule.22_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.AndroidX.Core\00", align 1
@.TypeMapModule.23_assembly_name = private unnamed_addr constant [47 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModelSavedState\00", align 1
@.TypeMapModule.24_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Fragment\00", align 1
@.TypeMapModule.25_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.CustomView\00", align 1
@.TypeMapModule.26_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.Navigation.UI\00", align 1
@.TypeMapModule.27_assembly_name = private unnamed_addr constant [25 x i8] c"Xamarin.AndroidX.Browser\00", align 1
@.TypeMapModule.28_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.Navigation.Runtime\00", align 1
@.TypeMapModule.29_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.RecyclerView\00", align 1
@.TypeMapModule.30_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.SavedState\00", align 1
@.TypeMapModule.31_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.SwipeRefreshLayout\00", align 1
@.TypeMapModule.32_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.ViewPager2\00", align 1
@.TypeMapModule.33_assembly_name = private unnamed_addr constant [26 x i8] c"Microsoft.Identity.Client\00", align 1
@.TypeMapModule.34_assembly_name = private unnamed_addr constant [46 x i8] c"Xamarin.AndroidX.AppCompat.AppCompatResources\00", align 1
@.TypeMapModule.35_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Controls\00", align 1

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
