import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:model_viewer_plus/model_viewer_plus.dart';

class Telaprincipal extends StatefulWidget {
  const Telaprincipal({super.key});

  @override
  State<Telaprincipal> createState() => _TelaprincipalState();
}

class _TelaprincipalState extends State<Telaprincipal> {
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      debugPrint('Erro ao abrir: $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 41, 50, 66),

        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              Text(
                "Marcos Henrick",
                style: GoogleFonts.orbitron(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              Wrap(
                alignment: WrapAlignment.center,
                spacing: 30,
                runSpacing: 30,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(75),
                    child: Image.asset(
                      "assets/images/FotoPerfil.jpeg",
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Text(
                    " - Nascimento: 19/11/2004\n - Naturalidade: Maceió - AL\n - Educação: Superior incompleto em Ciência da Computação\n - Idiomas: Inglês (Intermediário) e Espanhol (Intermediário)\n - Redes Sociais: ",
                    style: GoogleFonts.orbitron(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => _launchUrl("https://github.com/MarcosHenrick"),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(75),
                      child: Image.asset(
                        "assets/images/github.png",
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              Text(
                "Sobre mim:",
                style: GoogleFonts.orbitron(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF59E0B),
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              Text(
                "Sou estudante de Ciência da Computação com foco em Inteligência Artificial, especialmente em Machine Learning. Tenho interesse em transformar conhecimento teórico em soluções práticas por meio de projetos inovadores. Destaco-me por ser proativo, paciente, adaptável e colaborativo, sempre buscando aprendizado contínuo e novos desafios na área de tecnologia.",
                style: GoogleFonts.orbitron(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              Text(
                "Experiência profissional:",
                style: GoogleFonts.orbitron(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF59E0B),
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              Text(
                "Trabalho na gerência de multi eventos em uma empresa familiar, cuja as responsabilidades são:\n \n -Auxiliar Administrativo\n -Cerimonialista\n -Gerenciamento de pessoas.",
                style: GoogleFonts.orbitron(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 40),

              Text(
                "Projetos:",
                style: GoogleFonts.orbitron(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF59E0B),
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 15),

              // Parte do sistema do convite: 
              Text(
                "Sistema de convites com QR Code e Scanner:",
                style: GoogleFonts.orbitron(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 15),

              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/ProjetoEvento1.jpeg",
                      width: 350,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/ProjetoEvento2.jpeg",
                      width: 350,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/ProjetoEvento3.jpeg",
                      width: 350,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Desenvolvimento de um sistema digital voltado à gestão de eventos, com foco na criação de convites com QR Code. A solução visa otimizar a recepção e o controle de entrada de convidados, proporcionando mais agilidade e organização.\n O projeto foi realizado de forma colaborativa, com desenvolvimento integral utilizando HTML, CSS e JavaScript, desde a interface até as funcionalidades do sistema.\n Para saber mais dos códigos e processos de criação: ",
                    style: GoogleFonts.orbitron(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  InkWell(
                    onTap: () async {
                      final Uri url = Uri.parse(
                        "https://github.com/Lotunos/ProjetoSiteComScanner",
                      );
                      if (!await launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      )) {
                        throw Exception("Não foi possível abrir o link");
                      }
                    },
                    child: const Text(
                      "https://github.com/Lotunos/ProjetoSiteComScanner",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // ConectaLibras: 
              Text(
                "ConectaLibras:",
                style: GoogleFonts.orbitron(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 15),

              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/LibrasOla.jpeg",
                      width: 330,
                      height: 450,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/LibrasTudo.jpeg",
                      width: 330,
                      height: 450,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/LibrasBem.jpeg",
                      width: 330,
                      height: 450,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Text(
                    "Desenvolvimento de um projeto pessoal com foco em acessibilidade, utilizando Machine Learning para reconhecimento de gestos de Libras via webcam, com conversão em texto e voz. A solução foi construída para ambiente web, utilizando Python e JavaScript, com apoio do Teachable Machine (Google) para criação do modelo inicial.\n O projeto representa uma prova de conceito funcional e atualmente está em pausa para aprimoramento, com foco em melhorar a precisão, escalabilidade e robustez da solução.",
                    style: GoogleFonts.orbitron(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
