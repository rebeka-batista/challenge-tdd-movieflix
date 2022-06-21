package com.devsuperior.movieflix.services;

import com.devsuperior.movieflix.entity.User;
import com.devsuperior.movieflix.repositories.UserRepository;
import com.devsuperior.movieflix.services.exceptions.ForbiddenException;
import com.devsuperior.movieflix.services.exceptions.UnauthorizedException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AuthService {

    @Autowired
    private UserRepository repository;

    @Transactional(readOnly = true)
    public User authenticated() {
        try {
            String userName = SecurityContextHolder.getContext().getAuthentication().getName();
            return repository.findByEmail(userName);
        } catch (Exception e) {
            throw new UnauthorizedException("Invalid User");
        }
    }

    public void validateSelfOrAdmin(Long userId) {
        User user = authenticated();
        if (!user.getId().equals(userId) && !user.hasHole("ROLE_ADMIN")) {
            throw new ForbiddenException("Access denied");
        }
    }

}
