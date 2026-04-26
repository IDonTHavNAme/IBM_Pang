* ============================================================.
* SPSS ANALYSIS SYNTAX — Complete Analysis (18 Steps).
* ============================================================.
* วิจัย: ลักษณะผู้มีอิทธิพลทางความคิดที่ส่งผลต่อการตัดสินใจ.
*        เลือกซื้อเครื่องสำอางผ่านช่องทางออนไลน์ของกลุ่มเจนซี.
* ============================================================.
* วิธีใช้:.
*   1. เปิด IBM_Data_SPSS_Ready.csv ใน SPSS.
*   2. รัน IBM_Setup_Labels.sps ก่อน (ตั้งค่า Labels).
*   3. จากนั้นเปิดไฟล์นี้ แล้วกด Run > All.
* ============================================================.
* ผลลัพธ์จะปรากฏใน Output Window ครอบคลุมตาราง T3-T30.
* ============================================================.

* ===========================================================.
* STEP 5: RELIABILITY ANALYSIS (T3/T4 - Cronbach's Alpha).
* ===========================================================.
* หมายเหตุ: T3 = Pretest (ใช้ข้อมูลกลุ่มตัวอย่างขนาดเล็ก).
*           T4 = ข้อมูลจริง (ใช้ข้อมูลทั้งหมด).
*           ถ้าไม่มี Pretest แยก ก็ใช้ผลนี้สำหรับ T4 ได้เลย.
* ===========================================================.

TITLE "=== T4: Cronbach's Alpha - ด้านความคิด (Informative) ===".
RELIABILITY
  /VARIABLES=IV1_1_Accuracy IV1_2_DetailedReview IV1_3_BrandComparison IV1_4_NewProducts IV1_5_FasterDecision
  /SCALE('Informative') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach's Alpha - ด้านความบันเทิง (Entertainment) ===".
RELIABILITY
  /VARIABLES=IV2_1_FunContent IV2_2_PresentationStyle IV2_3_MakeupInspiration IV2_4_CreativeInfluencer
  /SCALE('Entertainment') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach's Alpha - ด้านความเชี่ยวชาญ (Expertise) ===".
RELIABILITY
  /VARIABLES=IV3_1_Knowledge IV3_2_RealisticResults IV3_3_SponsoredDisclosure
  /SCALE('Expertise') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach's Alpha - ด้านความเชื่อถือ (Trustworthiness) ===".
RELIABILITY
  /VARIABLES=IV4_1_AccurateInfo IV4_2_HonestReview IV4_3_ProductDisclosure IV4_4_ProsAndCons IV4_5_BeautyImage
  /SCALE('Trustworthiness') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach's Alpha - ด้านความดึงดูด (Attractiveness) ===".
RELIABILITY
  /VARIABLES=IV5_1_PersonalityFit IV5_2_ReviewSkill IV5_3_MakeupStyle IV5_4_Approachable IV5_5_CredibleImage
  /SCALE('Attractiveness') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach's Alpha - ด้านความเหมือน (Similarity) ===".
RELIABILITY
  /VARIABLES=IV6_1_SkinType IV6_2_Lifestyle IV6_3_CosmeticPreference IV6_4_PriceLevel
  /SCALE('Similarity') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

TITLE "=== T4: Cronbach's Alpha - ความตั้งใจซื้อ (Purchase Intention) ===".
RELIABILITY
  /VARIABLES=DV1_FutureIntent DV2_TopChoice DV3_CredibilityDriven DV4_ReviewDriven DV5_Repurchase
  /SCALE('PurchaseIntent') ALL
  /MODEL=ALPHA
  /SUMMARY=TOTAL.

* ===========================================================.
* STEP 8: FREQUENCIES - ประชากรศาสตร์ (T5-T9).
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

TITLE "=== T9: ความถี่ - รายได้ต่อเดือน ===".
FREQUENCIES VARIABLES=Income
  /ORDER=ANALYSIS.

* ===========================================================.
* STEP 9: FREQUENCIES - พฤติกรรม (T10-T15).
* ===========================================================.

TITLE "=== T10: ความถี่ - ความถี่ในการซื้อ ===".
FREQUENCIES VARIABLES=BuyFrequency
  /ORDER=ANALYSIS.

TITLE "=== T11: ความถี่ - ระยะเวลาตัดสินใจ ===".
FREQUENCIES VARIABLES=DecisionTime
  /ORDER=ANALYSIS.

TITLE "=== T12: ความถี่ - ประเภทร้านค้าออนไลน์ ===".
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
* STEP 10: DESCRIPTIVES - ภาพรวม 6 ด้าน (T16).
* ===========================================================.

TITLE "=== T16: ค่าเฉลี่ยภาพรวมลักษณะผู้มีอิทธิพล 6 ด้าน ===".
DESCRIPTIVES VARIABLES=Mean_Informative Mean_Entertainment Mean_Expertise
  Mean_Trustworthiness Mean_Attractiveness Mean_Similarity
  /STATISTICS=MEAN STDDEV.

* ===========================================================.
* STEP 11: DESCRIPTIVES - รายข้อ 6 ด้าน (T17-T22).
* ===========================================================.

TITLE "=== T17: รายข้อ ด้านความคิด (Informative) ===".
DESCRIPTIVES VARIABLES=IV1_1_Accuracy IV1_2_DetailedReview IV1_3_BrandComparison
  IV1_4_NewProducts IV1_5_FasterDecision Mean_Informative
  /STATISTICS=MEAN STDDEV.

TITLE "=== T18: รายข้อ ด้านความบันเทิง (Entertainment) ===".
DESCRIPTIVES VARIABLES=IV2_1_FunContent IV2_2_PresentationStyle
  IV2_3_MakeupInspiration IV2_4_CreativeInfluencer Mean_Entertainment
  /STATISTICS=MEAN STDDEV.

TITLE "=== T19: รายข้อ ด้านความเชี่ยวชาญ (Expertise) ===".
DESCRIPTIVES VARIABLES=IV3_1_Knowledge IV3_2_RealisticResults
  IV3_3_SponsoredDisclosure Mean_Expertise
  /STATISTICS=MEAN STDDEV.

TITLE "=== T20: รายข้อ ด้านความเชื่อถือ (Trustworthiness) ===".
DESCRIPTIVES VARIABLES=IV4_1_AccurateInfo IV4_2_HonestReview IV4_3_ProductDisclosure
  IV4_4_ProsAndCons IV4_5_BeautyImage Mean_Trustworthiness
  /STATISTICS=MEAN STDDEV.

TITLE "=== T21: รายข้อ ด้านความดึงดูด (Attractiveness) ===".
DESCRIPTIVES VARIABLES=IV5_1_PersonalityFit IV5_2_ReviewSkill IV5_3_MakeupStyle
  IV5_4_Approachable IV5_5_CredibleImage Mean_Attractiveness
  /STATISTICS=MEAN STDDEV.

TITLE "=== T22: รายข้อ ด้านความเหมือน (Similarity) ===".
DESCRIPTIVES VARIABLES=IV6_1_SkinType IV6_2_Lifestyle
  IV6_3_CosmeticPreference IV6_4_PriceLevel Mean_Similarity
  /STATISTICS=MEAN STDDEV.

* ===========================================================.
* STEP 12: DESCRIPTIVES - ความตั้งใจซื้อ (T23).
* ===========================================================.

TITLE "=== T23: รายข้อ ความตั้งใจซื้อ (Purchase Intention) ===".
DESCRIPTIVES VARIABLES=DV1_FutureIntent DV2_TopChoice DV3_CredibilityDriven
  DV4_ReviewDriven DV5_Repurchase Mean_PurchaseIntent
  /STATISTICS=MEAN STDDEV.

* ===========================================================.
* STEP 13: ONE-WAY ANOVA - เพศ (T24).
* ===========================================================.

TITLE "=== T24: ANOVA เพศ vs ความตั้งใจซื้อ ===".
ONEWAY Mean_PurchaseIntent BY Gender
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* STEP 14: ONE-WAY ANOVA - ระดับการศึกษา + LSD (T25, T26).
* ===========================================================.

TITLE "=== T25-T26: ANOVA ระดับการศึกษา vs ความตั้งใจซื้อ ===".
ONEWAY Mean_PurchaseIntent BY Education
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* STEP 15: ONE-WAY ANOVA - อาชีพ (T27).
* ===========================================================.

TITLE "=== T27: ANOVA อาชีพ vs ความตั้งใจซื้อ ===".
ONEWAY Mean_PurchaseIntent BY Occupation
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* STEP 16: ONE-WAY ANOVA - รายได้ (T28).
* ===========================================================.

TITLE "=== T28: ANOVA รายได้ vs ความตั้งใจซื้อ ===".
ONEWAY Mean_PurchaseIntent BY Income
  /STATISTICS DESCRIPTIVES
  /MISSING ANALYSIS
  /POSTHOC=LSD ALPHA(0.05).

* ===========================================================.
* BONUS: ONE-WAY ANOVA - อายุ (สำหรับ T31 สรุปสมมติฐาน).
* ===========================================================.

TITLE "=== ANOVA อายุ vs ความตั้งใจซื้อ (สำหรับสรุป T31) ===".
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

TITLE "=== T30: Multiple Regression - 6 ด้าน predict ความตั้งใจซื้อ ===".
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA COLLIN TOL
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN
  /DEPENDENT Mean_PurchaseIntent
  /METHOD=ENTER Mean_Informative Mean_Entertainment Mean_Expertise
    Mean_Trustworthiness Mean_Attractiveness Mean_Similarity.

* ============================================================.
* วิเคราะห์เสร็จสมบูรณ์!.
* ============================================================.
* ผลลัพธ์ทั้งหมดอยู่ใน Output Window.
* สามารถ Export เป็น Word/PDF ได้:.
*   File > Export > เลือก Word/PDF.
* ============================================================.
* ตารางที่ต้องพิมพ์เองใน Word:.
*   T1  = ตารางสรุปข้อมูลทั่วไป (Layout).
*   T2  = ตารางสถิติที่ใช้ทดสอบ.
*   T31 = สรุปผลสมมติฐานที่ 1 (จาก T24-T28 + ANOVA อายุ).
*   T32 = สรุปผลสมมติฐานที่ 2 (จาก T29-T30).
* ============================================================.
