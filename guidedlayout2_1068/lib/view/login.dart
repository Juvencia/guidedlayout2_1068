import 'package:flutter/material.dart';
// sesuai dengan nama project anda , awalnya akan error pada home, register,form component karena belum dibuat
import 'package:guidedlayout2_1068/view/home.dart';
import 'package:guidedlayout2_1068/view/register.dart';
import 'package:guidedlayout2_1068/component/form_component.dart';

class LoginView extends StatefulWidget {
  // variabel map data dibuat bersifat nullable, karena ketika aplikasi dijalankan (dipanggil dari main, tidak ada data yang dibawa)
  // data memiliki nilai ketika registrasi berhasil dilakukan
  final Map? data;
  // agar map data bisa bersifat nullable, pada constructor dibungkus dengan kurung { } agar bersifat opsional
  const LoginView({super.key, this.data});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //TextEditingController
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    // widget mengacu pada instance/objek LoginView
    Map? dataForm = widget.data;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //username
              inputForm((p0) {
                if (p0 == null || p0.isEmpty) {
                  return "username tidak boleh kosong";
                }
                return null;
              },
                  controller: usernameController,
                  hintTxt: "Username",
                  helperTxt: "inputkan User yang telah didaftarkan",
                  iconData: Icons.person),
              //password
              inputForm((p0) {
                if (p0 == null || p0.isEmpty) {
                  return "password kosong";
                }
                return null;
              },
                  password: true,
                  controller: passwordController,
                  hintTxt: "password",
                  helperTxt: "inputkan password",
                  iconData: Icons.password),
              //baris yang berisi tombol login dan tombol mengarah kehalaman register
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //tombol login
                  ElevatedButton(
                      //fungsi statenya sudah valid atau belum valid
                      onPressed: () {
                        //cek statenya sudah valid atau belum valid
                        if (_formkey.currentState!.validate()) {
                          // jika sudah valid, cek username dan password yang diinputkan pada form telah sesuai dengan data dibawah
                          // darihalaman register atau belum
                          if (dataForm?['username'] ==
                                  usernameController.text &&
                              dataForm?['password'] ==
                                  passwordController.text) {
                            // jika sesuai navigasi ke halaman home
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const HomeView()));
                          } else {
                            // jika belum tampilkan alert dialog
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                      title: const Text('password Salah'),
                                      // isi alert dialog
                                      content: TextButton(
                                          //pushRegister(context) fungsi pada baris 118-124 untuk meminimalkan nested code
                                          onPressed: () =>
                                              pushRegister(context),
                                          child: const Text('daftar disini!!')),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'cancel'),
                                          child: const Text('cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ));
                          }
                        }
                      },
                      child: const Text('login')),
                  // tombol ke halaman register
                  TextButton(
                      onPressed: () {
                        Map<String, dynamic> formData = {};
                        formData['username'] = usernameController.text;
                        formData['password'] = passwordController.text;
                        pushRegister(context);
                      },
                      child: const Text("belum punya akun ??")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void pushRegister(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const RegisterView(),
      ),
    );
  }
}
