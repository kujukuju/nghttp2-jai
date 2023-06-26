#import "Bindings_Generator";
#import "Basic";
#import "File";
#import "String";
#import "BuildCpp";
#import "File_Utilities";

#run {
    using opts: Generate_Bindings_Options;
    array_add(*system_include_paths, GENERATOR_DEFAULT_SYSTEM_INCLUDE_PATH);

    array_add(*libpaths, "bin/win");
    array_add(*libnames, "nghttp2");
    array_add(*include_paths, tprint("%nghttp2/cmake-build-relwithdebinfo/lib/includes/", #filepath));
    array_add(*include_paths, tprint("%nghttp2/lib/includes/", #filepath));
    // array_add(*include_paths, tprint("%nghttp2/lib/", #filepath));
    // array_add(*source_files, tprint("%nghttp2/cmake-build-relwithdebinfo/lib/includes/nghttp2/nghttp2ver.h", #filepath));
    array_add(*source_files, tprint("%nghttp2/cmake-build-relwithdebinfo/config.h", #filepath));
    array_add(*source_files, tprint("%nghttp2/lib/includes/nghttp2/nghttp2.h", #filepath));
    // files := file_list(tprint("%nghttp2/lib/", #filepath), true);
    // for file: files {
    //     if ends_with(file, ".c") {
    //         print("%\n", file);
    //         array_add(*source_files, file);
    //     }
    // }

    array_add(*extra_clang_arguments, "-Wno-error=implicit-int");
    array_add(*extra_clang_arguments, "-x", "c++");
    generate_compile_time_struct_checks = false;

    array_add(*system_include_paths, "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.22621.0\\ucrt");
    array_add(*system_include_paths, "C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\VC\\Tools\\MSVC\\14.31.31103\\include");
    // array_add(*system_include_paths, "C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\Common7\\IDE\\VC\\Linux\\include\\usr\\include\\x86_64-linux-gnu\\sys");

    // visitor = my_visitor;

    generate_bindings(opts, "module.jai");
}

// my_visitor :: (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {
//     if !parent_decl {
//         /*if array_find(TYPES_TO_OMIT, decl.name) {
//             decl.decl_flags |= .OMIT_FROM_OUTPUT;
//             return .STOP;
//         }*/

//         if begins_with(decl.name, "VK") || begins_with(decl.name, "Vk") || begins_with(decl.name, "PFN_vk") {
//             decl.decl_flags |= .OMIT_FROM_OUTPUT;
//             return .STOP;
//         }
//     }
//     return .RECURSE;
// }