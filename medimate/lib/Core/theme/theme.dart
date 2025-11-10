
class MedimateTheme {
  MedimateTheme._();
// this is the dart theme 
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: ETextTheme.lightTextTheme,
    elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    inputDecorationTheme: ETextFormFieldTheme.lightInputDecorationTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme,
    chipTheme: EChipTheme.lightChipTheme,
    checkboxTheme: ECheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: EBottomSheetTheme.lightBottomSheetTheme,
  );
// and this is the light theme 
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ETextTheme.darkTextTheme,
    elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: EAppBarTheme.darkAppBarTheme,
    inputDecorationTheme: ETextFormFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme,
    chipTheme: EChipTheme.darkChipTheme,
    checkboxTheme: ECheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: EBottomSheetTheme.darkBottomSheetTheme,
  );
}