import 'package:supabase/supabase.dart';

class Utils {
  static String supabaseUrl = "https://jessgwmtjqktdmtxdfdw.supabase.co";
  static String supabaseKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Implc3Nnd210anFrdGRtdHhkZmR3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDcyNDk2MzgsImV4cCI6MjAyMjgyNTYzOH0.DyXztLyKWY1pOWaFDAn0WY6N_DbsfjjJxZWJssuzDpI";
final supabase = SupabaseClient(supabaseUrl, supabaseKey);
  
}