# 메모

## main

- 디폴트테마 : kTextColor => ThemeData - textTheme - Theme.of(context).textTheme.apply(bodyColor: kTextColor)
- SafeArea : 서로 다른 기기에서 동일하게 어플화면이 적용되도록 설정

## constant

- 기본색상 : kTextColor => Color(0xFF535353)
- 연한색상 : kTextLightColor => Color(0xFFACACAC)
- 간격 : kDefaultPaddin => 20.0

## model

- 상품데이터클래스 : id, title, price, size, description, image, color

## screen

### home

- hoem_screen
  - SvgPicture.asset() : svg파일을 적용할 때 사용 \*pub설정 필요
- body
  - EdgeInsets.symmetric : 대칭여백 지정 \*horizontal, vertical
  - SliverGridDelegateWithFixedCrossAxisCount
    - crossAxisCount : 가로 그리드 개수
    - childAspectRatio : 그리드의 가로세로 비율
    - mainAxisSpacing : 위아래 여백
    - crossAxisSpacing : 양옆 여백
- category
  - ListView.builder - scrollDirection : 리스트 내리는 방향 \*Axis.horizontal, Axis.vertical, Axis.value
  - Colors.transparent : 투명색
- item_card
  - VoidCallback : 콜백함수 데이터 속성 <-> Fuction은 그냥 함수속성
  - Hero : Navigator가 있는 위젯 안 이미지에 씌워 이동하면 특수효과 나옴. 단, Navigator가 적용된 페이지에도 Hero가 씌워진 동일한 이미지가 있어야함
    - tag : hero효과를 넣을 위젯을 연결할 태그값
    - child : hero효과를 적용할 이미지

### detail

- detail_screen
  - SingleChildScrollView : 스크롤 할 수 있는 위젯을 박스를 만듦
- color_and_size
  - RichText : 묶여있는 텍스트위젯들의 속성을 일괄적으로 적용할 때 사용. 하위트리인 TextSpan()으로 묶이면 같은 속성을 분리되면 다른 속성을 적용
    - text : 텍스트
    - style : 스타일
  - Container - shape - BoxShape.circle : 컨테이너 모양을 원형으로 설정
- cart_counter :
  - MaterialStateProperty : (아웃라인)버튼에 스타일 적용 시 버튼-버튼스타일 위젯 안에서 padding, shape등의 속성을 설정할 때 사용.
- product_title_with_image
  - Expanded - boxfit.fill : fit속성에서 이미지 원본의 크기와 상관없이 박스 내부에 꽉차게 적용
