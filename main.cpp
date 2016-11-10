#include <iostream>
#include <SFML/Network.hpp>

int main(int argc, char const *argv[]) {
  sf::TcpListener listener;

  // lie l'écouteur à un port
  if (listener.listen(1234) != sf::Socket::Done)
  {
    // erreur...
  }

  // accepte une nouvelle connexion
  sf::TcpSocket client;
  if (listener.accept(client) != sf::Socket::Done)
  {
    // erreur...
  }
  else
  {
    std::cout << "Connection établie" << std::endl;
  }
  /* code */

  listener.close();
  return 0;
}
