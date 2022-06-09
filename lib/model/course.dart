class Course {
  late String number;
  late String title;
  late String prereq;
  late String imageURL;

  Course({
    required this.number,
    required this.title,
    required this.prereq,
    required this.imageURL,
  });
}

var courseList = [
  Course(
    number: 'CMSC 1613',
    title: 'Programming I',
    prereq: 'CMSC 1513',
    imageURL: 'https://m.media-amazon.com/images/I/517rMbNEp+L._AC_UY436_FMwebp_QL65_.jpg',
  ),
   Course(
    number: 'CMSC 3103',
    title: 'Data Structure & Algorithms',
    prereq: 'CMSC 2613',
    imageURL: 'https://m.media-amazon.com/images/I/81yvVmN1BLL._AC_UL640_FMwebp_QL65_.jpg',
  ),
   Course(
    number: 'CMSC 1613',
    title: 'Object Oriented SW Design',
    prereq: 'CMSC 2613',
    imageURL: 'https://m.media-amazon.com/images/I/611fiNMTNZL._AC_UY436_FMwebp_QL65_.jpg',
  ),
   Course(
    number: 'CMSC 4303',
    title: 'Mobile Apps Programming',
    prereq: 'CMSC 3103',
    imageURL: 'https://m.media-amazon.com/images/I/61H0DXoXdSL._AC_UY436_FMwebp_QL65_.jpg',
  ),
  Course(
    number: 'CMSC 4373',
    title: 'Web Server Programming',
    prereq: 'CMSC 3103',
    imageURL: 'https://m.media-amazon.com/images/I/71PHU4XUe9S._AC_UY436_FMwebp_QL65_.jpg',
  ),
];
