; ModuleID = 'test02.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 0, i32* %1
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !12), !dbg !13
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !14), !dbg !15
  store i32 30, i32* %t, align 4, !dbg !16
  %2 = load i32* %k, align 4, !dbg !17
  %3 = load i32* %t, align 4, !dbg !17
  %4 = icmp sgt i32 %2, %3, !dbg !17
  br i1 %4, label %5, label %8, !dbg !17

; <label>:5                                       ; preds = %0
  %6 = load i32* %k, align 4, !dbg !19
  %7 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %6), !dbg !19
  br label %10, !dbg !21

; <label>:8                                       ; preds = %0
  %9 = load i32* %t, align 4, !dbg !22
  store i32 %9, i32* %k, align 4, !dbg !22
  br label %10

; <label>:10                                      ; preds = %8, %5
  %11 = load i32* %k, align 4, !dbg !24
  %12 = load i32* %t, align 4, !dbg !24
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i32 %11, i32 %12), !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"Ubuntu clang version 3.5.2-3ubuntu1 (tags/RELEASE_352/final) (based on LLVM 3.5.2)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [/home/zeeshan/Desktop/Lab3/lab_3/test02.c] [DW_LANG_C99]
!1 = metadata !{metadata !"test02.c", metadata !"/home/zeeshan/Desktop/Lab3/lab_3"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 6, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 7} ; [ DW_TAG_subprogram ] [line 6] [def] [scope 7] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/zeeshan/Desktop/Lab3/lab_3/test02.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"Ubuntu clang version 3.5.2-3ubuntu1 (tags/RELEASE_352/final) (based on LLVM 3.5.2)"}
!12 = metadata !{i32 786688, metadata !4, metadata !"k", metadata !5, i32 8, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 8]
!13 = metadata !{i32 8, i32 9, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!14 = metadata !{i32 786688, metadata !4, metadata !"t", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 9]
!15 = metadata !{i32 9, i32 9, metadata !4, null}
!16 = metadata !{i32 9, i32 5, metadata !4, null}
!17 = metadata !{i32 11, i32 8, metadata !18, null}
!18 = metadata !{i32 786443, metadata !1, metadata !4, i32 11, i32 8, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/zeeshan/Desktop/Lab3/lab_3/test02.c]
!19 = metadata !{i32 12, i32 9, metadata !20, null}
!20 = metadata !{i32 786443, metadata !1, metadata !18, i32 11, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/zeeshan/Desktop/Lab3/lab_3/test02.c]
!21 = metadata !{i32 13, i32 5, metadata !20, null}
!22 = metadata !{i32 15, i32 9, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !18, i32 14, i32 10, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/zeeshan/Desktop/Lab3/lab_3/test02.c]
!24 = metadata !{i32 18, i32 5, metadata !4, null}
!25 = metadata !{i32 20, i32 5, metadata !4, null}
