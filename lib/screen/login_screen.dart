import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSaveId = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                const Icon(Icons.home_work_outlined, size: 80, color: Color(0xff9c95ca)),

                const SizedBox(height: 40),

                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey[300])),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("로그인", style: TextStyle(color: Colors.grey)),
                    ),
                    Expanded(child: Divider(color: Colors.grey[300])),
                  ],
                ),

                const SizedBox(height: 30),

                _buildTextField(hintText: "아이디를 입력하세요."),
                const SizedBox(height: 12),

                _buildTextField(hintText: "비밀번호를 입력하세요.", obscureText: true),

                const SizedBox(height: 10),

                Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Checkbox(
                        value: _isSaveId,
                        activeColor: const Color(0xff9c95ca),
                        onChanged: (value) {
                          setState(() {
                            _isSaveId = value!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text("아이디 저장", style: TextStyle(fontSize: 14, color: Color(0xff9c95ca))),
                  ],
                ),

                const SizedBox(height: 20),

                // 6. 로그인 버튼
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      print("로그인 버튼 클릭");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff9c95ca), // 보라색 배경
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "로그인",
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTextBtn("아이디 찾기", () {}),
                    Container(height: 12, width: 1, color: Colors.grey, margin: const EdgeInsets.symmetric(horizontal: 10)),
                    _buildTextBtn("비밀번호 찾기", () {}),
                  ],
                ),

                const SizedBox(height: 60),

                const Text(
                  "카카오 로그인 추가 예정",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),

                const SizedBox(height: 60),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("아직 계정이 없나요?", style: TextStyle(color: Colors.grey)),
                    TextButton(
                      onPressed: () {
                        // context.push('/signup');
                      },
                      child: const Text(
                        "회원가입하기",
                        style: TextStyle(color: Color(0xff9c95ca), fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40), // 하단 여백
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String hintText, bool obscureText = false}) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xff9c95ca)),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  Widget _buildTextBtn(String text, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: Color(0xff9c95ca), fontSize: 14),
      ),
    );
  }
}