; ModuleID = 'test11.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1
  call void @test(i32 0), !dbg !15
  call void @test(i32 1), !dbg !16
  ret i32 0, !dbg !17
}

; Function Attrs: nounwind uwtable
define internal void @test(i32 %branch) #0 {
  %1 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %branch, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !18), !dbg !19
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !20), !dbg !21
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !22), !dbg !23
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !24), !dbg !25
  call void @llvm.dbg.declare(metadata !{i32* %d}, metadata !26), !dbg !27
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !28), !dbg !29
  %2 = load i32* %1, align 4, !dbg !30
  %3 = icmp ne i32 %2, 0, !dbg !30
  br i1 %3, label %4, label %5, !dbg !30

; <label>:4                                       ; preds = %0
  br label %13, !dbg !32

; <label>:5                                       ; preds = %0
  store i32 1, i32* %a, align 4, !dbg !34
  store i32 2, i32* %b, align 4, !dbg !35
  store i32 3, i32* %c, align 4, !dbg !36
  store i32 4, i32* %d, align 4, !dbg !37
  store i32 0, i32* %k, align 4, !dbg !38
  br label %6, !dbg !38

; <label>:6                                       ; preds = %17, %5
  %7 = load i32* %k, align 4, !dbg !40
  %8 = icmp slt i32 %7, 100, !dbg !40
  br i1 %8, label %9, label %20, !dbg !40

; <label>:9                                       ; preds = %6
  %10 = load i32* %a, align 4, !dbg !43
  %11 = load i32* %b, align 4, !dbg !43
  %12 = add nsw i32 %10, %11, !dbg !43
  store i32 %12, i32* %c, align 4, !dbg !43
  br label %13, !dbg !43

; <label>:13                                      ; preds = %9, %4
  %14 = load i32* %a, align 4, !dbg !45
  %15 = load i32* %b, align 4, !dbg !45
  %16 = sub nsw i32 %14, %15, !dbg !45
  store i32 %16, i32* %d, align 4, !dbg !45
  br label %17, !dbg !46

; <label>:17                                      ; preds = %13
  %18 = load i32* %k, align 4, !dbg !47
  %19 = add nsw i32 %18, 1, !dbg !47
  store i32 %19, i32* %k, align 4, !dbg !47
  br label %6, !dbg !47

; <label>:20                                      ; preds = %6
  %21 = load i32* %a, align 4, !dbg !48
  %22 = load i32* %b, align 4, !dbg !48
  %23 = load i32* %c, align 4, !dbg !48
  %24 = load i32* %d, align 4, !dbg !48
  %25 = load i32* %k, align 4, !dbg !48
  %26 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0), i32 %21, i32 %22, i32 %23, i32 %24, i32 %25), !dbg !48
  ret void, !dbg !49
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"Ubuntu clang version 3.5.2-3ubuntu1 (tags/RELEASE_352/final) (based on LLVM 3.5.2)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/zeeshan/Desktop/Lab3/lab_3/test11.c] [DW_LANG_C99]
!1 = metadata !{metadata !"test11.c", metadata !"/home/zeeshan/Desktop/Lab3/lab_3"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 28, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 29} ; [ DW_TAG_subprogram ] [line 28] [def] [scope 29] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/zeeshan/Desktop/Lab3/lab_3/test11.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"test", metadata !"test", metadata !"", i32 6, metadata !10, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @test, null, null, metadata !2, i32 7} ; [ DW_TAG_subprogram ] [line 6] [local] [def] [scope 7] [test]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{null, metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"Ubuntu clang version 3.5.2-3ubuntu1 (tags/RELEASE_352/final) (based on LLVM 3.5.2)"}
!15 = metadata !{i32 30, i32 5, metadata !4, null}
!16 = metadata !{i32 31, i32 5, metadata !4, null}
!17 = metadata !{i32 32, i32 5, metadata !4, null}
!18 = metadata !{i32 786689, metadata !9, metadata !"branch", metadata !5, i32 16777222, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [branch] [line 6]
!19 = metadata !{i32 6, i32 22, metadata !9, null}
!20 = metadata !{i32 786688, metadata !9, metadata !"a", metadata !5, i32 8, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 8]
!21 = metadata !{i32 8, i32 9, metadata !9, null} ; [ DW_TAG_imported_declaration ]
!22 = metadata !{i32 786688, metadata !9, metadata !"b", metadata !5, i32 8, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 8]
!23 = metadata !{i32 8, i32 12, metadata !9, null} ; [ DW_TAG_imported_declaration ]
!24 = metadata !{i32 786688, metadata !9, metadata !"c", metadata !5, i32 8, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 8]
!25 = metadata !{i32 8, i32 15, metadata !9, null} ; [ DW_TAG_imported_declaration ]
!26 = metadata !{i32 786688, metadata !9, metadata !"d", metadata !5, i32 8, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 8]
!27 = metadata !{i32 8, i32 18, metadata !9, null} ; [ DW_TAG_imported_declaration ]
!28 = metadata !{i32 786688, metadata !9, metadata !"k", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 9]
!29 = metadata !{i32 9, i32 9, metadata !9, null}
!30 = metadata !{i32 11, i32 9, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !9, i32 11, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/zeeshan/Desktop/Lab3/lab_3/test11.c]
!32 = metadata !{i32 12, i32 9, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !31, i32 11, i32 17, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/zeeshan/Desktop/Lab3/lab_3/test11.c]
!34 = metadata !{i32 15, i32 5, metadata !9, null}
!35 = metadata !{i32 16, i32 5, metadata !9, null}
!36 = metadata !{i32 17, i32 5, metadata !9, null}
!37 = metadata !{i32 18, i32 5, metadata !9, null}
!38 = metadata !{i32 19, i32 10, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !9, i32 19, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/zeeshan/Desktop/Lab3/lab_3/test11.c]
!40 = metadata !{i32 19, i32 10, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !42, i32 19, i32 10, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [/home/zeeshan/Desktop/Lab3/lab_3/test11.c]
!42 = metadata !{i32 786443, metadata !1, metadata !39, i32 19, i32 10, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [/home/zeeshan/Desktop/Lab3/lab_3/test11.c]
!43 = metadata !{i32 20, i32 9, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !39, i32 19, i32 31, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/zeeshan/Desktop/Lab3/lab_3/test11.c]
!45 = metadata !{i32 22, i32 9, metadata !44, null}
!46 = metadata !{i32 23, i32 5, metadata !44, null}
!47 = metadata !{i32 19, i32 26, metadata !39, null}
!48 = metadata !{i32 25, i32 5, metadata !9, null}
!49 = metadata !{i32 26, i32 1, metadata !9, null}
