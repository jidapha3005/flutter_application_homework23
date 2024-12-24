

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  final List<Map<String, dynamic>> friends = const [
    {
      "id": 1,
      "name": "นธีพัตน์ เถื่อนกวา",
      "nickname": "ธี",
      "image": "https://scontent.fbkk12-1.fna.fbcdn.net/v/t39.30808-6/318899666_1300186363889608_6603733509399993435_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=xbwR_qUYee0Q7kNvgEkNu-i&_nc_oc=AdiwAWo1E6MJGDpY6FlSelaMHKsLbmcIyZtQDAdiE9Avx_22vPefXL2VGPz_uC6qlqUOmzcYIwyatbSWfTIK2w_X&_nc_zt=23&_nc_ht=scontent.fbkk12-1.fna&_nc_gid=ANwemZDsCaRYv5pnTcnFP8V&oh=00_AYAH5rt0pnURCqWspZbmf8O6hA4_Xvg_FVted-mLR9zIWA&oe=677064E2",
      "description": "ชอบหาของกินใหม่ๆแปลก ฟังเพลง"
    },
    {
      "id": 2,
      "name": "วีรวรรณ เผ่าผาง",
      "nickname": "แพรว",
      "image": "data:image/jpeg;base64,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",
      "description": "ชอบนอน ชอบเล่นแบดมินตัน"
    },
    {
      "id": 3,
      "name": "ธนดล สิงห์เถื่อน",
      "nickname": "ก็อต",
      "image": "https://scontent.fbkk12-3.fna.fbcdn.net/v/t39.30808-6/326977820_900157311342184_4273319671763465388_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=833d8c&_nc_ohc=ri8uNzSKfmoQ7kNvgEcIf-2&_nc_oc=AdhGt6YxfN2wm5QjMJ7u3SP8d-bYU35c4O5z6PK7WJ0ug2kbhfeSFnewFD_aq4mMJR0MvWut2nhGjgE7i2hPQP6C&_nc_zt=23&_nc_ht=scontent.fbkk12-3.fna&_nc_gid=AWvgvai9OSDTkWOBGYOxUOZ&oh=00_AYD35PtCF2hhR0ckaWiU1oAFeYYDd9JA_-wQm3mKbD_Z0g&oe=677069E4",
      "description": "ชอบเล่นเกม ชอบกิน"
    },
    {
      "id": 4,
      "name": "พีรพัฒน์ แก้วธานี",
      "nickname": "โฟค",
      "image": "https://scontent.fbkk12-5.fna.fbcdn.net/v/t39.30808-1/364163158_1732863443822041_7504051593432063221_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=110&ccb=1-7&_nc_sid=e99d92&_nc_ohc=sHGayQIEoAIQ7kNvgEBFAbX&_nc_oc=AdhtTuApBYdYrD0auvDhOuUjMErcScB2BHsBIA5p17c1uEohN4dOpZOnt1zEtnjDsfvfFVk4xJ2xF3gK7pWu5yC2&_nc_zt=24&_nc_ht=scontent.fbkk12-5.fna&_nc_gid=AY_-pPfnc9o1ZDeS55gxwfg&oh=00_AYAhQqcrgu1rtwjW-Aus6zoAGgDeN28AXU9bR1CZsBWTXg&oe=67704838",
      "description": "ชอบดูบอล ชอบเล่นดนดรี"
    },
    {
      "id": 5,
      "name": "ชาคริต อสังกรุณา",
      "nickname": "บลู",
      "image": "https://scontent.fbkk12-5.fna.fbcdn.net/v/t1.6435-9/68506077_598890467608408_4699239167274516480_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=a5f93a&_nc_ohc=1l4OcrShZ7IQ7kNvgGiyeXd&_nc_oc=AdiujAWvoO0c4ZQlVh--_AohDBswbGmDgvyGgtX8iTH80_NWK1BVd8JmxlanSsix7ChBnhqe4zdQPUsFr63MTQ44&_nc_zt=23&_nc_ht=scontent.fbkk12-5.fna&_nc_gid=A5J_EbGmquPf-wPfy7X_OP-&oh=00_AYCkxKYns4qNUfb-CSvJ5soWuvqdaH_nwcJ6YHzhYYO8_g&oe=6791F1F6",
      "description": "ชอบเล่นเกมส์ เล่นแบบบ้าคลั่ง"
    },
   

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Friend List'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 154, 240, 161),
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: myGrid(context),
    );
  }

  Widget myGrid(BuildContext ctx) {
    return GridView.builder(
      itemCount: friends.length,
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (ctx, index) => ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: buildTile(ctx, friends[index]),
      ),
    );
  }

  Widget buildTile(BuildContext ctx, Map<String, dynamic> friend) => GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(friend['name']),
          subtitle: Text(friend['nickname']),
          trailing: InkWell(
            child: const Icon(
              Icons.zoom_in,
              size: 32,
              color: Colors.white,
            ),
            onTap: () => {
              Navigator.pushNamed(
                ctx,
                '/ptd_dt',
                arguments: friend,
              )
            },
          ),
        ),
        child: Image.network(
          friend['image'],
          fit: BoxFit.cover,
        ),
      );
}
