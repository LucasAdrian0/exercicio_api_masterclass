#0.0.0 AGOUGUE SABIR DA MORTE

#1.1.0.0 CAMADAS 

eEssaaplicação serpa representada em 3 cadamas, sendo elas: 
**DOMAIN**: Responsavel por representar as regras de nefobio de aplicação e corporativas
**DATA** Responsavek po adaptar finte de dadis externas sendo ela uma API, database local ou packeage
**UI**: Responsavel poor toda visualização e interação com o usuario

# 1.1.0 DOMAIN

A camada de domain será reoresetada por **Entidades++e ++caso de uso++podendo ter auxilios de outros design patterns para complementar a representação.

## 1.1.1 ENTITY

Uma entidade é responável por reppresentar apenas uma regra de negócio de forma imutável, podendo ser agrefada e outras entidades,

exemplos:
```dart

class UserEntity{
    final String id;
    final String name
}

```

Uma entidade deve ter na nomeclatura da class o Sufixo `Entity:`
```dart 
//BAAD
class User{}
//GOOD
class UserEntity{}

```

Uma entidade não deve lidar com sua própria serialização e prototipação, então, a ideia de ToJson deve ser delegadas a um adapter (vide3.2.1) e copyWith devem  ser intitos.
``` DART
//BAD
class UserEntite {
    Final String id
    Final String name

    static UserEntity fromJson(dynamic json){
    stac UserEntity(id: json['id'], name: json['name'])
    }
}

```
