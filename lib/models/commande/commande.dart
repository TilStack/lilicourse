class Commande {
  final int client_id;
  final int adresse_id;
  final bool statut;
  final String? updated_at;

  Commande(
      {required this.client_id,
      required this.adresse_id,
      required this.statut,
      this.updated_at});

  factory Commande.fromJson(dynamic json) {
    return Commande(
      client_id: json['user_id'] as int,
      adresse_id: json['adresse_id'] as int,
      statut: json['statut'] as bool,
      updated_at: json['updated_at'] as String,
    );
  }

  static List<Commande> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) => Commande.fromJson(data)).toList();
  }

  @override
  String toString() {
    return 'Commande {client_id: $client_id, adresse_id: $adresse_id,statut:$statut,updated_At:$updated_at}';
  }
}
