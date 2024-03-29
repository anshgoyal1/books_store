import 'package:flutter/material.dart';

import '../widgets/card_tile.dart';
import '../widgets/categories_list.dart';
import '../widgets/text_button.dart';
import '../widgets/text_field_input.dart';
import '../widgets/tile_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          TextFieldInput(
            hintText: 'Enter keywords, title, author or ISBN',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButtonWidget(
                iconData: Icons.book,
                name: "Book depository",
                color: Colors.blue,
              ),
              TextButtonWidget(
                iconData: Icons.library_books,
                name: "BlackWells",
                color: Colors.grey,
              ),
            ],
          ),
          TileRow(),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'FAQ',
              style: TextStyle(
                  backgroundColor: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100.0,
            ),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButtonWidget(
                    iconData: Icons.book,
                    name: "Book depository FAQ",
                    color: Colors.blue,
                  ),
                  TextButtonWidget(
                    iconData: Icons.library_books,
                    name: "BlackWells books FAQ",
                    color: Colors.grey,
                  ),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButtonWidget(
                    iconData: Icons.place,
                    name: "MarketPlace",
                    color: Colors.red,
                  ),
                  TextButtonWidget(
                    iconData: Icons.remove,
                    name: "New and used",
                    color: Colors.yellow,
                  ),
                ])
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          CardTile(
              boxFit: BoxFit.fill,
              imageLink:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgIZBdov0BdGlzuuY26K1-R-Xl7cD-rpJArnSk0jPww2w2M5PrmE3CRMV3KeVts8Lw2GM&usqp=CAU',
              name: "Romantic books",
              width: 300.0,
              height: 100.0),
          CardTile(
              boxFit: BoxFit.fill,
              imageLink:
                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgWFhYZGRgaGhoaGRocGBwcGh4aGhoaGhohHCQcIS4lIR4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHjQkISs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0MTQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAMMBAwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAEBQIDBgABB//EAD4QAAEDAgQDBQUHAwQCAwEAAAEAAhEDIQQSMUEFUWEicYGRoRMyQrHwBhRSgsHR4WKS8RVyosIzslOj8kP/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQIDBAX/xAAmEQEBAAICAgIBBAMBAAAAAAAAAQIREiEDMSJBYRNRcbEUMjME/9oADAMBAAIRAxEAPwDHMwtSkbttz2KPoYlrjdsFGvxBy9kW6oMtBM6LtcJo3OxsM0K99i90GbqODxQkAiAm4aHAQgaLXYMwD5yhquAIv8k7r0zEeqHyGIQLCz/SnOEt21QOJ4fUA909+y01CmRqYRvtYEOEjYpbGmG4cHOdlOy0eGw8EXPcicBRY2oSG6lPnU2bATzRaciLh2Im6TYxnJNHuJJQddg1RDpZRAm6ucFCoy9lztExFbwPFDPcSrXUyouZCQiInmvcsr1rgrBCD0uw2FBCLo4SCqMNV2TEu0hBaCYmnC5gtARb6WYdyoeyEjD4qlLRGqU4phbqmz6ipx2FLm31TK1m3vM6qqo080XicEQV7hOGvebBNJa/BvgESufwt8Stnw3CgDK9ozDnv3IzF4FgZayWzkfNhgHzBBlWvwRG60eJwzgJa6UhxTyCmCzE0S06r3DSF7UqSZVmHcLzZBLmueuXrXrkjaYtYGkEEctUDiMJN2H1WwNWm+xA8kNWwNP4bfJGy4se1z2ahMcLj0zqcHnQod/Ax+K6fQ1RFLHzAcihhQYLXJK/AVGXFwicPiHCAZCAdU6PPzV9WmMsaoOnj5EEeKKbXD+zMcikbmUGt2uur1CALoXFh7NO0AoYWqXTIlGhtZSxJdKqr1EUGtBkGOiHxdIG6YCF692VMwVewyEqceuNkHiHoxwCDqsupVGCxvH6rnnI4tbPZAA8JkarV8Ixxe1oe1wdFzlIaY5H9FlqLPZvOmZh7JDgbtOoiQtXwjHe1ac3vtMOtGuhjY2PksvHlbe23kxknRvTcmdJwI1SymxFsK3YL6j8uhQtSqSrIupvpgBABsbJ1TKk3Ml9Bt7o0YgtRUvauFAdMBQL46dy8NeVAkc0BZSfLpOylXrTohmOvZXuEIAbEYXMbmBCVO4Q0mDdOar81gq/upmQUHpl8bwLKSQDCUfdiCQvpNPDD4jKWcRpNmzW+FkbFxYv2L+RXLT+06LkEJpAe9nI8Eyw4fB0cOYSeiaW8jxTfCTl7LpTpRNjyB8xuFJzZ0VXs57U35Lw5hcFBptDhZQqdw8lYyopOc1yAEzt5eCgzFgayOivxGEIu05vmg/vEWc3zCEj3YnMFKljMlv8oVjmOsLFTZhQJkaoNKvigeSr9rKFr4R09k2UqLHDVBLXgFesYrKVHNoNFz6ZCVXFLykHHuIWNNh6PP8A1H6+XNOeI4jIxzh72jf9xsPLXwWMxLgy5uTJ75kSek+fy5/Nnr4x0+HDfyoPh2FL3v5N+fJaj7N4TIHu2LgB+UT/ANkj4XVhhjd095K2uEpZGNZuBf8A3G59Sn453seS/QlqmxVtVjStmCwGFYKipleByCTeqqtxCnmXhKNjSgCBCErOI3KOe1C1qRCexYGZXIVj8Y7RV5VQ8ppEMxZ2TBnEnQk7LqeaEga5n1NCUG/CvLreaqw+Kc2wdCJ/1E2mO+LoUHdgag2XK53FB08lyRahu7C0XXLB4KxjGN0AA3gJEzEPbbVFB79XNt3p6LZm7Dh12uHcg62Hc3c+ChmIu0r0Yt25TFVtp9bqTSZ5L32k7Kt7hKCFMxDgFS+qx+oEqLKsHpyKIzMPwiUGXVKcGRZWDFORmRjtlVVw0aI2Wg7cSd1YHly9a3mAvA66Auog8+9eVKmyqcDzUHN5pVUA8acMrJIgFxIO8Dpte/7rGY181HF51mY0AjsgeiefausWhg+HtSdtW27/ANkleQ6mMoc8sGZ0Nn37iekR6DZcfknztdvjvwkOeAYVr3hwHZb24/8AUefyK1rGApNwJjBT7Dg4k9sjZwHuwbiJ35zunTAt8JqOfO7q9lMKz2YVTXr11VWlM0guyBV+3VZqhAXmmF42koNqLw1EBKpQ5FA1mu0ujG4iFa2s3UpxNI/ZOB0KLHDXuH7p07FMjQIZ+LAmE9lohqYd7D7pXB8DRNhjrqypUY8AObvsgyXDvbPaCMxeEZFjNle/CN1DbbGFB7N0i9EhwTvweoXJv7MrkGjSobiD03RjGiIyun0QmHpSbPB67optBzdHyqqIoqMjmohko4vMQYKpLQdo7ktnpCnQeNDPirDPxCCvWCNFeKnNGxIGLOijkCKldl6I2elFIRornvA97wvCW47iZb2aUTu6Plz71ncTSc45nEuPMkn5o2TZeza4xMd65/D92uBWSwfEqtKBOdn4XbD+k6j5dFtsC7OwPZ7rhpuDuD1Rs9BxRcNWhRqMEaIxxcNVDNzAS2emH+15LslJty52Y8h8LZ5SXHyR/wBncOX4RjZjM0iwEwSeYI90gXTTE8Ia91R4dD3saxs3azLJBA1945tdkTgsI2m0Nb7rRlHc2w+Sz4/Lda8vjJCXh+BGGqZASWVCSHON84BJB72iR/sdzCfgITjVEmmXNu5kVG97DmjxgjxRdKpLQRoRITnXRXvtFyiVdIOy4M7lSQzgvPYOGyJBg6KbKs7JkCmNURQe2LhHMZTI7Q/lGYbDUnQMiWz0TvYw6SvRhRstc3hmHiMna5zHzVg4XSaCS0Ttefkp5w+FYirhjyQb8LOhK37sECOyG/Kyz3EcGWHNljqNFUy2m46Zl2EeDoUfRpuaL8rKdXFGd1D7yN1RCWVDkEi02QNfEdNFZ96G1gq/aNNkgG++OXK32Lei9QNI4am1uhJPNGZyPi8wvPaT8I8oRDbj3YVJUMfzHiFY0DYqAYo4ioW2GpCR6SdWa0wXX+tVdPRKwNyrKWOa0hhnMZIEbbpU5B4hQxbzkLQdbeCtY4ESLqjEGTHJALW02zG6qxeGR+RoXuWRdMtEJwx5LQ8FxvsmPYWySQW8p0M+AHkqqbQCpOA2Spx2IqPeZcZ6Cw8kfw8hzIcJgkT01CCC8pVnMdI8RzCVVDv7vTi+ae9DMoCD2t3fMr0Vg4Zh/Kqa/Xv/AECStCHYGWmXjuIS7hlF3smAXyjL/b2f0RYqWhD8Fe7IRyqVB/8AY8j0IU77VP8AVAV25izMMw2mD4Tr4Kb35dbd6nxfAsqMcXtAcN7XOgHmstiG1KGsuZvpmHeR81ln5+OXH7bYf+fljy719tJh8Ux5IaQ4gAmNrkX8irn0yLws79mcVNWoRYZWfN1lo6mIzLXDK5Y7rDPGY5WQVhaeaIBn0TVrHN+FI2Y0Ma53ITG56IbBfac1HEOYWgHWZ8xGk96qoallRx2Uq2IDQljMYQPhPWdkNieIA6JcRy0ZnFnQFDVsWYu6eiWnHAG0k9yGqve7UeO6rjot7MH1WESA2RfRLMTiAZlrZ2gKssI3Q0wZTkFFU8KXchO5QmJpOboWnxRDK1iJgIGo6TGgQSrM/n6rlaHs5Lktgfjq4osL3CdgAdSdAhPs/wASfWc5rsoIGYRI3AI16hZziXGH1ywEDK3QQR2jrPaOmg6d6L4JiTRe2o0SRNpiQQQR6pctjjr22rKZSQVC5xJ39OQV+J+1z3iGsY21z7xnol+DfvunKLP2Mslli8diH08S9wPam0j4TBA7ogLZMeCFmeO0G1Xj2fae0Q+Pdi8SdJBBU5710vD320HDMdnYHt+LXeCLEecotiR/Zh7TTDMwLgXEi+hOtx9SnzLKsbuFlNXSD+5CVql0VVqQhsgJTTpOm9FMAVLKEK1iVpyJgKtzbqwLwBTauRnftDxJ9NzWUyWkjM4jWJgAeRV/2do4l5D89QMiSXQ4GdJDjItuOSr+0AZnY4O7QBDhEti5E9bnzUeEcQLa1OHTmIaY0IcYM/P8q5sreX4dWOMmP5arHcU9iyahYZnKGtIcSOUz59QguCYkPa9zQYdUc6/UNcfUlNncGGKc1hcBEGALjNIzOdcRIADYk3vYx3+iNwznsa4kZ4Dbfgpmec9ojwCj/ImPkmN9et/k/wBLeH59vW4dtRjsxgj3b7wbrM8dquY2o5pElgAEAiSQZvsBN+iN4riSwljdTqYvJN/RwACWvf7WkxmUtJLm1DE5mh7SMvQyG6Tc8iuXy/Pycvp3eG/p+O4/ZFhOI+yqZgHAEDO1wAJBvaCQOY08N9xh8rmhw0IBHcbrAvoTqfeJB6n6+S0nAuIGBSeb/ATuOR6j1Hcu7xZ/Tg83j+4c4qkC0gHVLXtayABeLJqINig+KUXBudp0I22nZdLlse8MxRHYeY5eO3cp4XH55GnLqP3SoNc/K4uaAReBp9FMBla0ZYkQjei1saawYC4iYlKncb7Lz7GHx2NCDOhMXHd6q+rJBLneCBzC8J7LiVO4w+8vcedhr9bJnwTibKrsj29vVt9enelWLw4gn4rmPrdIKdVzXw0xv1mfmp3o9bfRMXUbfsxHekrsU17srTfYaT3LO4ni1d8dtzg22XnvLufeeSUOqPJ3nUdO47FLLM5htu8pHP1Xqx/+pYlts77fXJcjnP2H6d/cww1K6c0mADwQFBh5IpoJhORNq5lITKOYQIQtJG0GdFRKsY8uy02uyl4MuGoaOXUkgefJVta6mACwZWiAWDTnLTeO4nmraNPM97om4ZG8MG35nORjDHUeoU/lXromxFFgYX0XZXMJeY94fiBB0EbGyY4Di4NqkDYPHu/m/AfTrspYrBse0ncA3FiLX8ErGFqZGPbeWt2vcAwY28Cl3KfVjTPpzdesprPYDiLmENFhvTdp+U/D3adN09w+Ka/Sx3adf5HUSFUy2XHS9wUA1euqBVGoECLko4xxLJ2GG/xEG46DkYRdfEw0kRYEiSAJ2klZTFYoN/qebxeB37kzssPJlrqN/FjvuqMbUgHmdZ68v55pn9mMG59Vha2S0Fx5C0Nk95B8EjqZ3EZgfEQPIWWy+z5NBud3vfF0tbylc+dyxwtx7sdOExyymOXUrQOrVMNmJpyJl2V2txJnuGlkJgeM5sS/O4GbgCTJyNBN7wGsce8BVY7HOe9kuIYTlc0Aw4EQZMRubHwWcdiMmIxOQWLnZYkH2bXuba+8DWdAuPHxc7+plqZa+nVlrx/Geh/G8YHV38gGOEaEdh3zB81Oth2Mol7HuLnAEmdDPtDlGwzO79EqqVGCC8wSw5QeR92Y07IAVNXFl9LKHadkxMW5TeCIW0xs1opnj3udl7MSGuv7zTcd0i3mr69eYcOybHqDzSjFPMiDANyNpG6sdVhoIXTMftyXO61X0HheM9rTa/4vdd3j99URiaeZsE23CQfZJ/ZeIOxHIi4n0jwT+uRBXVjdxx5TspxIZlieUeCu+ERGmiGrPDLgyeRjzS/FY9wtJHci5FMaY4yo5otzQTMeDZx8EsxHE3xAcfrdKq+KfmBLr80rkri0uIY1wm4d9apS7DhxJ0vEcjzO8KWExpMBwkDe02UPvgL+zyuNzyunbtOk2YQBhgg2J6gwlrKdQjsxE3tB5clqcLWY5l4E6rypGU2EDolxOZMn90qbuXJ9/qAG3oVynS+RmzBO5FFU8GeRUqvEWBpIe3QxymLeqR0MZXLy81CGi+UTBGm38q8vJMWePiuTzjRIeWmwAEeIlDUMQW/F9eCv4rXFXLdoeLEkwC3WHdQfmlMEeHX6sue3d26MfjNGTeKVBo/w2/yrG8aqi8tPh+yVh55LnMcdiO9VLSykv01VPFOfQLyAHOljY3cTlH10KYMMAADS3ksrhq+gvDfda1xgczcG+t7I1tUfhd4vd+i0mTLidVaLX+8J67+aFdhCPdm2n8cvBDNcTt6vPzS/G48h+RgGb4jGm/mlcpO1Y4WnbcS9tnQ7xh3rYq9lcO0I6yY+aSU8SGUnufcx2IaAXOkCDG15nogsPXfWs4hjCYc4ajuPlP1Knlir4bsVx7iUEMY4ay8g+QHXdKctR5lrHkA2Iab31JhNcTiWUOwwB1tR15nmicDxBjmOfUJaQJaIMO21HeO+/JZ5XG3a8ccpNRVwPhoewPznMXGNLFpOoNtitFh8G+LkSZmNOXPkkXD3VBD2NOUmYsM03MAmbgbDlCbVOMsYC90ZdxcVA6AIg222KJlh6O45ztDHUHsFjYmQ4C7XDSf55LK44uc4zJOXtG+rnONz1haWnx4vaT7J2Tckg27tSk/+otpPe8jM2o1rcuzxfTcG+qzmOMy69NLnlcZy9/2WPLjdxna/IKVOoW2Oh+grMpd2gxzWnQOMo1/DA9oex7DbtMdIIMXA53nkq1tNtl2R4hht4qVKg5xa0anT67kxxmGv9eKK4K6kw56j2NINgTfvt0JCrHtOU0dfZ/DuZTEmzgD1B0ITNxBSt3HcOLB48JVDvtDQ/H6OP6Lolxk9uezK/QjE4MOM7hJ8bTceyBcIx/H6XNx/I79lTU40zUMee5h/VK3E5Kz2Jwr9boRlEl0GVqhiWVAHFrma2cINrIKrhgLhxv4aeCnUHKgS8WDReN9Qp0MB2gIIJ3ERHMzfWFz2vzdht5mYm6dYZrgLiDuZ1VSItVMwpbPbJnn/AIXe2AtKMfYTP15JRjapns+PZd+yqlA9SoCTYLxR+8np/wAv2XKFmlThxH/9HnvcFCjw1xm5/vTBuIEXP/FwHqFYzFtHxD+7+ErjFTKs3i2Fji2SYJ5/qoAGwM9AtJYmwBHVv8KQpj8IP5RHqp4r5M20dD9eKmwX0HitE1o0DR4NhRLB+HzgI0NqmAta0wBKJA6Bd7QQJjxXpqD+SQPTVUnSU9LrL1Kbm1nl1rkztBPXbTwWqYL2Mz3fsvK2EY8dsB3hp46qcsbTxumV4lXD8sGzZBI0m3nqfVWMrhlEgAWabzckzt3n0Tt/BaMGzh4kjwmY8EoxfDmEgCsYGjchMf2n5qLjppMtgMa8Trrcdx09EfxB4eGBg7IyAgDY3g+F/FAtOQhmZj4s2WAka7ukADXfuVDeIOD3HKC13vNPxDaTrKmw5Wro41maYgyf6rbQN4Siu9lXECZyFzokzOURfxuhMRxXMzKxmS0TmLjHK6Ew+KLNswBkDQg8wf0UzHS7la2tZzGNmLBpJuOX8rLYBodXl2jW5mg9wI+c+AVGL4m94ynT1UMNUbA7WRwESdC3lI3/AIRjjqUZZbsafE4hoGgk6Dv5Wvss9WxBBcAbEz4kKdfiIEEODiBa0ed0sNYzM3mVWM0jPLZvg8h99rBP9AkHflZGMoMnsupx/VSH0VnqdQoplRy0mmd2fezbH/kY3/bTC8FRgEZ3vP8AaPSD6oXB4Vz7k26RPzEeqZN4awGQHHvLY8sqqRNoA4t3wNA7hJPirmBxEuNus/tCMpYLKB2BbfU/8Wg+ajUZGwHef3CrSVDqTCLn1VdRwH+JXuIw775QO7MEP2wBmAEbZXk+ggoAlr/4hT9o/mgmPd+Fx8DHqFPO/dh8SP0CqVNgo4g7+hQeIyu1J7pspvIj3CPNUVmCPdfP9N/RFCv2Len9oXIXMOvi0T43XKNqaVgtqSrcmpt6fqUpbWJuDpoA0D9lIVHnQnvkD5lHJWoatOktjy/Reh/RLWF51OnU/op5HH97/ulsxjqjRzHgqvbgGJM6dQZAv4OB8FQGHmHfnn00VQe2YLT4NH7pUzIV2uIbN+W6tADZmRJ6BAscA3s5vBxH6qqqx7hAdlE/hPzlOVNNPaX0d4x+6XYniTbgbbQQfmpUKLWiS6e8lK8ZXzmC4xya0+skIyvQxl36TfWGoI8z8iQh3se4ayOX8D5r1zWBvZa8nmS1o9AVUKp3d3dpZVpETSiQdTbqq/ZDkpvqX19ZUnu5k7bpGgMOYVfsTyRwoh27vC6oNAtMOEeIRs7sI6gvPux2CLqUxsfAqNMDSyCC/djyXDD9Ec9kbjyCqDz09AnsIMpwdPRFteY0t3Khr+q9LxyRstNBgKpI1B7iiy0pFw/HAOjsj8p+YBTMY9swXtH5r+oC1xrOwaH8xO1//wAlVV2AD3WjlId6QAqXVCbh58p+QXmR7ge2PElv/VWlQ+hN+x0hhPzuhX0jfK135WBnze0qyrTfpmDfzk/NDlj/AP5HDu/ykaIpvn3nt6ZT+jirGNfp7Yf7SYKg/l7V0+HyK5tI71HfXcmmr2Pj4h5f5VVZ7gdAeoGuwnZRaQLF58gPkVF7mnR5P5beiZB3vdN2ehXiEufoLxZ7W0VJ/wBRHzUn13D4T4AfugWV+s+AUjiTr8oVAS7Fmf8AxuPeG/qVI4k/gjxH6SgXYkcyfFSbX5R3/RUqWYnEEaZR1t+oQ9Oq6bkGNv8AK8xLyRzPcRbwQz39qAR5wfn+yVENc4doSI3Bt3X/AERTH83fXgEswpAgRHUGfmiHv6+pThWjaj5aRNiNwUmNBuzw3vDgPUIwVOqrZUJsQT128SjKbPG6RZhHkWqD+90HwsvGcLcPeNuf+SEQXD8O22npeVC8jKHRvmeddoEqeMVyB8QotZBE+X7WXlEte03AIE3m8bD/AAi6tB5F3E9JIEdIMeaVVaGSzmjoZP7qbDlHUH7DZWYnDuNw0Ra5gExytKW4aqGzJ7uc9Nk3wWJaT75nkTpNrc0pFbUYfDPecrWOdNoAJ+QUKXDnl72WaWEh4JuCCQRadIK2/wBm+HU3EPc9ps8GmWZ7wYzACzbgzNsp01WX4/w2pha5zBrRUJLS12cAFxgZoN4g9Q4Fc2Pnl8l8f7f20yw6lKa4ynLZ3Vpn1Fl4MMSCQDbqpYyo+feJH9Qn1Oq8ZjTkIi3kt91PGfamSuJP1/hVurSomudk0dCaOLLTYN6m3zTb784RJaekAGP70gDyTck+qdkjLofJhPqFpiirf9RHI6cxr5qTOIkAy0+DiEve3kLbgS30IjwsqH036lzmtGkm3hH6qtp0cfec4s4g8pB9C0/Nesc90w425DN/6tSnCPMw5wdexk68jsU1w1OXe7Ej4XR6QSnKVgSpUcCCXG/9Mf8AUKM3mCe4X/VTxBboGvJk6wR5gAoYvI2PgbJ7LS1z2mYYZ6x+sKl4A+E+XyXNxR3HqJXOeTsmQWrkk2d5lcrjWf3dLH9VylW3Viq2rlyAvavWrlyQc26qae0dNeQXLkCCGqsvPNcuTCakdu5cuU04uOi8LAdRNwuXJmqxry0nKY7P6pT95ebZjHJcuUVUeu3RmC27iuXKYppqFZ1LDMqU3FjzUfTLgSCWZGHL3SE5+0GLfV4ac5ByEZQGtaB/5BYNAGi5cvL83/TH+XXh6v8ADIvpgiCBp8kuNIDNZcuXpX0557Au1XbrxcqiKZYCkJmNEW5cuWuPpnQFWqRabQmHD6hLpN4baQDHmvVyAGr1TMz8W1t+i8ZjXgzm35D9ly5NKGKqkucZVTly5AQUi8xquXJk8zlcuXJk/9k=',
              name: "Fantasy books",
              width: 300.0,
              height: 100.0),
          CardTile(
              boxFit: BoxFit.fill,
              imageLink:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdX029ohIUSygq9zirl9fSNBwSLqEOaKEYuw&usqp=CAU',
              name: "WildLife books",
              width: 300.0,
              height: 100.0),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: Text(
              'Book Categories',
              style: TextStyle(
                  backgroundColor: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          CategoriesList(),
          SizedBox(
            height: 50.0,
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text("Designed By Ansh Goyal ")),
          ),
        ],
      ),
    );
  }
}
