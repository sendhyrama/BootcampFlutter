import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(List<String> args) {
  ArmorTitan armorTitan = ArmorTitan();
  armorTitan.powerPoint = 8;
  print("Armor Titan Power Point: ${armorTitan.powerPoint}");
  print("Armor Titan Terjang: ${armorTitan.terjang()}");

  AttackTitan attackTitan = AttackTitan();
  attackTitan.powerPoint = 4;
  print("Attack Titan Power Point: ${attackTitan.powerPoint}");
  print("Attack Titan Punch: ${attackTitan.punch()}");

  BeastTitan beastTitan = BeastTitan();
  beastTitan.powerPoint = 7;
  print("Beast Titan Power Point: ${beastTitan.powerPoint}");
  print("Beast Titan Lempar: ${beastTitan.lempar()}");

  Human human = Human();
  human.powerPoint = 2;
  print("Human Power Point: ${human.powerPoint}");
  print("Human Kill Alititan: ${human.killAlititan()}");
}