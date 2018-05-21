package mks.ownbank.db.dao;

import java.util.List;

import mks.ownbank.db.entiy.Vote;

public interface VoteDao {

    void save(Vote vote);

    List<Vote> list();

    List<Vote> findVoteByteUserId(String userId);

    void saveOrUpdate(Vote vote);

}