
// Generated by Cadence Genus(TM) Synthesis Solution 21.10-p002_1
// Generated on: Jul 26 2023 17:00:28 IST (Jul 26 2023 11:30:28 UTC)

// Verification Directory fv/lemming 

module lemming(clk, areset, bump_left, bump_right, ground, dig,
     walk_left, walk_right, aaah, digging);
  input clk, areset, bump_left, bump_right, ground, dig;
  output walk_left, walk_right, aaah, digging;
  wire clk, areset, bump_left, bump_right, ground, dig;
  wire walk_left, walk_right, aaah, digging;
  wire [2:0] ps;
  wire [31:0] count;
  wire inc_add_20_92_n_253, inc_add_20_92_n_258, inc_add_20_92_n_263,
       inc_add_20_92_n_268, inc_add_20_92_n_273, inc_add_20_92_n_278,
       inc_add_20_92_n_283, inc_add_20_92_n_288;
  wire inc_add_20_92_n_293, inc_add_20_92_n_298, inc_add_20_92_n_303,
       inc_add_20_92_n_308, inc_add_20_92_n_313, inc_add_20_92_n_318,
       inc_add_20_92_n_323, inc_add_20_92_n_328;
  wire inc_add_20_92_n_333, inc_add_20_92_n_336, inc_add_20_92_n_340,
       inc_add_20_92_n_343, inc_add_20_92_n_347, inc_add_20_92_n_352,
       inc_add_20_92_n_357, inc_add_20_92_n_362;
  wire inc_add_20_92_n_367, inc_add_20_92_n_370, inc_add_20_92_n_374,
       inc_add_20_92_n_379, inc_add_20_92_n_384, inc_add_20_92_n_389,
       n_1, n_2;
  wire n_3, n_4, n_5, n_6, n_7, n_8, n_9, n_10;
  wire n_11, n_12, n_13, n_14, n_15, n_16, n_17, n_18;
  wire n_19, n_20, n_21, n_22, n_23, n_24, n_25, n_26;
  wire n_27, n_28, n_29, n_30, n_31, n_32, n_33, n_34;
  wire n_35, n_36, n_37, n_38, n_39, n_40, n_41, n_42;
  wire n_43, n_44, n_45, n_46, n_47, n_48, n_49, n_50;
  wire n_51, n_52, n_53, n_54, n_55, n_56, n_57, n_58;
  wire n_61, n_62, n_63, n_69, n_72, n_73, n_74, n_75;
  wire n_76, n_77, n_78, n_79, n_80, n_81, n_82, n_83;
  wire n_84, n_85, n_86, n_87, n_88, n_89, n_90, n_91;
  wire n_92, n_93, n_94, n_95, n_96, n_97, n_98, n_99;
  wire n_100, n_101, n_102;
  INVXL g1232(.A (n_61), .Y (digging));
  INVXL g1234(.A (areset), .Y (n_58));
  MXI2XL g1261__2398(.A (n_62), .B (n_63), .S0 (ps[0]), .Y (walk_left));
  NOR2BX1 g1262__5107(.AN (ps[0]), .B (n_62), .Y (walk_right));
  NAND2X1 g1263__6260(.A (ps[2]), .B (ps[1]), .Y (n_63));
  OR2XL g1264__4319(.A (ps[2]), .B (ps[1]), .Y (n_62));
  NAND2BX1 g1265__8428(.AN (ps[1]), .B (ps[2]), .Y (n_69));
  NAND2BX1 g1266__5526(.AN (ps[2]), .B (ps[1]), .Y (n_61));
  OAI31X1 g2295__6783(.A0 (n_1), .A1 (n_69), .A2 (ground), .B0 (n_56),
       .Y (n_57));
  DFFRHQX1 \ps_reg[2] (.RN (n_58), .CK (clk), .D (n_55), .Q (ps[2]));
  DFFRHQX1 \ps_reg[1] (.RN (n_58), .CK (clk), .D (n_54), .Q (ps[1]));
  AOI22X1 g2298__3680(.A0 (n_1), .A1 (n_53), .B0 (ps[0]), .B1 (n_43),
       .Y (n_56));
  OAI221X1 g2299__1617(.A0 (n_69), .A1 (n_52), .B0 (n_2), .B1 (ground),
       .C0 (n_37), .Y (n_55));
  OAI211X1 g2300__2802(.A0 (n_38), .A1 (n_52), .B0 (n_37), .C0 (n_42),
       .Y (n_54));
  OAI22X1 g2301__1705(.A0 (n_38), .A1 (n_51), .B0 (n_62), .B1 (n_40),
       .Y (n_53));
  INVXL g2302(.A (n_52), .Y (n_51));
  NOR4X1 g2303__5122(.A (count[16]), .B (count[21]), .C (count[10]), .D
       (n_50), .Y (n_52));
  OR4X1 g2304__8246(.A (count[24]), .B (count[28]), .C (count[30]), .D
       (n_49), .Y (n_50));
  OR4X1 g2305__7098(.A (count[31]), .B (count[29]), .C (count[27]), .D
       (n_48), .Y (n_49));
  OR4X1 g2306__6131(.A (count[25]), .B (count[23]), .C (n_39), .D
       (n_47), .Y (n_48));
  OR4X1 g2307__1881(.A (count[6]), .B (count[20]), .C (count[5]), .D
       (n_46), .Y (n_47));
  OR4X1 g2308__5115(.A (count[18]), .B (count[19]), .C (count[22]), .D
       (n_45), .Y (n_46));
  OR4X1 g2309__7482(.A (count[15]), .B (count[26]), .C (count[13]), .D
       (n_44), .Y (n_45));
  OR4X1 g2310__4733(.A (count[12]), .B (count[8]), .C (count[11]), .D
       (n_41), .Y (n_44));
  OAI31X1 g2311__6161(.A0 (ps[2]), .A1 (bump_right), .A2 (n_36), .B0
       (n_61), .Y (n_43));
  OAI2BB1X1 g2312__9315(.A0N (n_61), .A1N (n_18), .B0 (ground), .Y
       (n_42));
  OR4X1 g2313__9945(.A (count[17]), .B (count[9]), .C (count[7]), .D
       (count[14]), .Y (n_41));
  DFFRHQX1 \count_reg[1] (.RN (n_58), .CK (clk), .D (n_27), .Q
       (count[1]));
  DFFRHQX1 \count_reg[27] (.RN (n_58), .CK (clk), .D (n_34), .Q
       (count[27]));
  DFFRHQX1 \count_reg[28] (.RN (n_58), .CK (clk), .D (n_11), .Q
       (count[28]));
  DFFRHQX1 \count_reg[26] (.RN (n_58), .CK (clk), .D (n_26), .Q
       (count[26]));
  DFFRHQX1 \count_reg[30] (.RN (n_58), .CK (clk), .D (n_31), .Q
       (count[30]));
  DFFRHQX1 \count_reg[29] (.RN (n_58), .CK (clk), .D (n_32), .Q
       (count[29]));
  DFFRHQX1 \count_reg[31] (.RN (n_58), .CK (clk), .D (n_30), .Q
       (count[31]));
  DFFRHQX1 \count_reg[2] (.RN (n_58), .CK (clk), .D (n_35), .Q
       (count[2]));
  DFFRHQX1 \count_reg[25] (.RN (n_58), .CK (clk), .D (n_33), .Q
       (count[25]));
  DFFRHQX1 \count_reg[3] (.RN (n_58), .CK (clk), .D (n_24), .Q
       (count[3]));
  DFFRHQX1 \count_reg[4] (.RN (n_58), .CK (clk), .D (n_21), .Q
       (count[4]));
  DFFRHQX1 \count_reg[5] (.RN (n_58), .CK (clk), .D (n_25), .Q
       (count[5]));
  DFFRHQX1 \count_reg[6] (.RN (n_58), .CK (clk), .D (n_28), .Q
       (count[6]));
  DFFRHQX1 \count_reg[7] (.RN (n_58), .CK (clk), .D (n_29), .Q
       (count[7]));
  DFFRHQX1 \count_reg[8] (.RN (n_58), .CK (clk), .D (n_19), .Q
       (count[8]));
  DFFRHQX1 \count_reg[9] (.RN (n_58), .CK (clk), .D (n_15), .Q
       (count[9]));
  DFFRHQX1 \count_reg[10] (.RN (n_58), .CK (clk), .D (n_17), .Q
       (count[10]));
  NOR2X1 g2331__2883(.A (bump_left), .B (n_36), .Y (n_40));
  OA21X1 g2332__2346(.A0 (count[2]), .A1 (count[3]), .B0 (count[4]), .Y
       (n_39));
  DFFRHQX1 \count_reg[13] (.RN (n_58), .CK (clk), .D (n_14), .Q
       (count[13]));
  DFFRHQX1 \count_reg[14] (.RN (n_58), .CK (clk), .D (n_13), .Q
       (count[14]));
  DFFRHQX1 \count_reg[15] (.RN (n_58), .CK (clk), .D (n_12), .Q
       (count[15]));
  DFFRHQX1 \count_reg[16] (.RN (n_58), .CK (clk), .D (n_20), .Q
       (count[16]));
  DFFRHQX1 \count_reg[17] (.RN (n_58), .CK (clk), .D (n_10), .Q
       (count[17]));
  DFFRHQX1 \count_reg[18] (.RN (n_58), .CK (clk), .D (n_9), .Q
       (count[18]));
  DFFRHQX1 \count_reg[19] (.RN (n_58), .CK (clk), .D (n_8), .Q
       (count[19]));
  DFFRHQX1 \count_reg[20] (.RN (n_58), .CK (clk), .D (n_7), .Q
       (count[20]));
  DFFRHQX1 \count_reg[21] (.RN (n_58), .CK (clk), .D (n_6), .Q
       (count[21]));
  DFFRHQX1 \count_reg[22] (.RN (n_58), .CK (clk), .D (n_5), .Q
       (count[22]));
  DFFRHQX1 \count_reg[23] (.RN (n_58), .CK (clk), .D (n_4), .Q
       (count[23]));
  DFFRHQX1 \count_reg[24] (.RN (n_58), .CK (clk), .D (n_3), .Q
       (count[24]));
  DFFRHQX1 \count_reg[0] (.RN (n_58), .CK (clk), .D (n_22), .Q
       (count[0]));
  DFFRHQX1 \count_reg[11] (.RN (n_58), .CK (clk), .D (n_16), .Q
       (count[11]));
  DFFRHQX1 \count_reg[12] (.RN (n_58), .CK (clk), .D (n_23), .Q
       (count[12]));
  NOR2BX1 g2348__1666(.AN (n_101), .B (n_69), .Y (n_35));
  NOR2BX1 g2349__7410(.AN (n_76), .B (n_69), .Y (n_34));
  NOR2BX1 g2350__6417(.AN (n_78), .B (n_69), .Y (n_33));
  NOR2BX1 g2351__5477(.AN (n_74), .B (n_69), .Y (n_32));
  NOR2BX1 g2352__2398(.AN (n_73), .B (n_69), .Y (n_31));
  NOR2BX1 g2353__5107(.AN (n_72), .B (n_69), .Y (n_30));
  NOR2BX1 g2354__6260(.AN (n_96), .B (n_69), .Y (n_29));
  NOR2BX1 g2355__4319(.AN (n_97), .B (n_69), .Y (n_28));
  NOR2BX1 g2356__8428(.AN (n_102), .B (n_69), .Y (n_27));
  NOR2BX1 g2357__5526(.AN (n_77), .B (n_69), .Y (n_26));
  NOR2BX1 g2358__6783(.AN (n_98), .B (n_69), .Y (n_25));
  NOR2BX1 g2359__3680(.AN (n_100), .B (n_69), .Y (n_24));
  NOR2BX1 g2360__1617(.AN (n_91), .B (n_69), .Y (n_23));
  NOR2XL g2361__2802(.A (count[0]), .B (n_69), .Y (n_22));
  NOR2BX1 g2362__1705(.AN (n_99), .B (n_69), .Y (n_21));
  NAND2X1 g2363__5122(.A (aaah), .B (ground), .Y (n_38));
  NAND2X1 g2364__8246(.A (n_1), .B (n_2), .Y (n_37));
  NAND2BX1 g2365__7098(.AN (dig), .B (ground), .Y (n_36));
  AND2XL g2366__6131(.A (aaah), .B (n_87), .Y (n_20));
  AND2XL g2367__1881(.A (aaah), .B (n_95), .Y (n_19));
  NAND2BX1 g2368__5115(.AN (ps[2]), .B (dig), .Y (n_18));
  AND2XL g2369__7482(.A (aaah), .B (n_93), .Y (n_17));
  AND2XL g2370__4733(.A (aaah), .B (n_92), .Y (n_16));
  AND2XL g2371__6161(.A (aaah), .B (n_94), .Y (n_15));
  AND2XL g2372__9315(.A (aaah), .B (n_90), .Y (n_14));
  AND2XL g2373__9945(.A (aaah), .B (n_89), .Y (n_13));
  AND2XL g2374__2883(.A (aaah), .B (n_88), .Y (n_12));
  AND2XL g2375__2346(.A (aaah), .B (n_75), .Y (n_11));
  AND2XL g2376__1666(.A (aaah), .B (n_86), .Y (n_10));
  AND2XL g2377__7410(.A (aaah), .B (n_85), .Y (n_9));
  AND2XL g2378__6417(.A (aaah), .B (n_84), .Y (n_8));
  AND2XL g2379__5477(.A (aaah), .B (n_83), .Y (n_7));
  AND2XL g2380__2398(.A (aaah), .B (n_82), .Y (n_6));
  AND2XL g2381__5107(.A (aaah), .B (n_81), .Y (n_5));
  AND2XL g2382__6260(.A (aaah), .B (n_80), .Y (n_4));
  AND2XL g2383__4319(.A (aaah), .B (n_79), .Y (n_3));
  INVX1 g2384(.A (n_63), .Y (n_2));
  INVX1 g2386(.A (n_69), .Y (aaah));
  XNOR2X1 inc_add_20_92_g407__8428(.A (count[31]), .B
       (inc_add_20_92_n_253), .Y (n_72));
  OA21X1 inc_add_20_92_g408__5526(.A0 (count[30]), .A1
       (inc_add_20_92_n_258), .B0 (inc_add_20_92_n_253), .Y (n_73));
  NAND2XL inc_add_20_92_g409__6783(.A (count[30]), .B
       (inc_add_20_92_n_258), .Y (inc_add_20_92_n_253));
  XNOR2X1 inc_add_20_92_g410__3680(.A (count[29]), .B
       (inc_add_20_92_n_263), .Y (n_74));
  NOR2BX1 inc_add_20_92_g411__1617(.AN (count[29]), .B
       (inc_add_20_92_n_263), .Y (inc_add_20_92_n_258));
  OA21X1 inc_add_20_92_g412__2802(.A0 (count[28]), .A1
       (inc_add_20_92_n_268), .B0 (inc_add_20_92_n_263), .Y (n_75));
  NAND2X1 inc_add_20_92_g413__1705(.A (count[28]), .B
       (inc_add_20_92_n_268), .Y (inc_add_20_92_n_263));
  XNOR2X1 inc_add_20_92_g414__5122(.A (count[27]), .B
       (inc_add_20_92_n_273), .Y (n_76));
  NOR2BX1 inc_add_20_92_g415__8246(.AN (count[27]), .B
       (inc_add_20_92_n_273), .Y (inc_add_20_92_n_268));
  OA21X1 inc_add_20_92_g416__7098(.A0 (count[26]), .A1
       (inc_add_20_92_n_278), .B0 (inc_add_20_92_n_273), .Y (n_77));
  NAND2X1 inc_add_20_92_g417__6131(.A (count[26]), .B
       (inc_add_20_92_n_278), .Y (inc_add_20_92_n_273));
  AOI2BB1XL inc_add_20_92_g418__1881(.A0N (count[25]), .A1N
       (inc_add_20_92_n_283), .B0 (inc_add_20_92_n_278), .Y (n_78));
  AND2X1 inc_add_20_92_g419__5115(.A (inc_add_20_92_n_283), .B
       (count[25]), .Y (inc_add_20_92_n_278));
  AOI2BB1XL inc_add_20_92_g420__7482(.A0N (count[24]), .A1N
       (inc_add_20_92_n_288), .B0 (inc_add_20_92_n_283), .Y (n_79));
  AND2XL inc_add_20_92_g421__4733(.A (count[24]), .B
       (inc_add_20_92_n_288), .Y (inc_add_20_92_n_283));
  XNOR2X1 inc_add_20_92_g422__6161(.A (count[23]), .B
       (inc_add_20_92_n_293), .Y (n_80));
  NOR2BX1 inc_add_20_92_g423__9315(.AN (count[23]), .B
       (inc_add_20_92_n_293), .Y (inc_add_20_92_n_288));
  OA21X1 inc_add_20_92_g424__9945(.A0 (count[22]), .A1
       (inc_add_20_92_n_298), .B0 (inc_add_20_92_n_293), .Y (n_81));
  NAND2X1 inc_add_20_92_g425__2883(.A (count[22]), .B
       (inc_add_20_92_n_298), .Y (inc_add_20_92_n_293));
  AOI2BB1XL inc_add_20_92_g426__2346(.A0N (count[21]), .A1N
       (inc_add_20_92_n_303), .B0 (inc_add_20_92_n_298), .Y (n_82));
  AND2X1 inc_add_20_92_g427__1666(.A (inc_add_20_92_n_303), .B
       (count[21]), .Y (inc_add_20_92_n_298));
  XNOR2X1 inc_add_20_92_g428__7410(.A (count[20]), .B
       (inc_add_20_92_n_308), .Y (n_83));
  NOR2BX1 inc_add_20_92_g429__6417(.AN (count[20]), .B
       (inc_add_20_92_n_308), .Y (inc_add_20_92_n_303));
  OA21X1 inc_add_20_92_g430__5477(.A0 (count[19]), .A1
       (inc_add_20_92_n_313), .B0 (inc_add_20_92_n_308), .Y (n_84));
  NAND2X1 inc_add_20_92_g431__2398(.A (count[19]), .B
       (inc_add_20_92_n_313), .Y (inc_add_20_92_n_308));
  AOI2BB1XL inc_add_20_92_g432__5107(.A0N (count[18]), .A1N
       (inc_add_20_92_n_318), .B0 (inc_add_20_92_n_313), .Y (n_85));
  AND2X1 inc_add_20_92_g433__6260(.A (inc_add_20_92_n_318), .B
       (count[18]), .Y (inc_add_20_92_n_313));
  XNOR2X1 inc_add_20_92_g434__4319(.A (count[17]), .B
       (inc_add_20_92_n_323), .Y (n_86));
  NOR2BX1 inc_add_20_92_g435__8428(.AN (count[17]), .B
       (inc_add_20_92_n_323), .Y (inc_add_20_92_n_318));
  XNOR2X1 inc_add_20_92_g436__5526(.A (count[16]), .B
       (inc_add_20_92_n_328), .Y (n_87));
  NAND2BX1 inc_add_20_92_g437__6783(.AN (inc_add_20_92_n_328), .B
       (count[16]), .Y (inc_add_20_92_n_323));
  OA21X1 inc_add_20_92_g438__3680(.A0 (count[15]), .A1
       (inc_add_20_92_n_333), .B0 (inc_add_20_92_n_328), .Y (n_88));
  NAND2XL inc_add_20_92_g439__1617(.A (count[15]), .B
       (inc_add_20_92_n_333), .Y (inc_add_20_92_n_328));
  AOI2BB1XL inc_add_20_92_g440__2802(.A0N (count[14]), .A1N
       (inc_add_20_92_n_336), .B0 (inc_add_20_92_n_333), .Y (n_89));
  AND2XL inc_add_20_92_g441__1705(.A (count[14]), .B
       (inc_add_20_92_n_336), .Y (inc_add_20_92_n_333));
  ADDHX1 inc_add_20_92_g442__5122(.A (count[13]), .B
       (inc_add_20_92_n_340), .CO (inc_add_20_92_n_336), .S (n_90));
  AOI2BB1XL inc_add_20_92_g443__8246(.A0N (count[12]), .A1N
       (inc_add_20_92_n_343), .B0 (inc_add_20_92_n_340), .Y (n_91));
  AND2XL inc_add_20_92_g444__7098(.A (count[12]), .B
       (inc_add_20_92_n_343), .Y (inc_add_20_92_n_340));
  ADDHX1 inc_add_20_92_g445__6131(.A (count[11]), .B
       (inc_add_20_92_n_347), .CO (inc_add_20_92_n_343), .S (n_92));
  AOI2BB1XL inc_add_20_92_g446__1881(.A0N (count[10]), .A1N
       (inc_add_20_92_n_352), .B0 (inc_add_20_92_n_347), .Y (n_93));
  AND2XL inc_add_20_92_g447__5115(.A (count[10]), .B
       (inc_add_20_92_n_352), .Y (inc_add_20_92_n_347));
  AOI2BB1XL inc_add_20_92_g448__7482(.A0N (count[9]), .A1N
       (inc_add_20_92_n_357), .B0 (inc_add_20_92_n_352), .Y (n_94));
  AND2XL inc_add_20_92_g449__4733(.A (count[9]), .B
       (inc_add_20_92_n_357), .Y (inc_add_20_92_n_352));
  XNOR2X1 inc_add_20_92_g450__6161(.A (count[8]), .B
       (inc_add_20_92_n_362), .Y (n_95));
  NOR2BX1 inc_add_20_92_g451__9315(.AN (count[8]), .B
       (inc_add_20_92_n_362), .Y (inc_add_20_92_n_357));
  OA21X1 inc_add_20_92_g452__9945(.A0 (count[7]), .A1
       (inc_add_20_92_n_367), .B0 (inc_add_20_92_n_362), .Y (n_96));
  NAND2X1 inc_add_20_92_g453__2883(.A (count[7]), .B
       (inc_add_20_92_n_367), .Y (inc_add_20_92_n_362));
  AOI2BB1XL inc_add_20_92_g454__2346(.A0N (count[6]), .A1N
       (inc_add_20_92_n_370), .B0 (inc_add_20_92_n_367), .Y (n_97));
  AND2X1 inc_add_20_92_g455__1666(.A (inc_add_20_92_n_370), .B
       (count[6]), .Y (inc_add_20_92_n_367));
  ADDHX1 inc_add_20_92_g456__7410(.A (count[5]), .B
       (inc_add_20_92_n_374), .CO (inc_add_20_92_n_370), .S (n_98));
  AOI2BB1XL inc_add_20_92_g457__6417(.A0N (count[4]), .A1N
       (inc_add_20_92_n_379), .B0 (inc_add_20_92_n_374), .Y (n_99));
  AND2XL inc_add_20_92_g458__5477(.A (count[4]), .B
       (inc_add_20_92_n_379), .Y (inc_add_20_92_n_374));
  AOI2BB1XL inc_add_20_92_g459__2398(.A0N (count[3]), .A1N
       (inc_add_20_92_n_384), .B0 (inc_add_20_92_n_379), .Y (n_100));
  AND2XL inc_add_20_92_g460__5107(.A (count[3]), .B
       (inc_add_20_92_n_384), .Y (inc_add_20_92_n_379));
  AOI2BB1XL inc_add_20_92_g461__6260(.A0N (count[2]), .A1N
       (inc_add_20_92_n_389), .B0 (inc_add_20_92_n_384), .Y (n_101));
  AND2XL inc_add_20_92_g462__4319(.A (count[2]), .B
       (inc_add_20_92_n_389), .Y (inc_add_20_92_n_384));
  AOI2BB1XL inc_add_20_92_g463__8428(.A0N (count[0]), .A1N (count[1]),
       .B0 (inc_add_20_92_n_389), .Y (n_102));
  AND2XL inc_add_20_92_g464__5526(.A (count[0]), .B (count[1]), .Y
       (inc_add_20_92_n_389));
  DFFRX1 \ps_reg[0] (.RN (n_58), .CK (clk), .D (n_57), .Q (ps[0]), .QN
       (n_1));
endmodule

