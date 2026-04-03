import 'package:flutter_test/flutter_test.dart';
import 'package:multi_image_crop/multi_image_crop.dart';
import 'package:multi_image_crop/src/common/util/constants.dart';
import 'package:multi_image_crop/src/common/util/filters.dart';

void main() {
  group('CustomColors', () {
    test('allColors 包含 25 种颜色', () {
      expect(CustomColors.allColors.length, 25);
    });
    test('primaryColor 为 0xff181818', () {
      expect(CustomColors.primaryColor.toARGB32(), 0xff181818);
    });
    test('secondaryColor primaryColorLight activeColor', () {
      expect(CustomColors.secondaryColor.toARGB32(), 0xffd8d8d8);
      expect(CustomColors.primaryColorLight.toARGB32(), 0xff282828);
      expect(CustomColors.activeColor.toARGB32(), 0xfff3b25f);
    });
  });

  group('FilterType', () {
    test('所有滤镜矩阵为 20 元素', () {
      final matrices = [
        FilterType.NO_FILTER,
        FilterType.PURPLE,
        FilterType.YELLOW,
        FilterType.CYAN,
        FilterType.BLACK_WHITE,
        FilterType.SEPIA_MATRIX,
        FilterType.GREYSCALE_MATRIX,
      ];
      for (final m in matrices) {
        expect(m.length, 20);
      }
    });
    test('OLD_TIMES COLD_LIFE SEPIUM MILK VINTAGE_MATRIX FILTER_1-5', () {
      expect(FilterType.OLD_TIMES.length, 20);
      expect(FilterType.FILTER_5.length, 20);
    });
  });

  group('constants', () {
    test('filters 列表包含 Original', () {
      final names = filters.map((e) => e['name']).toList();
      expect(names.contains('Original'), true);
    });
    test('DirectionAxis 枚举值', () {
      expect(DirectionAxis.values, contains(DirectionAxis.x));
      expect(DirectionAxis.values, contains(DirectionAxis.y));
    });
    test('ActionType TextDirectionValue BoxType', () {
      expect(ActionType.values.length, greaterThan(1));
      expect(TextDirectionValue.values, contains(TextDirectionValue.center));
      expect(BoxType.values, contains(BoxType.white));
    });
    test('TextWidget fonts', () {
      expect(TextWidget.values, contains(TextWidget.text));
      expect(fonts.length, 6);
    });
  });
}
