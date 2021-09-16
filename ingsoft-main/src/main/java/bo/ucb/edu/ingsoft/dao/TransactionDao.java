package bo.ucb.edu.ingsoft.dao;

import bo.ucb.edu.ingsoft.model.Transaction;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TransactionDao {
    //Metodos de la clase TransactionDao que seran utilizadas por los .xml de la
    //carpeta resources/dao que utilicen como mapper esta clase

    //Metodo para crear una transaccion y tiene un parametro de tipo transaction
    public Integer create(Transaction transaction);

    //Metodo que obtiene el ultimo ID insertado en la tabla
    public Integer getLastInsertId();
}
