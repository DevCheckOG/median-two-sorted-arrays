#loop_annotation = #llvm.loop_annotation<mustProgress = true>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i128, dense<128> : vector<2xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>} {
  llvm.mlir.global private unnamed_addr constant @__const.main.nums1(dense<[1, 3]> : tensor<2xi32>) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : !llvm.array<2 x i32>
  llvm.mlir.global private unnamed_addr constant @__const.main.nums2(dense<2> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : !llvm.array<1 x i32>
  llvm.mlir.global private unnamed_addr constant @".str"("Example 1:\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.1"("nums1 = [1, 3], nums2 = [2]\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.2"("Median: %.5f\0A\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @__const.main.nums3(dense<[1, 2]> : tensor<2xi32>) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : !llvm.array<2 x i32>
  llvm.mlir.global private unnamed_addr constant @__const.main.nums4(dense<[3, 4]> : tensor<2xi32>) {addr_space = 0 : i32, alignment = 4 : i64, dso_local} : !llvm.array<2 x i32>
  llvm.mlir.global private unnamed_addr constant @".str.3"("Example 2:\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.4"("nums1 = [1, 2], nums2 = [3, 4]\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.5"("Example 3:\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.6"("nums1 = [0, 0], nums2 = [0, 0]\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.mlir.global private unnamed_addr constant @".str.7"("Median: %.5f\0A\00") {addr_space = 0 : i32, alignment = 1 : i64, dso_local}
  llvm.func @findMedianSortedArrays(%arg0: !llvm.ptr {llvm.noundef}, %arg1: i32 {llvm.noundef}, %arg2: !llvm.ptr {llvm.noundef}, %arg3: i32 {llvm.noundef}) -> f64 attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(0.000000e+00 : f64) : f64
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.mlir.constant(-2147483648 : i32) : i32
    %5 = llvm.mlir.constant(2147483647 : i32) : i32
    %6 = llvm.mlir.constant(2.000000e+00 : f64) : f64
    %7 = llvm.alloca %0 x f64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %8 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %9 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %10 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %11 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %12 = llvm.alloca %0 x !llvm.ptr {alignment = 8 : i64} : (i32) -> !llvm.ptr
    %13 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %14 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %15 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %16 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %17 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %18 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %19 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %20 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %21 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg0, %8 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg1, %9 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %arg2, %10 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    llvm.store %arg3, %11 {alignment = 4 : i64} : i32, !llvm.ptr
    %22 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %23 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %24 = llvm.icmp "sgt" %22, %23 : i32
    llvm.cond_br %24, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %25 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %25, %12 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %26 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %26, %8 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %27 = llvm.load %12 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    llvm.store %27, %10 {alignment = 8 : i64} : !llvm.ptr, !llvm.ptr
    %28 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %28, %13 {alignment = 4 : i64} : i32, !llvm.ptr
    %29 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %29, %9 {alignment = 4 : i64} : i32, !llvm.ptr
    %30 = llvm.load %13 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %30, %11 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    llvm.store %1, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    %31 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.store %31, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb2, ^bb25
    %32 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %33 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %34 = llvm.icmp "sle" %32, %33 : i32
    llvm.cond_br %34, ^bb4, ^bb26
  ^bb4:  // pred: ^bb3
    %35 = llvm.load %14 {alignment = 4 : i64} : !llvm.ptr -> i32
    %36 = llvm.load %15 {alignment = 4 : i64} : !llvm.ptr -> i32
    %37 = llvm.add %35, %36  : i32
    %38 = llvm.sdiv %37, %3  : i32
    llvm.store %38, %16 {alignment = 4 : i64} : i32, !llvm.ptr
    %39 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %40 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %41 = llvm.add %39, %40  : i32
    %42 = llvm.add %41, %0  : i32
    %43 = llvm.sdiv %42, %3  : i32
    %44 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %45 = llvm.sub %43, %44  : i32
    llvm.store %45, %17 {alignment = 4 : i64} : i32, !llvm.ptr
    %46 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %47 = llvm.icmp "eq" %46, %1 : i32
    llvm.cond_br %47, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.br ^bb7(%4 : i32)
  ^bb6:  // pred: ^bb4
    %48 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %49 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %50 = llvm.sub %49, %0  : i32
    %51 = llvm.sext %50 : i32 to i64
    %52 = llvm.getelementptr inbounds %48[%51] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %53 = llvm.load %52 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.br ^bb7(%53 : i32)
  ^bb7(%54: i32):  // 2 preds: ^bb5, ^bb6
    llvm.store %54, %18 {alignment = 4 : i64} : i32, !llvm.ptr
    %55 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %56 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %57 = llvm.icmp "eq" %55, %56 : i32
    llvm.cond_br %57, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    llvm.br ^bb10(%5 : i32)
  ^bb9:  // pred: ^bb7
    %58 = llvm.load %8 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %59 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %60 = llvm.sext %59 : i32 to i64
    %61 = llvm.getelementptr inbounds %58[%60] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %62 = llvm.load %61 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.br ^bb10(%62 : i32)
  ^bb10(%63: i32):  // 2 preds: ^bb8, ^bb9
    llvm.store %63, %19 {alignment = 4 : i64} : i32, !llvm.ptr
    %64 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %65 = llvm.icmp "eq" %64, %1 : i32
    llvm.cond_br %65, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.br ^bb13(%4 : i32)
  ^bb12:  // pred: ^bb10
    %66 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %67 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %68 = llvm.sub %67, %0  : i32
    %69 = llvm.sext %68 : i32 to i64
    %70 = llvm.getelementptr inbounds %66[%69] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %71 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.br ^bb13(%71 : i32)
  ^bb13(%72: i32):  // 2 preds: ^bb11, ^bb12
    llvm.store %72, %20 {alignment = 4 : i64} : i32, !llvm.ptr
    %73 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %74 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %75 = llvm.icmp "eq" %73, %74 : i32
    llvm.cond_br %75, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    llvm.br ^bb16(%5 : i32)
  ^bb15:  // pred: ^bb13
    %76 = llvm.load %10 {alignment = 8 : i64} : !llvm.ptr -> !llvm.ptr
    %77 = llvm.load %17 {alignment = 4 : i64} : !llvm.ptr -> i32
    %78 = llvm.sext %77 : i32 to i64
    %79 = llvm.getelementptr inbounds %76[%78] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %80 = llvm.load %79 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.br ^bb16(%80 : i32)
  ^bb16(%81: i32):  // 2 preds: ^bb14, ^bb15
    llvm.store %81, %21 {alignment = 4 : i64} : i32, !llvm.ptr
    %82 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %83 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %84 = llvm.icmp "sle" %82, %83 : i32
    llvm.cond_br %84, ^bb17, ^bb21
  ^bb17:  // pred: ^bb16
    %85 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %86 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %87 = llvm.icmp "sle" %85, %86 : i32
    llvm.cond_br %87, ^bb18, ^bb21
  ^bb18:  // pred: ^bb17
    %88 = llvm.load %9 {alignment = 4 : i64} : !llvm.ptr -> i32
    %89 = llvm.load %11 {alignment = 4 : i64} : !llvm.ptr -> i32
    %90 = llvm.add %88, %89  : i32
    %91 = llvm.srem %90, %3  : i32
    %92 = llvm.icmp "eq" %91, %0 : i32
    llvm.cond_br %92, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %93 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %94 = llvm.sitofp %93 : i32 to f64
    %95 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %96 = llvm.sitofp %95 : i32 to f64
    %97 = llvm.intr.maxnum(%94, %96)  : (f64, f64) -> f64
    llvm.store %97, %7 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.br ^bb27
  ^bb20:  // pred: ^bb18
    %98 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %99 = llvm.sitofp %98 : i32 to f64
    %100 = llvm.load %20 {alignment = 4 : i64} : !llvm.ptr -> i32
    %101 = llvm.sitofp %100 : i32 to f64
    %102 = llvm.intr.maxnum(%99, %101)  : (f64, f64) -> f64
    %103 = llvm.load %19 {alignment = 4 : i64} : !llvm.ptr -> i32
    %104 = llvm.sitofp %103 : i32 to f64
    %105 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %106 = llvm.sitofp %105 : i32 to f64
    %107 = llvm.intr.minnum(%104, %106)  : (f64, f64) -> f64
    %108 = llvm.fadd %102, %107  : f64
    %109 = llvm.fdiv %108, %6  : f64
    llvm.store %109, %7 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.br ^bb27
  ^bb21:  // 2 preds: ^bb16, ^bb17
    %110 = llvm.load %18 {alignment = 4 : i64} : !llvm.ptr -> i32
    %111 = llvm.load %21 {alignment = 4 : i64} : !llvm.ptr -> i32
    %112 = llvm.icmp "sgt" %110, %111 : i32
    llvm.cond_br %112, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %113 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %114 = llvm.sub %113, %0  : i32
    llvm.store %114, %15 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb24
  ^bb23:  // pred: ^bb21
    %115 = llvm.load %16 {alignment = 4 : i64} : !llvm.ptr -> i32
    %116 = llvm.add %115, %0  : i32
    llvm.store %116, %14 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.br ^bb24
  ^bb24:  // 2 preds: ^bb22, ^bb23
    llvm.br ^bb25
  ^bb25:  // pred: ^bb24
    llvm.br ^bb3 {loop_annotation = #loop_annotation}
  ^bb26:  // pred: ^bb3
    llvm.store %2, %7 {alignment = 8 : i64} : f64, !llvm.ptr
    llvm.br ^bb27
  ^bb27:  // 3 preds: ^bb19, ^bb20, ^bb26
    %117 = llvm.load %7 {alignment = 8 : i64} : !llvm.ptr -> f64
    llvm.return %117 : f64
  }
  llvm.func @main() -> i32 attributes {passthrough = ["noinline", "nounwind", "optnone", "sspstrong", ["uwtable", "2"], ["frame-pointer", "all"], ["min-legal-vector-width", "0"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]} {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(dense<[1, 3]> : tensor<2xi32>) : !llvm.array<2 x i32>
    %3 = llvm.mlir.addressof @__const.main.nums1 : !llvm.ptr
    %4 = llvm.mlir.constant(8 : i64) : i64
    %5 = llvm.mlir.constant(false) : i1
    %6 = llvm.mlir.constant(dense<2> : tensor<1xi32>) : !llvm.array<1 x i32>
    %7 = llvm.mlir.addressof @__const.main.nums2 : !llvm.ptr
    %8 = llvm.mlir.constant(4 : i64) : i64
    %9 = llvm.mlir.constant(2 : i32) : i32
    %10 = llvm.mlir.constant("Example 1:\0A\00") : !llvm.array<12 x i8>
    %11 = llvm.mlir.addressof @".str" : !llvm.ptr
    %12 = llvm.mlir.constant("nums1 = [1, 3], nums2 = [2]\0A\00") : !llvm.array<29 x i8>
    %13 = llvm.mlir.addressof @".str.1" : !llvm.ptr
    %14 = llvm.mlir.constant(0 : i64) : i64
    %15 = llvm.mlir.constant("Median: %.5f\0A\0A\00") : !llvm.array<15 x i8>
    %16 = llvm.mlir.addressof @".str.2" : !llvm.ptr
    %17 = llvm.mlir.constant(dense<[1, 2]> : tensor<2xi32>) : !llvm.array<2 x i32>
    %18 = llvm.mlir.addressof @__const.main.nums3 : !llvm.ptr
    %19 = llvm.mlir.constant(dense<[3, 4]> : tensor<2xi32>) : !llvm.array<2 x i32>
    %20 = llvm.mlir.addressof @__const.main.nums4 : !llvm.ptr
    %21 = llvm.mlir.constant("Example 2:\0A\00") : !llvm.array<12 x i8>
    %22 = llvm.mlir.addressof @".str.3" : !llvm.ptr
    %23 = llvm.mlir.constant("nums1 = [1, 2], nums2 = [3, 4]\0A\00") : !llvm.array<32 x i8>
    %24 = llvm.mlir.addressof @".str.4" : !llvm.ptr
    %25 = llvm.mlir.constant(0 : i8) : i8
    %26 = llvm.mlir.constant("Example 3:\0A\00") : !llvm.array<12 x i8>
    %27 = llvm.mlir.addressof @".str.5" : !llvm.ptr
    %28 = llvm.mlir.constant("nums1 = [0, 0], nums2 = [0, 0]\0A\00") : !llvm.array<32 x i8>
    %29 = llvm.mlir.addressof @".str.6" : !llvm.ptr
    %30 = llvm.mlir.constant("Median: %.5f\0A\00") : !llvm.array<14 x i8>
    %31 = llvm.mlir.addressof @".str.7" : !llvm.ptr
    %32 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %33 = llvm.alloca %0 x !llvm.array<2 x i32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %34 = llvm.alloca %0 x !llvm.array<1 x i32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %35 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %36 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %37 = llvm.alloca %0 x !llvm.array<2 x i32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %38 = llvm.alloca %0 x !llvm.array<2 x i32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %39 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %40 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %41 = llvm.alloca %0 x !llvm.array<2 x i32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %42 = llvm.alloca %0 x !llvm.array<2 x i32> {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %43 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %44 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    llvm.store %1, %32 {alignment = 4 : i64} : i32, !llvm.ptr
    "llvm.intr.memcpy"(%33, %3, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%34, %7, %8) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %9, %35 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %0, %36 {alignment = 4 : i64} : i32, !llvm.ptr
    %45 = llvm.call @printf(%11) : (!llvm.ptr) -> i32
    %46 = llvm.call @printf(%13) : (!llvm.ptr) -> i32
    %47 = llvm.getelementptr inbounds %33[%14, %14] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x i32>
    %48 = llvm.load %35 {alignment = 4 : i64} : !llvm.ptr -> i32
    %49 = llvm.getelementptr inbounds %34[%14, %14] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<1 x i32>
    %50 = llvm.load %36 {alignment = 4 : i64} : !llvm.ptr -> i32
    %51 = llvm.call @findMedianSortedArrays(%47, %48, %49, %50) : (!llvm.ptr, i32, !llvm.ptr, i32) -> f64
    %52 = llvm.call @printf(%16, %51) : (!llvm.ptr, f64) -> i32
    "llvm.intr.memcpy"(%37, %18, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    "llvm.intr.memcpy"(%38, %20, %4) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i64) -> ()
    llvm.store %9, %39 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %9, %40 {alignment = 4 : i64} : i32, !llvm.ptr
    %53 = llvm.call @printf(%22) : (!llvm.ptr) -> i32
    %54 = llvm.call @printf(%24) : (!llvm.ptr) -> i32
    %55 = llvm.getelementptr inbounds %37[%14, %14] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x i32>
    %56 = llvm.load %39 {alignment = 4 : i64} : !llvm.ptr -> i32
    %57 = llvm.getelementptr inbounds %38[%14, %14] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x i32>
    %58 = llvm.load %40 {alignment = 4 : i64} : !llvm.ptr -> i32
    %59 = llvm.call @findMedianSortedArrays(%55, %56, %57, %58) : (!llvm.ptr, i32, !llvm.ptr, i32) -> f64
    %60 = llvm.call @printf(%16, %59) : (!llvm.ptr, f64) -> i32
    "llvm.intr.memset"(%41, %25, %4) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    "llvm.intr.memset"(%42, %25, %4) <{isVolatile = false}> : (!llvm.ptr, i8, i64) -> ()
    llvm.store %9, %43 {alignment = 4 : i64} : i32, !llvm.ptr
    llvm.store %9, %44 {alignment = 4 : i64} : i32, !llvm.ptr
    %61 = llvm.call @printf(%27) : (!llvm.ptr) -> i32
    %62 = llvm.call @printf(%29) : (!llvm.ptr) -> i32
    %63 = llvm.getelementptr inbounds %41[%14, %14] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x i32>
    %64 = llvm.load %43 {alignment = 4 : i64} : !llvm.ptr -> i32
    %65 = llvm.getelementptr inbounds %42[%14, %14] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<2 x i32>
    %66 = llvm.load %44 {alignment = 4 : i64} : !llvm.ptr -> i32
    %67 = llvm.call @findMedianSortedArrays(%63, %64, %65, %66) : (!llvm.ptr, i32, !llvm.ptr, i32) -> f64
    %68 = llvm.call @printf(%31, %67) : (!llvm.ptr, f64) -> i32
    llvm.return %1 : i32
  }
  llvm.func @printf(!llvm.ptr {llvm.noundef}, ...) -> i32 attributes {passthrough = [["frame-pointer", "all"], ["no-trapping-math", "true"], ["stack-protector-buffer-size", "8"], ["target-cpu", "x86-64"], ["target-features", "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87"], ["tune-cpu", "generic"]]}
}
