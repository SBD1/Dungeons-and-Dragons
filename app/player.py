from database import DatabaseConnection


class Player:
        
    def __init__(self, player_id, inventory):
        self.db_connection = DatabaseConnection()
        self.player_id = player_id
        self.location = self.db_connection = self.db_connection.get_player_location(player_id)
        self.inventory = inventory
        pass
