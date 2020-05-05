
DECLARE
  TYPE t_bulk_collect_test_tab IS TABLE OF VARCHAR(20);
  l_tab     t_bulk_collect_test_tab;
BEGIN
  SELECT MB_role_ID BULK COLLECT INTO l_tab FROM BULK_USER_REG;
  
  for idx in 1..l_tab.COUNT
  loop
  DBMS_OUTPUT.put_line(idx || ' : ' || l_tab(idx));
  end loop;

END;
/
