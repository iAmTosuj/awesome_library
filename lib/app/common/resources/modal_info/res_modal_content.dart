import 'package:library_web/generated/assets.dart';

class ResModalContent {
  final String title;
  final String subtitle;
  final String avatar;

  ResModalContent._({
    required this.title,
    required this.subtitle,
    required this.avatar,
  });

  static final errorInfo = ResModalContent._(
    title: 'Что-то пошло не так',
    subtitle: 'Попробуйте немного подождать и обновить страницу',
    avatar: Assets.imagesEternalError,
  );

  static final notFoundInfo = ResModalContent._(
    title: 'На этой странице ничего нет',
    subtitle:
        'Возможно, материал удалили или перенесли на другую страницу. Или вы перешли по ссылке, в которой была ошибка',
    avatar: Assets.imagesNotFound,
  );
}
