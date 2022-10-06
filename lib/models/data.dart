import 'package:story_saver/models/story_model.dart';
import 'package:story_saver/models/user_model.dart';

const User user = User(
  name: 'Peter Parker',
  profileImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhe0zXAQ4vYs1-hmxlHPgkfgyV-fNYjI4gUODZTTEO&s',
);
final List<Story> stories = [
  const Story(
    url:
        'https://images.unsplash.com/photo-1534103362078-d07e750bd0c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    media: MediaType.image,
    duration: Duration(seconds: 3),
    user: user,
  ),
  const Story(
    url: 'https://c.tenor.com/lMvgWanWPVsAAAAC/nature.gif',
    media: MediaType.image,
    user: user,
    duration: Duration(seconds: 5),
  ),
  const Story(
    url:
        'https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bmF0dXJhbHxlbnwwfHwwfHw%3D&w=1000&q=80',
    media: MediaType.image,
    duration: Duration(seconds: 5),
    user: user,
  ),
  const Story(
    url: 'https://i.gifer.com/origin/7c/7c7cf8bd20c8b7f17fae20ade28e7d92_w200.gif',
    media: MediaType.image,
    duration: Duration(seconds: 5),
    user: user,
  ),
];
