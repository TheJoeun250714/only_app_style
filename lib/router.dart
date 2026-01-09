import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:only_app_style/screen/loading_screen.dart';
import 'package:only_app_style/screen/login_screen.dart';
import 'package:only_app_style/ui_check.dart';
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    // ------------------------------------------------------------------
    // 0. UI 확인용 화면
    // ------------------------------------------------------------------
    GoRoute(
      path: '/',
      builder: (context, state) => const UiCheckScreen(),
    ),
    GoRoute(
      path: '/loading',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    // ------------------------------------------------------------------
    // 1. 인증 (Authentication)
    //
    //     GoRoute(path: '/signup', builder: (context, state) => const SignupScreen()),
    //     GoRoute(path: '/find-id', builder: (context, state) => const FindIdScreen()),
    //     GoRoute(path: '/find-password', builder: (context, state) => const FindPasswordScreen()),
    // ------------------------------------------------------------------

    // ------------------------------------------------------------------
    // 2. 메인 탭 화면 (ShellRoute)
    // StatefulShellRoute.indexedStack(
    //       builder: (context, state, navigationShell) {
    //         return MainScaffold(navigationShell: navigationShell);
    //       },
    //       branches: [
    //         // [Tab 1] 검색/홈
    //         StatefulShellBranch(
    //           routes: [
    //             GoRoute(
    //               path: '/home',
    //               builder: (context, state) => const SearchFilterScreen(),
    //               routes: [
    //                 GoRoute(path: 'result', builder: (context, state) => const SearchResultScreen()),
    //                 GoRoute(path: 'map', builder: (context, state) => const MapScreen()),
    //                 GoRoute(
    //                   path: 'detail/:id',
    //                   builder: (context, state) => AccommodationDetailScreen(accommodationId: state.pathParameters['id']),
    //                   routes: [
    //                     GoRoute(path: 'rooms', builder: (context, state) => const RoomListScreen()),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //         // [Tab 2] 찜 목록
    //         StatefulShellBranch(
    //           routes: [
    //             GoRoute(path: '/wishlist', builder: (context, state) => const WishlistScreen()),
    //           ],
    //         ),
    //         // [Tab 3] 예약 내역
    //         StatefulShellBranch(
    //           routes: [
    //             GoRoute(
    //               path: '/history',
    //               builder: (context, state) => const MyBookingHistoryScreen(),
    //               routes: [
    //                 GoRoute(path: 'modify/:id', builder: (context, state) => const BookingModifyScreen()),
    //                 GoRoute(path: 'cancel/:id', builder: (context, state) => const BookingCancelScreen()),
    //                 GoRoute(path: 'review/:id', builder: (context, state) => const ReviewDetailScreen()),
    //               ],
    //             ),
    //           ],
    //         ),
    //         // [Tab 4] 마이페이지
    //         StatefulShellBranch(
    //           routes: [
    //             GoRoute(
    //               path: '/mypage',
    //               builder: (context, state) => const EditProfileScreen(),
    //               routes: [
    //                 GoRoute(path: 'my-reviews', builder: (context, state) => const MyReviewsScreen()),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    // ------------------------------------------------------------------

    // ------------------------------------------------------------------
    // 3. 예약 및 결제 (Bottom Bar 숨김)
    // GoRoute(
    //       path: '/booking',
    //       parentNavigatorKey: _rootNavigatorKey,
    //       builder: (context, state) => const BookingFormScreen(),
    //       routes: [
    //         GoRoute(path: 'payment', builder: (context, state) => const PaymentScreen()),
    //         GoRoute(path: 'success', builder: (context, state) => const PaymentSuccessScreen()),
    //       ],
    //     ),
    // ------------------------------------------------------------------

  ],
);