#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

{
  read
  COUNT=1
  while IFS=, read -r year round winner opponent winner_goals opponent_goals
  do
      # insert winners and opponents into teams table
      for TEAM in "$winner" "$opponent"
      do
          EXISTING_TEAM="$($PSQL "SELECT name FROM teams WHERE name = '$TEAM'")"
          if [[ $TEAM != $EXISTING_TEAM ]]
            then
              echo -e "\nInserting New Team: $TEAM"
              echo "$($PSQL "INSERT INTO teams (name) VALUES('$TEAM')")"
          fi
      done

      WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$winner'")";
      OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$opponent'")";
      echo -e "\nInserting game: $year, $round ( $WINNER_ID $winner $winner_goals - $opponent_goals $opponent $OPPONENT_ID )"
      echo "$($PSQL "INSERT INTO games (year, round,  winner_id, opponent_id, winner_goals, opponent_goals ) VALUES ($year, '$round', $WINNER_ID, $OPPONENT_ID, $winner_goals, $opponent_goals)")"
  done
} < games.csv;
