* ============================================================.
* SPSS ANALYSIS SYNTAX — Complete Analysis (18 Steps).
* ============================================================.
* วิจัย: ลักษณะผู้มีอิทธิพลทางความคิด Gen Z.
*        เลือกซื้อเครื่องสำอางผ่านช่องทางออนไลน์.
* ============================================================.
* How to use:.
*   1. Open IBM_Data_SPSS_Ready.csv in SPSS.
*   2. Run IBM_Setup_Labels.sps first (setup labels).
*   3. Then open this file and press Run > All.
* ============================================================.
* Results will appear in the Output Window.
* Covers Tables T3-T30 of the research.
* ============================================================.

* ===========================================================.
* STEP 5: RELIABILITY ANALYSIS (T3/T4 - Cronbach's Alpha).
* ===========================================================.
* Note: T3 = Pretest, T4 = Actual data.
*       If no separate pretest, use this result for T4.
* ===========================================================.

TITLE "=== T4: Cronbach Alpha - ด้านความคิด (3.1) ===".
RELIABILITY
  /VARIABLES=IV1_1_Accuracy IV1_2_DetailedReview IV1_3_BrandComparison IV1_4_NewProducts IV1_5_FasterDecision
  /SCALE('Informative') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach Alpha - ด้านความบันเทิง (3.2) ===".
RELIABILITY
  /VARIABLES=IV2_1_FunContent IV2_2_PresentationStyle IV2_3_MakeupInspiration IV2_4_CreativeInfluencer
  /SCALE('Entertainment') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach Alpha - ด้านความเชี่ยวชาญ (3.3) ===".
RELIABILITY
  /VARIABLES=IV3_1_Knowledge IV3_2_RealisticResults IV3_3_SponsoredDisclosure
  /SCALE('Expertise') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach Alpha - ด้านความเชื่อถือ (3.4) ===".
RELIABILITY
  /VARIABLES=IV4_1_AccurateInfo IV4_2_HonestReview IV4_3_ProductDisclosure IV4_4_ProsAndCons IV4_5_BeautyImage
  /SCALE('Trustworthiness') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach Alpha - ด้านความดึงดูด (3.5) ===".
RELIABILITY
  /VARIABLES=IV5_1_PersonalityFit IV5_2_ReviewSkill IV5_3_MakeupStyle IV5_4_Approachable IV5_5_CredibleImage
  /SCALE('Attractiveness') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach Alpha - ด้านความเหมือน (3.6) ===".
RELIABILITY
  /VARIABLES=IV6_1_SkinType IV6_2_Lifestyle IV6_3_CosmeticPreference IV6_4_PriceLevel
  /SCALE('Similarity') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach Alpha - ความตั้งใจซื้อ (4.1) ===".
RELIABILITY
  /VARIABLES=DV1_FutureIntent DV2_TopChoice DV3_CredibilityDriven DV4_ReviewDriven DV5_Repurchase
  /SCALE('PurchaseIntent') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

* ===========================================================.
* STEP 8: FREQUENCIES - Demographics (T5-T9).
* ===========================================================.

TITLE "=== T5: ความถี่ - เพศ ===".
FREQUENCIES VARIABLES=Gender
  /ORDER=ANALYSIS.

TITLE "=== T6: ความถี่ - อายุ ===".
FREQUENCIES VARIABLES=Age
  /ORDER=ANALYSIS.

TITLE "=== T7: ความถี่ - ระดับการศึกษา ===".
FREQUENCIES VARIABLES=Education
  /ORDER=ANALYSIS.

TITLE "=== T8: ความถี่ - อาชีพ ===".
FREQUENCIES VARIABLES=Occupation
  /ORDER=ANALYSIS.

TITLE "=== T9: ความถี่ - รายได้ ===".
FREQUENCIES VARIABLES=Income
  /ORDER=ANALYSIS.

* ===========================================================.
* STEP 9: FREQUENCIES - Behavior (T10-T15).
* ===========================================================.

TITLE "=== T10: ความถี่ - ความถี่ในการซื้อ ===".
FREQUENCIES VARIABLES=BuyFrequency
  /ORDER=ANALYSIS.

TITLE "=== T11: ความถี่ - ระยะเวลาตัดสินใจ ===".
FREQUENCIES VARIABLES=DecisionTime
  /ORDER=ANALYSIS.

TITLE "=== T12: ความถี่ - ประเภทร้านค้า ===".
FREQUENCIES VARIABLES=StoreType
  /ORDER=ANALYSIS.

TITLE "=== T13: ความถี่ - ราคา ===".
FREQUENCIES VARIABLES=PriceRange
  /ORDER=ANALYSIS.

TITLE "=== T14: ความถี่ - ช่องทางค้นหาข้อมูล ===".
FREQUENCIES VARIABLES=InfoSource
  /ORDER=ANALYSIS.

TITLE "=== T15: ความถี่ - งบประมาณ ===".
FREQUENCIES VARIABLES=Budget
  /ORDER=ANALYSIS.

* ===========================================================.
* STEP 10: DESCRIPTIVES - Overview 6 Dimensions (T16).
* ===========================================================.

TITLE "=== T16: ค่าเฉลี่ยภาพรวม 6 ด้าน ===".
DESCRIPTIVES VARIABLES=Mean_Informative Mean_Entertainment Mean_Expertise
  Mean_Trustworthiness Mean_Attractiveness Mean_Similarity
  /STATISTICS=MEAN STDDEV.

* ===========================================================.
* STEP 11: DESCRIPTIVES - Per-item 6 Dimensions (T17-T22).
* ===========================================================.

TITLE "=== T17: รายข้อ - ด้านความคิด (3.1) ===".
DESCRIPTIVES VARIABLES=IV1_1_Accuracy IV1_2_DetailedReview IV1_3_BrandComparison
  IV1_4_NewProducts IV1_5_FasterDecision Mean_Informative
  /STATISTICS=MEAN STDDEV.

TITLE "=== T18: รายข้อ - ด้านความบันเทิง (3.2) ===".
DESCRIPTIVES VARIABLES=IV2_1_FunContent IV2_2_PresentationStyle
  IV2_3_MakeupInspiration IV2_4_CreativeInfluencer Mean_Entertainment
  /STATISTICS=MEAN STDDEV.

TITLE "=== T19: รายข้อ - ด้านความเชี่ยวชาญ (3.3) ===".
DESCRIPTIVES VARIABLES=IV3_1_Knowledge IV3_2_RealisticResults
  IV3_3_SponsoredDisclosure Mean_Expertise
  /STATISTICS=MEAN STDDEV.

TITLE "=== T20: รายข้อ - ด้านความเชื่อถือ (3.4) ===".
DESCRIPTIVES VARIABLES=IV4_1_AccurateInfo IV4_2_HonestReview IV4_3_ProductDisclosure
  IV4_4_ProsAndCons IV4_5_BeautyImage Mean_Trustworthiness
  /STATISTICS=MEAN STDDEV.

TITLE "=== T21: รายข้อ - ด้านความดึงดูด (3.5) ===".
DESCRIPTIVES VARIABLES=IV5_1_PersonalityFit IV5_2_ReviewSkill IV5_3_MakeupStyle
  IV5_4_Approachable IV5_5_CredibleImage Mean_Attractiveness
  /STATISTICS=MEAN STDDEV.

TITLE "=== T22: รายข้อ - ด้านความเหมือน (3.6) ===".
DESCRIPTIVES VARIABLES=IV6_1_SkinType IV6_2_Lifestyle
  IV6_3_CosmeticPreference IV6_4_PriceLevel Mean_Similarity
  /STATISTICS=MEAN STDDEV.

* ===========================================================.
* STEP 12: DESCRIPTIVES - Purchase Intention (T23).
* ===========================================================.

TITLE "=== T23: รายข้อ - ความตั้งใจซื้อ (4.1) ===".
DESCRIPTIVES VARIABLES=DV1_FutureIntent DV2_TopChoice DV3_CredibilityDriven
  DV4_ReviewDriven DV5_Repurchase Mean_PurchaseIntent
  /STATISTICS=MEAN STDDEV.

* ===========================================================.
* STEP 13: ONE-WAY ANOVA - Gender (T24).
* ===========================================================.

TITLE "=== T24: ANOVA เพศ vs ความตั้งใจซื้อ ===".
ONEWAY Mean_PurchaseIntent BY Gender
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* STEP 14: ONE-WAY ANOVA - Education + LSD (T25, T26).
* ===========================================================.

TITLE "=== T25-T26: ANOVA ระดับการศึกษา vs ความตั้งใจซื้อ ===".
ONEWAY Mean_PurchaseIntent BY Education
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* STEP 15: ONE-WAY ANOVA - Occupation (T27).
* ===========================================================.

TITLE "=== T27: ANOVA อาชีพ vs ความตั้งใจซื้อ ===".
ONEWAY Mean_PurchaseIntent BY Occupation
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* STEP 16: ONE-WAY ANOVA - Income (T28).
* ===========================================================.

TITLE "=== T28: ANOVA รายได้ vs ความตั้งใจซื้อ ===".
ONEWAY Mean_PurchaseIntent BY Income
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* BONUS: ONE-WAY ANOVA - Age (for T31 summary).
* ===========================================================.

TITLE "=== ANOVA อายุ vs ความตั้งใจซื้อ (สำหรับ T31) ===".
ONEWAY Mean_PurchaseIntent BY Age
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* STEP 17: PEARSON CORRELATION (T29).
* ===========================================================.

TITLE "=== T29: Pearson Correlation - 6 ด้าน vs ความตั้งใจซื้อ ===".
CORRELATIONS
  /VARIABLES=Mean_Informative Mean_Entertainment Mean_Expertise
    Mean_Trustworthiness Mean_Attractiveness Mean_Similarity
    Mean_PurchaseIntent
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* ===========================================================.
* STEP 18: MULTIPLE REGRESSION (T30).
* ===========================================================.

TITLE "=== T30: Multiple Regression - 6 ด้าน พยากรณ์ ความตั้งใจซื้อ ===".
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT Mean_PurchaseIntent
  /METHOD=ENTER Mean_Informative Mean_Entertainment Mean_Expertise
    Mean_Trustworthiness Mean_Attractiveness Mean_Similarity.

* ============================================================.
* ANALYSIS COMPLETE!.
* ============================================================.
* All results are in the Output Window.
* Export to Word/PDF: File > Export > Select format.
* ============================================================.
* Tables to fill manually in Word:.
*   T1  = General info summary table (layout only).
*   T2  = Statistical methods used.
*   T31 = Hypothesis 1 summary (from T24-T28 + Age ANOVA).
*   T32 = Hypothesis 2 summary (from T29-T30).
* ============================================================.
