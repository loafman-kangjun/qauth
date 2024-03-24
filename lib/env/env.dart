import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'GREETINGS', obfuscate: true)
  static final String supabase_url = _Env.supabase_url;
  @EnviedField(varName: 'MY_NAME', obfuscate: true)
  static final String supabase_key = _Env.supabase_key;
}
