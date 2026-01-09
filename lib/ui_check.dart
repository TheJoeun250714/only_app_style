import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UiCheckScreen extends StatelessWidget {
  const UiCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI 확인용')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const _Header('0. 로딩 (Loading)'),
          _NavButton('로딩 페이지', '/loading'),
          const _Header('1. 인증 (Authentication)'),
          _NavButton('로그인 페이지', '/login'),
          _NavButton('회원가입 페이지', '/signup'),
          _NavButton('아이디 찾기', '/find-id'),
          _NavButton('비밀번호 찾기', '/find-password'),

          const _Header('2. 메인 탭 (Main Tabs)'),
          _NavButton('홈 (검색 필터)', '/home'),
          _NavButton('찜 목록', '/wishlist'),
          _NavButton('예약 내역', '/history'),
          _NavButton('마이페이지', '/mypage'),

          const _Header('3. 검색 및 상세 (Search & Detail)'),
          _NavButton('검색 결과', '/home/result'),
          _NavButton('지도 보기', '/home/map'),
          _NavButton('숙소 상세 (ID: 1)', '/home/detail/1'),
          _NavButton('객실 목록 (ID: 1)', '/home/detail/1/rooms'),

          const _Header('4. 예약 내역 상세 (History Detail)'),
          _NavButton('예약 변경 (ID: 1)', '/history/modify/1'),
          _NavButton('예약 취소 (ID: 1)', '/history/cancel/1'),
          _NavButton('리뷰 작성 (ID: 1)', '/history/review/1'),

          const _Header('5. 마이페이지 상세 (MyPage Detail)'),
          _NavButton('나의 리뷰 내역', '/mypage/my-reviews'),

          const _Header('6. 예약 및 결제 (Booking)'),
          _NavButton('예약 폼 작성', '/booking'),
          _NavButton('결제 페이지', '/booking/payment'),
          _NavButton('결제 완료', '/booking/success'),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final String title;
  const _Header(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueGrey),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String label;
  final String path;
  const _NavButton(this.label, this.path);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ElevatedButton(
        onPressed: () => context.push(path),
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: const TextStyle(fontSize: 15)),
            Text(path, style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}