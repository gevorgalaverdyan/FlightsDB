CREATE OR REPLACE FUNCTION check_pokemon_count()
RETURNS TRIGGER AS $$
DECLARE
  pokemon_count INT;
BEGIN
  -- Get the count of existing pokemons
  SELECT COUNT(*) INTO pokemon_count FROM Pokemon;

  -- Check if the count exceeds 722
  IF pokemon_count > 722 THEN
    RAISE EXCEPTION 'Cannot add more than 722 pokemons!';
  END IF;

  -- If count is within limit, allow the insert
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger
CREATE TRIGGER trigger_check_pokemon_count
BEFORE INSERT ON Pokemon
FOR EACH ROW
EXECUTE FUNCTION check_pokemon_count();
