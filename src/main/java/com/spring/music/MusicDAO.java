package com.spring.music;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class MusicDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertMusic(MusicVO vo) {
        int count = sqlSession.insert("Music.insertMusic",vo);
        return count;
    }

    public int deleteMusic(int sid) {
        int count = sqlSession.delete("Music.deleteMusic",sid);
        return count;
    }

    public int updateMusic(MusicVO vo) {
        int count = sqlSession.update("Music.updateMusic",vo);
        return count;
    }

    public MusicVO getMusic(int sid) {
        MusicVO one = sqlSession.selectOne("Music.getMusic",sid);
        return one;
    }

    public List<MusicVO> getMusicList(){
        List<MusicVO> list = sqlSession.selectList("Music.getMusicList");
        return list;
    }
}