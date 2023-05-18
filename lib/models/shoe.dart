class Shoe {
  final String name;
  final String price;
  final String imagePath;
  final String description;

  Shoe({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,

  });
}


//'yong required key bago 'yong bawat parameter doon sa constructor iniindicate
//na 'yong parameters ay kailangan naka provided kapag magcrecreate an instance
//of da Shoe class at ineensure ba nito na 'yong properties ay hindi be null at
//uninitialized